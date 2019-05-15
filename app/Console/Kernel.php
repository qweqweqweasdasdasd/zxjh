<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *  * * * * * php /path/to/artisan schedule:run >> /dev/null 2>&1
     * @var array
     */
    protected $commands = [
        //
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        
        // $schedule->command('command:everyTwentyMinutesTodo')->cron('13,33,53 * * * *');      //每小时的0,20,40 执行
        // $schedule->command('command:everyMinuteTodo')->cron('*/1 * * * *');                 //每分钟
        // $schedule->command('command:everyThreeMinutesTodo')->cron('*/3 * * * *');           //每3分钟
        // $schedule->command('command:everyFiveMinutesTodo')->cron('*/5 * * * *');            //每5分钟
        // $schedule->command('command:everyTenMinutesTodo')->cron('*/10 * * * *');            //每10分钟

        $schedule->command('command:realTimeUpdate')->cron('*/1 * * * *');               //每1分

        //$schedule->command('command:timeToClear')->cron('0 0 4 * *');                       //每天凌晨4点执行一次
        $schedule->command('command:timeToClear')->cron('*/54 * * * *');                       //每54执行一次
    }

    /**
     * Register the commands for the application.
     *
     * @return void
     */
    protected function commands()
    {
        $this->load(__DIR__.'/Commands');

        require base_path('routes/console.php');
    }
}
