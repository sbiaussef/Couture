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

Route::get('/', 'HomeController@index')->name('home');
Route::post('/contact','HomeController@SendEmail');
Route::get('collection/{slug}','CollectionController@showAllProductByCollection');
Route::get('product/{slug}','ProductController@show');
Route::get('product/{slug}/command','ProductController@command');
Route::post('/command','CommandController@index')->name('command');
Route::get('/confirm/{token}','CommandController@confirmOrder');
Route::get('/sitemap','siteMapController@index');


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
