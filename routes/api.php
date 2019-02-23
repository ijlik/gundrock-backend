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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});


Route::get('/list-mobil', 'MobilRentalController@listMobil')->middleware('cors');
Route::get('/pesan-mobil', 'MobilRentalController@pesanMobil')->middleware('cors');
Route::get('/hitung', 'MobilRentalController@hitung')->middleware('cors');
Route::get('/list-sopir', 'MobilRentalController@listSopir')->middleware('cors');
Route::get('/list-plus-sopir', 'MobilRentalController@listPlusSopir')->middleware('cors');
Route::get('/list-lengkap', 'MobilRentalController@listLengkap')->middleware('cors');
Route::get('/list-mobil/{id}', 'MobilRentalController@detailMobil')->middleware('cors');
Route::get('/list-sopir/{id}', 'MobilRentalController@detailSopir')->middleware('cors');
Route::get('/list-plus-sopir/{id}', 'MobilRentalController@detailPaket')->middleware('cors');
Route::get('/list-lengkap/{id}', 'MobilRentalController@detailPaket')->middleware('cors');

