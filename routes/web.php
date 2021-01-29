<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/user', 'UserController@index');

// Let Vue take care of the routing
Route::get('/{anything}', function () {
    return view('app');
})->where('anything', '.*');
