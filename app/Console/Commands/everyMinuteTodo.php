<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class everyMinuteTodo extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'command:everyMinuteTodo';

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
        $zxjh = new \App\Http\Controllers\Api\ZxjhController();
        app('log')->info(date('Y-m-d H:i:s',time()).'每分钟获取数据');
        $zxjh->everyMinuteTodo();
    }
}
