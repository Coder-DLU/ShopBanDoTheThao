<?php

use Illuminate\Support\Facades\Route;

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

//Route::get('/', function () {
//    return view('welcome');
//});
Route::get('/','HomeController@index')->name('home');
Route::get('/category/{slug}/{id}',[
    'as'=>'category.product',
    'uses'=>'CategoryController@index',
]);
//menu
Route::prefix('product')->group(function () {
    //show product for user add to cart
    Route::get('/',[
        'as'=> 'product.index',
        'uses' => 'ProductController@index',
    ]);
});
//add-to-cart
Route::get('/product/add-to-cart/{id}','ProductController@addToCart')->name('addToCart');
//showcart
Route::get('/product/show-cart','ProductController@showCart')->name('showCart');
//update cart
Route::get('/product/update-cart','ProductController@updateCart')->name('updateCart');
//delete cart
Route::get('/product/delete-cart','ProductController@deleteCart')->name('deleteCart');
//search
Route::get('/product/search','ProductController@search')->name('search');
