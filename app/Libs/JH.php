<?php
namespace App\Libs;

use App\JH as zxjh;
use App\Libs\Tools;

// 逻辑判断返回数据

class JH
{

	//计划是否中奖 中奖 不显示 不中奖 修改 倍数
	public function makejh($d)
	{
		if(!$this->Pre($d['type'])){
			//获取到计划中的号码
			$firstJH = $this->Findhm($d['type']);
			//判断开奖结果是否在计划内
			switch ($d['type']) {
				case 'og1k3':	//单双
					$this->WinOrNwin($d);
					return ;
				case 'jlffc':	//单双JLFFC
					$this->bjpk10($d);			//1分彩
					return ;	
				case 'jlpk10':	//单双JLPK10		//1分赛车
					$this->bjpk10($d);
					return ;

				case 'og3k3':	//单双 OG3K3
					$this->WinOrNwin($d);
					return ;
				case 'tsffc':	//单双 TSFFC
					$this->bjpk10($d);	
					return ;
				case 'tspk10':	//单双 TSPK10
					$this->bjpk10($d);
					return ;

				case 'og5k3':	//单双 OG5K3
					$this->WinOrNwin($d);
					return ;
				case 'tfffc':	//单双 TFFFC
					$this->bjpk10($d);
					return ;
				case 'tfpk10':	//单双 TFPK10
					$this->bjpk10($d);
					return ;

				case 'og10k3':	//单双 OG10K3
					$this->WinOrNwin($d);
					return ;
				case 'og10ffc':	//单双 OG10FFC
					$this->bjpk10($d);
					return ;
				case 'og10pk10':	//单双 OG10PK10
					$this->bjpk10($d);
					return ;

				case 'bjpk10':	//单双 BJPK10
					$this->bjpk10($d);
					return ;
				case 'cqssc':	//单双 CQSSC 万位
					$this->bjpk10($d);
					return ;
				case 'jsk3':	//单双 JSK3
					$this->WinOrNwin($d);	//第一个号码
					return ;
				case 'gd11x5':	//单双 GD11X5 第一个球
					$this->bjpk10($d);
					return ;
				}
		}
	}

	//根据 状态 查询计划 是否有该彩种计划
	public function Pre($type)
	{
		if(zxjh::where([['type',$type],['is_show',1]])->count()){
			return false;
		};

		//生成一个计划(单双,定位)
		return $this->createJh($type);
	}

	//写入计划
	public function createJh($type)
	{
		switch ($type) {
			case 'og1k3':	//单双 OG1K3
	 			return !!(zxjh::create(['hm'=>Tools::RoundOE(),'type'=>$type]));
			case 'jlffc':	//单双 JLFFC
				return !!(zxjh::create(['hm'=>Tools::RoundNum(0,9,5),'type'=>$type]));
			case 'jlpk10':	//单双 JLPK10
				return !!(zxjh::create(['hm'=>Tools::RoundNum(1,10,5),'type'=>$type]));

			case 'og3k3':	//单双 OG3K3
				return !!(zxjh::create(['hm'=>Tools::RoundOE(),'type'=>$type]));
			case 'tsffc':	//单双 TSFFC
				return !!(zxjh::create(['hm'=>Tools::RoundNum(0,9,5),'type'=>$type]));
			case 'tspk10':	//单双 TSPK10
				return !!(zxjh::create(['hm'=>Tools::RoundNum(1,10,5),'type'=>$type]));

			case 'og5k3':	//单双 OG5K3
				return !!(zxjh::create(['hm'=>Tools::RoundOE(),'type'=>$type]));
			case 'tfffc':	//单双 TFFFC
				return !!(zxjh::create(['hm'=>Tools::RoundNum(0,9,5),'type'=>$type]));
			case 'tfpk10':	//单双 TFPK10
				return !!(zxjh::create(['hm'=>Tools::RoundNum(1,10,5),'type'=>$type]));

			case 'og10k3':	//单双 OG10K3
				return !!(zxjh::create(['hm'=>Tools::RoundOE(),'type'=>$type]));
			case 'og10ffc':	//单双 OG10FFC
				return !!(zxjh::create(['hm'=>Tools::RoundNum(0,9,5),'type'=>$type]));
			case 'og10pk10':	//单双 OG10PK10
				return !!(zxjh::create(['hm'=>Tools::RoundNum(1,10,5),'type'=>$type]));

			case 'bjpk10':	//计划随机的5个字数  北京pk10
				return !!(zxjh::create(['hm'=>Tools::RoundNum(1,10,5),'type'=>$type]));
			case 'cqssc':	//单双 CQSSC
				return !!(zxjh::create(['hm'=>Tools::RoundNum(0,9,5),'type'=>$type]));
			case 'jsk3':	//单双 JSK3
				return !!(zxjh::create(['hm'=>Tools::RoundOE(),'type'=>$type]));
			case 'gd11x5':	//单双 GD11X5
				return !!(zxjh::create(['hm'=>Tools::RoundNum(1,11,5),'type'=>$type]));

		}
	}

	//北京pk10	万位
	public function bjpk10($d)
	{
		$kjhm = explode(',',$d['kjhm'])[0];
		$jh = $this->Findhm($d['type']);
			//in_array( 3, json_decode($jh->hm,true))
		if( in_array($kjhm, json_decode($jh->hm,true)) ){

			$this->UpdateisShow($d['type']);
			return $this->createJh($d['type']);
		}
		
		if(!Tools::BSbet($jh->bs)){

			$this->UpdateisShow($d['type'],'3');
			return $this->createJh($d['type']);
		}
		$this->UpdateBS($d['type'],Tools::BSbet($jh->bs));
	}

	//开奖结果和计划 是否对应 不对应更新 单双
	public function WinOrNwin($d)
	{
		$kjhm = Tools::PDRoundOE(explode(',',$d['kjhm']));
		$jh = $this->Findhm($d['type']);

		if($kjhm == $jh->hm){
			$this->UpdateisShow($d['type']);		//中奖
			
			return $this->createJh($d['type']);
		}
		if(!Tools::BSbet($jh->bs)){
			$this->UpdateisShow($d['type'],'3');
			
			return $this->createJh($d['type']);		//不中奖
		}
		$this->UpdateBS($d['type'],Tools::BSbet($jh->bs));
	}

	//更新倍数
	public function UpdateBS($type,$xbs)
	{
		return zxjh::where([['type',$type],['is_show',1]])->update(['bs'=>$xbs]);
	}

	//中奖更新状态
	public function UpdateisShow($type,$is_show = 2)
	{
		return zxjh::where([['type',$type],['is_show',1]])->update(['is_show'=>$is_show]);
	}

	//获取到显示的一条计划
	public function Findhm($type)
	{
		return zxjh::where([['type',$type],['is_show',1]])->first();
	}

}