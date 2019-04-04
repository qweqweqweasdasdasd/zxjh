<?php
namespace Handler;

use Workerman\Worker;
use Workerman\Lib\Timer;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Cache;

class WorkermanHandler
{

    protected $global_uid = 0;

    //当客户端断开时,广播给所有客户端
    public function handle_close($connection){
      global $text_worker;
      // foreach($text_worker->connections as $conn){
      //   $conn->send("user:[{$connection->uid}] logout");
      // }
    }

    //当客户端连上来时分配uid,并保存链接,并通知所有客户端
    public function handle_connection($connection){
      global $text_worker, $global_uid;

      //为这个链接分配一个uid
      // $zxjh = new \App\Http\Controllers\Api\ZxjhController();
      // //app('log')->info(date('Y-m-d H:i:s',time()).'实时获取数据api');
      
      // $data = $zxjh->RefreshGetData();  //获取数据

      // $connection->uid = ++$global_uid;
      // foreach($text_worker->connections as $conn){
      //   $conn->send("link---000");
      // }
    }

    public function handle_workerstart()
    {
        global $text_worker, $global_uid;

        // Timer::add(1, function() use($text_worker){
        // foreach($text_worker->connections as $connection) {
        //         $connection->send('hello');
        //     }
        // });
    }

    //当客户端发送消息过来时,转发给所有人
    public function handle_message($connection,$data){
      global $text_worker;
      switch ($data) {
        case 'link':
      
          //从数据库内拿数据,,每个彩种最新的数据,拿去一条,判断是否重复拿 
          //echo 'ping';
          $zxjh = new \App\Http\Controllers\Api\ZxjhController();
          //app('log')->info(date('Y-m-d H:i:s',time()).'实时获取数据api');
          
          $data = $zxjh->everyGetData(false);  //获取数据

          foreach($text_worker->connections as $conn){
            $conn->send("$data");
          }
          break;
        
        case 'ping':
 
          //从数据库内拿数据,,每个彩种最新的数据,拿去一条,判断是否重复拿 
          //echo 'ping';
          $zxjh = new \App\Http\Controllers\Api\ZxjhController();
          //app('log')->info(date('Y-m-d H:i:s',time()).'实时获取数据api');
          
          $data = $zxjh->everyGetData();  //获取数据
          foreach($text_worker->connections as $conn){
            $conn->send("$data");
          }
          break;
      }
  
    }
}