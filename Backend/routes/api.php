<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

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
Route::post('register', 'Api\AuthController@register');
Route::post('login', 'Api\AuthController@login');
Route::get('verificate/{id}', 'Api\AuthController@verify');


Route::group(['middleware' => 'auth:api'], function(){
    //Admin Kurir
    Route::get('kurir', 'Api\KurirController@index');
    Route::get('kurir/{id}', 'Api\KurirController@show');
    Route::post('kurir', 'Api\KurirController@store');
    Route::put('kurir/{id}', 'Api\KurirController@update');
    Route::delete('kurir/{id}', 'Api\KurirController@destroy');

    //Admin Paket 
    Route::get('paket', 'Api\PaketController@index');
    Route::get('paket/{id}', 'Api\PaketController@show');
    Route::post('paket', 'Api\PaketController@store');
    Route::put('paket/{id}', 'Api\PaketController@update');
    Route::delete('paket/{id}', 'Api\PaketController@destroy');

    //User Pemesanan
    Route::get('pesanan', 'Api\PesananController@index');
    Route::get('pesanan/{id}', 'Api\PesananController@show');
    Route::post('pesanan', 'Api\PesananController@store');
    Route::put('pesanan/{id}', 'Api\PesananController@update');
    Route::delete('pesanan/{id}', 'Api\PesananController@destroy');

    //User Profile
    Route::get('user', 'Api\AuthController@index');
    Route::get('userLogin', 'Api\AuthController@getLoginUser');
    Route::get('user/{id}', 'Api\AuthController@show');
    Route::post('user', 'Api\AuthController@register');
    Route::put('user/{id}', 'Api\AuthController@update');
    Route::delete('user/{id}', 'Api\AuthController@destroy');

});

