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



Auth::routes();

Route::get('/home', 'HomeController@index');

Route::group(['middleware' => ['web']], function () {



Route::get('/', [
    'uses' => 'HomeController@homepage',
    
]);

Route::get('/eshop_admin', [
    'uses' => 'UserController@CheckIfAdmin',
    'as' => 'admin',
    'middleware' => 'auth'
]);

Route::get('/dashboard', function () {
	    return view('dashboard');
	})->name('dashboard');


Route::get('/product_detail/{id}/{product_type?}',  [
    'uses' => 'ProductController@product_detail',
    'as' => 'product'
]);


Route::get('/myaccount', [
    'uses' => 'UserController@myaccount',
    'as' => 'myaccount'
]);


Route::get('/cart', [
    'uses' => 'CartController@showCart',
    'as' => 'cart.show'
]);


Route::post('/cart/{title}/{product_code}/{price}/{slider_image}', [
    'uses' => 'CartController@insertCart',
    'as' => 'cart.save'
]);



Route::post('/cart_update', [
    'uses' => 'CartController@updateCart',
    'as' => 'cart.update'
]);

Route::post('/check_submit', [
    'uses' => 'CartController@check_submit',
    'as' => 'check.submit'
]);

Route::get('/checkout', [
    'uses' => 'CartController@showCheckOut',
    'as' => 'checkout.show'
]);

Route::post('/billing_details', [
    'uses' => 'CheckoutController@billing_details',
    'as' => 'billing.details'
]);


});