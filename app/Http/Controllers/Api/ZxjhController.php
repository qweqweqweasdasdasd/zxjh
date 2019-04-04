<?php

namespace App\Http\Controllers\Api;

use DB;
use App\JH as zxjh;
use App\Libs\JH;
use QL\QueryList;
use Handler\WorkermanHandler;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Cache;


class ZxjhController extends Controller
{

  protected $format = 'json';
	protected $row = '1';
	protected $client = '';
	protected $domain = 'http://awardopen.com/newly.do';
  //https://cbaward.com

	//1分快3    (每1分钟开奖一期，24小时不间断开奖)     OG1K3 
	//3分快3    (每3分钟开奖一期，24小时不间断开奖)     OG3K3 
	//5分快3    (每5分钟开奖一期，24小时不间断开奖)     OG5K3 
	//10分快3   (每10分钟开奖一期，24小时不间断开奖)  	 OG10K3
	//1分彩     (每1分钟开奖一期，24小时不间断开奖)		 JLFFC 
	//3分彩     (每3分钟开奖一期，24小时不间断开奖)     TSFFC  
	//5分彩     (每5分钟开奖一期，24小时不间断开奖)     TFFFC  
	//10分彩    (每10分钟开奖一期，24小时不间断开奖)	 OG10FFC
	//1分赛车   (每1分钟开奖一期，24小时不间断开奖) 	 JLPK10
	//3分赛车   (每3分钟开奖一期，24小时不间断开奖)    	TSPK10 
	//5分赛车   (每5分钟开奖一期，24小时不间断开奖)    	TFPK10
	//10分赛车  (每10分钟开奖一期，24小时不间断开奖)  	OG10PK10


	//北京赛车  20 BJPK10 、 
	//重庆时时彩 (07:30-23:50(北京时间),00:30-03:10(北京时间)) 20  CQSSC 、  
	//江苏快三  20  JSK3 、    
	//广东十一选五  GD11X5 20
	protected $code01 = 'OG1K3,JLFFC,JLPK10';			//1分快3 	1分彩 		1分赛车
	protected $code03 = 'OG3K3,TSFFC,TSPK10';			//3分快3 	3分彩 		3分赛车
	protected $code05 = 'OG5K3,TFFFC,TFPK10';			//5分快3 	5分彩 		5分赛车
	protected $code10 = 'OG10K3,OG10FFC,OG10PK10';		//10分快3 	10分彩 		10分赛车
	protected $code20 = 'BJPK10,CQSSC,JSK3,GD11X5';		//北京赛车 	重庆时时彩 	江苏快三   广东十一选五 
	

	public function __construct()
	{
		$this->client = new \GuzzleHttp\Client();
	}

    //每个一分钟执行   //实现逻辑的地方 //定时任务请求数据 分开 //上期的处理 //
    public function everyMinuteTodo()
    {
      //$data = '{"remain":"","rows":65,"data":[{"code":"og1k3","expect":"201903300817","opencode":"1,2,5","opentime":"2019-03-30 13:37:04","opentimestamp":"1553924225"}]}';
      sleep(6);
      $jh = new JH();
    	//请求获取到数据
      $response = $this->client->request('GET', "{$this->domain}?token=c3Qv5TzfTWRua56C7bbU&format={$this->format}&rows={$this->row}&code={$this->code01}");
  		$data = json_decode($response->getBody(),true);
          
          //写入数据库
          if($data['rows']){
              $newData = [];
              foreach ($data['data'] as $k => $v) {
                  $newData[$k]['type'] = $v['code'];
                  $newData[$k]['kjhm'] = $v['opencode'];
                  $newData[$k]['xqs'] = str_pad(((substr($v['expect'],-4))+1),4,"0",STR_PAD_LEFT);    //0000  假期数
                  $newData[$k]['qs'] = substr($v['expect'],-4);  
                  $newData[$k]['opentime'] = $v['opentime'];
                  $newData[$k]['time'] = '60';
                  app('log')->info(date('Y-m-d H:i:s',time()).'实时获取数据');
                  $a = DB::table('kj')->insert($newData[$k]);
                  $jh->makejh($newData[$k]);
              }
          }
    }

    //每分钟获取到数据
    public function everyGetData($falg = true)
    {
      return $this->common_kj_jh_data(strtolower($this->code01.','.$this->code03.','.$this->code05.','.$this->code10.','.$this->code20),$falg);
    }

    //测试方法
    public function RefreshGetData()
    {
      $obj = new JH();
      $jh = $obj->Findhm('bjpk10');
      dd( in_array( 3, json_decode($jh->hm,true)) );
      return $bjpk10;
    }

    //公用的获取最新的开奖信息数据
    public function common_kj_jh_data($code,$tag = true)
    {
      error_reporting(0);

      // $sub = DB::table('kj')->select('kj_id','kjhm','qs','type','xqs','opentime')->whereIn('type',explode(',', $code))->orderBy('xqs','DESC')->limit(1000);
      
      // $kj = DB::table(DB::raw("({$sub->toSql()}) as sub"))
      //         ->mergeBindings($sub)
      //         ->groupBy('type')
      //         ->get();

      $arr = explode(',', $code);
      
      $str = '';
      foreach ($arr as $k => $v) {
        
        $str .= "'{$v}',";
      }
      
      $str = rtrim($str,',');

      $sql = "SELECT * FROM `ssc_kj` a WHERE a.kj_id in (SELECT max(kj_id) FROM `ssc_kj`GROUP BY type) and a.type in (".$str.")";
      
      $kj = DB::select($sql);

      // if($tag){
      //   if( Cache::store('file')->get($code) == $kj[0]->opentime ){
      //     return 'ping';
      //   }
      //   Cache::store('file')->put($code, $kj[0]->opentime, 30);  //保存缓存
      // }
      
      $data = [];
      foreach ($kj as $k => $v) {

        $jh = DB::table('jh')->where([ ['type',$v->type],['is_show',1] ])->first();

         if($tag){
            app('log')->info(Cache::store('file')->get($v->type).'-'.$v->kj_id);

            if( Cache::store('file')->get($v->type) == $v->kj_id ){
                //echo 'ping';
                continue;
              }
              Cache::store('file')->put($v->type, $v->kj_id, 30);  //保存缓存
          }
        $data[$k] = [
          'type' => $v->type,
          'time' => $v->time,
          'kjhm' => explode(',', $v->kjhm),
          'qs' => $v->qs,
          'xqs' => $v->xqs,
          'new_jh' => [
            'bs' => $jh->bs,
            'hm' => $jh->hm
          ],
          'old_jh' => ''
          ];
      }
    
      return json_encode($data); 
    }

    //每个三分钟执行
    public function everyThreeMinutesTodo()
    {
    	$jh = new JH();
      sleep(3);
      //请求获取到数据
      $response = $this->client->request('GET', "{$this->domain}?token=c3Qv5TzfTWRua56C7bbU&format={$this->format}&rows={$this->row}&code={$this->code03}");
      $data = json_decode($response->getBody(),true);
      
          //写入数据库
          if($data['rows']){
              $newData = [];
              foreach ($data['data'] as $k => $v) {
                  $newData[$k]['type'] = $v['code'];
                  $newData[$k]['kjhm'] = $v['opencode'];
                  $newData[$k]['xqs'] = str_pad(((substr($v['expect'],-3))+1),3,"0",STR_PAD_LEFT);    //0000  预测
                  $newData[$k]['qs'] = substr($v['expect'],-3);  
                  $newData[$k]['opentime'] = $v['opentime'];
                  $newData[$k]['time'] = '180';
                  $a = DB::table('kj')->insert($newData[$k]);
                  $jh->makejh($newData[$k]);
              }
          }
    }

    //每个5分钟执行
    public function everyFiveMinutesTodo()
    {
    	$jh = new JH();
      sleep(3);
      //请求获取到数据
      $response = $this->client->request('GET', "{$this->domain}?token=c3Qv5TzfTWRua56C7bbU&format={$this->format}&rows={$this->row}&code={$this->code05}");
      $data = json_decode($response->getBody(),true);
      
          //写入数据库
          if($data['rows']){
              $newData = [];
              foreach ($data['data'] as $k => $v) {
                  $newData[$k]['type'] = $v['code'];
                  $newData[$k]['kjhm'] = $v['opencode'];
                  $newData[$k]['xqs'] = str_pad(((substr($v['expect'],-3))+1),3,"0",STR_PAD_LEFT);    //0000  假期数
                  $newData[$k]['qs'] = substr($v['expect'],-3);  
                  $newData[$k]['opentime'] = $v['opentime'];
                  $newData[$k]['time'] = '300';
                  $a = DB::table('kj')->insert($newData[$k]);
                  $jh->makejh($newData[$k]);
              }
          }
    }


    //每个10分钟执行
    public function everyTenMinutesTodo()
    {
    	$jh = new JH();
      sleep(3);
      //请求获取到数据
      $response = $this->client->request('GET', "{$this->domain}?token=c3Qv5TzfTWRua56C7bbU&format={$this->format}&rows={$this->row}&code={$this->code10}");
      $data = json_decode($response->getBody(),true);
      
          //写入数据库
          if($data['rows']){
              $newData = [];
              foreach ($data['data'] as $k => $v) {
                  $newData[$k]['type'] = $v['code'];
                  $newData[$k]['kjhm'] = $v['opencode'];
                  $newData[$k]['xqs'] = str_pad(((substr($v['expect'],-3))+1),3,"0",STR_PAD_LEFT);    //0000  假期数
                  $newData[$k]['qs'] = substr($v['expect'],-3);  
                  $newData[$k]['opentime'] = $v['opentime'];
                  $newData[$k]['time'] = '600';
                  $a = DB::table('kj')->insert($newData[$k]);
                  $jh->makejh($newData[$k]);
              }
          }
    }

    //每20分钟执行
    public function everyTwentyMinutesTodo()
    {
    	$jh = new JH();
      sleep(3);
      //请求获取到数据
      $response = $this->client->request('GET', "{$this->domain}?token=c3Qv5TzfTWRua56C7bbU&format={$this->format}&rows={$this->row}&code={$this->code20}");
      $data = json_decode($response->getBody(),true);
      
          //写入数据库
          if($data['rows']){
              $newData = [];
              foreach ($data['data'] as $k => $v) {
                  $newData[$k]['type'] = $v['code'];
                  $newData[$k]['kjhm'] = $v['opencode'];
                  $newData[$k]['xqs'] = str_pad(((substr($v['expect'],-3))+1),3,"0",STR_PAD_LEFT);    //0000  假期数
                  $newData[$k]['qs'] = substr($v['expect'],-3);  
                  $newData[$k]['opentime'] = $v['opentime'];
                  $newData[$k]['time'] = '1200';
                  $a = DB::table('kj')->insert($newData[$k]);
                  $jh->makejh($newData[$k]);
              }
          }
    }
}
