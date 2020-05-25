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

Route::get('/', 'WelcomeController@index')->name("welcome");


Auth::routes();
Route::get('/search', 'SearchController@index')->name('search');
Route::get('/home', 'HomeController@index')->name('home');
Route::post('/search', 'SearchController@index')->name('search-form');
Route::post('/booked', 'BookedController@index');
Route::post('/profile', 'ProfileController@index')->name('profile');
Route::post('/booked-del', 'BookedController@delete');
Route::get('/profile', 'ProfileController@index');
Route::get('/last', 'LastController@index')->name("last");