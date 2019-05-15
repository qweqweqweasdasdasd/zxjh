<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;

class realTimeUpdate extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'command:realTimeUpdate';

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
        file_put_contents('/www/wwwroot/17gma9.com/zxjh/run.log', date('Y-m-d H:i:s')."\r\n", FILE_APPEND);
        $zxjh->realTimeUpdate();
    }
}
