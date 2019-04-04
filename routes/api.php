<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('/RefreshGetData','Api\ZxjhController@RefreshGetData');
Route::get('/everyGetData','Api\ZxjhController@everyGetData');
Route::get('/everyMinuteTodo','Api\ZxjhController@everyMinuteTodo');
Route::get('/everyThreeMinutesTodo','Api\ZxjhController@everyThreeMinutesTodo');
Route::get('/everyFiveMinutesTodo','Api\ZxjhController@everyFiveMinutesTodo');
Route::get('/everyTenMinutesTodo','Api\ZxjhController@everyTenMinutesTodo');
Route::get('/everyTwentyMinutesTodo','Api\ZxjhController@everyTwentyMinutesTodo');