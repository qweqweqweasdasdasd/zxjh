<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Workerman\Worker;
use Workerman\Autoloader;

class Workerman extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'Workerman {action}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        global $argv;
        $arg = $this->argument('action');
        $argv [1] = $arg;

        global $text_worker;
        // 创建一个Worker监听9130端口，使用http协议通讯
        $text_worker = new Worker("websocket://0.0.0.0:8080");
        
        /*$http_worker->transport = 'http';*/
        // 启动4个进程对外提供服务
        $text_worker->count = 4;
        $handler = \App::make('Handler\WorkermanHandler');
        $text_worker->onConnect = array($handler,"handle_connection");
        $text_worker->onWorkerStart = array($handler,"handle_workerstart");
        $text_worker->onMessage = array($handler,"handle_message");
        $text_worker->onClose = array($handler,"handle_close");

        // 运行worker
        Worker::runAll();
    }
}
