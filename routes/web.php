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

/*Route::get('/', function () {
    return view('frontend.pages.index')->name('homepage');
});*/
Route::get('/', 'HotelController@index')->name('homepage');
Route::post('/hotelSearch' , 'HotelController@hotelSearch')->name('hotelSearch');
Route::get('/hotelDetails/{id}', 'HotelController@hotelDetails')->name('hotelDetails');
Route::post('/roomOrderButton', 'HotelController@roomOrderButton')->middleware('auth')->name('roomOrderButton');
Route::post('/userOrderSubmit', 'HotelController@userOrderSubmit')->name('userOrderSubmit');
Route::get('/air', 'airController@index')->name('air');
Route::post('/airSearch' , 'airController@airSearch')->name('airSearch');
Route::get('/cityDetails/{city}', 'cityController@cityDetails')->name('cityDetails');
Route::get('/food', 'foodController@index')->name('food');
Route::get('/holidayPackage', 'holidayPackageController@index')->name('holidayPackage');
Route::get('/holidayPackageDetails/{id}', 'holidayPackageController@holidayPackageDetails')->name('holidayPackageDetails');
Route::get('/tourGuide', 'tourGuideController@index')->name('tourGuide');
Route::get('/dayTrip', 'dayTripController@index')->name('dayTrip');
Route::get('/daytripDetails/{id}', 'dayTripController@daytripDetails')->name('daytripDetails');
Route::get('/pick', 'pickController@index')->name('pick');
Route::post('/pickdropSearch' , 'pickController@pickdropSearch')->name('pickdropSearch');
Route::post('/pickOrderButton', 'pickController@pickOrderButton')->middleware('auth')->name('pickOrderButton');
Route::post('/pickOrderSubmit', 'pickController@pickOrderSubmit')->name('pickOrderSubmit');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');



Route::group([ 'prefix' =>'b2b'], function(){
    
    Route::get('/signup' , 'b2bSignupController@signUpForm')->name('b2b.signup');
    Route::post('/signup' , 'b2bSignupController@signUpFormSubmit')->name('b2b.signupSubmit');
    Route::get('/login' , 'Auth\b2bLoginController@showLoginForm')->name('b2b.login');
    Route::post('/login' , 'Auth\b2bLoginController@login')->name('b2b.login.submit');
    Route::get('/' , 'b2bController@index')->name('b2b.index');
    //Route::get('/profile', 'userController@userProfile')->name('b2b.profile');
    Route::get('/hotelAdd' , 'b2bController@hotelAdd')->name('b2b.hotelAdd');
    Route::post('/hotelAdd' , 'b2bController@hotelAddSubmit')->name('b2b.hotelAddSubmit');
    Route::get('/hotelRoom' , 'b2bController@hotelRoom')->name('b2b.hotelRoom');
    Route::post('/hotelRoom' , 'b2bController@hotelRoomSubmit')->name('b2b.hotelRoomSubmit');
    Route::get('/hotelList', 'b2bController@hotelList')->name('b2b.hotelList');
   /* Route::post('/product/edit/{id}', 'b2bController@productUpdate')->name('b2b.productUpdate');
    Route::post('/product/delete/{id}', 'productController@productDelete')->name('b2b.product.delete');
    Route::get('/order' , 'b2bController@order')->name('b2b.order');
    Route::get('/orderShow/{id}', 'b2bController@orderShow')->name('b2b.orderShow');
    Route::post('/cancelOrder/{id}', 'b2bController@cancelOrder')->name('b2b.cancelOrder');
    Route::post('/completeOrder/{id}', 'b2bController@completeOrder')->name('b2b.completeOrder');
    Route::get('/account', 'b2bController@account')->name('b2b.account');*/
    
    });


Route::group([ 'prefix' =>'admin'], function(){

Route::get('/login', 'Auth\adminLoginController@showLoginForm')->name('admin.login');
Route::post('/login' , 'Auth\adminLoginController@login')->name('admin.login.submit');  
Route::get('/', 'adminPagesController@index')->name('admin.index');
Route::get('/hotelAdd', 'adminPagesController@hotelAdd')->name('admin.hotelAdd'); 
Route::post('/hotelAdd', 'adminPagesController@hotelAddSubmit');
Route::get('/hotelRoom', 'adminPagesController@hotelRoom')->name('admin.hotelRoom');
Route::post('/hotelRoom', 'adminPagesController@hotelRoomSubmit');
Route::get('/hotelList', 'adminPagesController@hotelList')->name('admin.hotelList');
Route::get('/resortAdd', 'resortController@resortAdd')->name('admin.resortAdd'); 
Route::post('/resortAdd', 'resortController@resortAddSubmit');
Route::get('/resortPackageAdd', 'resortController@resortPackageAdd')->name('admin.resortPackageAdd');
Route::post('/resortPackageAdd', 'resortController@resortPackageAddSubmit');
Route::get('/resortList', 'resortController@resortList')->name('admin.resortList');
Route::get('/dayTripAdd', 'dayTripController@dayTripAdd')->name('admin.dayTripAdd'); 
Route::post('/dayTripAdd', 'dayTripController@dayTripAddSubmit');
Route::get('/dayTripShow', 'dayTripController@dayTripShow')->name('admin.dayTripShow');
Route::get('/holidayPackageAdd', 'holidayPackageController@holidayPackageAdd')->name('admin.holidayPackageAdd');
Route::post('/holidayPackageAdd', 'holidayPackageController@holidayPackageAddSubmit');
Route::get('/holidayPackageShow', 'holidayPackageController@holidayPackageShow')->name('admin.holidayPackageShow');
Route::get('/hotelRoom/edit/{id}', 'adminPagesController@hotelRoomEdit')->name('admin.hotelRoomEdit');
Route::post('/hotelRoom/edit/{id}', 'adminPagesController@hotelRoomUpdate')->name('admin.hotelRoomUpdate');
Route::post('/hotelRoom/delete/{id}', 'adminPagesController@hotelRoomDelete')->name('admin.hotelRoom.delete');
Route::get('/hotelsList', 'adminPagesController@hotelsList')->name('admin.hotelsList');
Route::get('/hotel/edit/{id}', 'adminPagesController@hotelEdit')->name('admin.hotelEdit');
Route::post('/hotel/edit/{id}', 'adminPagesController@hotelUpdate')->name('admin.hotelUpdate');
Route::post('/hotel/delete/{id}', 'adminPagesController@hotelDelete')->name('admin.hotel.delete');
Route::get('/pickdropAdd', 'pickController@pickdropAdd')->name('admin.pickdropAdd'); 
Route::post('/pickdropAdd', 'pickController@pickdropAddSubmit');
Route::get('/pickdropList', 'pickController@pickdropList')->name('admin.pickdropList');
Route::get('/userShow', 'adminPagesController@userShow')->name('admin.userShow');
Route::get('/order', 'adminPagesController@order')->name('admin.order');
    
    
    
    
    
/*Route::get('/userAdd', 'adminPagesController@userAdd')->name('admin.userAdd');
Route::post('/userAdd', 'adminPagesController@userCreate');
Route::get('/adminShow', 'adminPagesController@adminShow')->name('admin.adminShow');
Route::get('/resellerShow', 'adminPagesController@resellerShow')->name('admin.resellerShow');
Route::get('/supplierShow', 'adminPagesController@supplierShow')->name('admin.supplierShow');
Route::get('/supplierEdit/{id}', 'adminPagesController@supplierEdit')->name('admin.supplierEdit');
Route::post('/supplierEdit/{id}', 'adminPagesController@supplierUpdate')->name('admin.supplierUpdate');
Route::get('/resellerEdit/{id}', 'adminPagesController@resellerEdit')->name('admin.resellerEdit');
Route::post('/resellerEdit/{id}', 'adminPagesController@resellerUpdate')->name('admin.resellerUpdate');
Route::post('/resellerDelete/{id}', 'adminPagesController@resellerDelete')->name('admin.resellerDelete');
Route::post('/supplierDelete/{id}', 'adminPagesController@supplierDelete')->name('admin.supplierDelete');
Route::get('/edit', 'adminPagesController@edit')->name('admin.edit');
Route::get('/remove/{id}', 'adminPagesController@remove')->name('admin.remove');
    
Route::get('/productAdd', 'productController@index')->name('admin.productAdd');
Route::post('/productAdd', 'productController@productAdd');
Route::get('/productShow', 'productController@productShow')->name('admin.productShow');
Route::get('/product/edit/{id}', 'productController@productEdit')->name('admin.productEdit');
Route::post('/product/edit/{id}', 'productController@productUpdate')->name('admin.productUpdate');

Route::post('/product/delete/{id}', 'productController@productDelete')->name('admin.product.delete');
    
Route::get('/categoryShow', 'categoryController@categoryShow')->name('admin.categoryShow');
Route::get('/categoryCreate', 'categoryController@categoryCreate')->name('admin.categoryCreate');
Route::post('/categoryCreate', 'categoryController@categoryAdd');


Route::get('/profile', 'adminPagesController@profile')->name('admin.profile');
Route::get('/order', 'adminPagesController@order')->name('admin.order');
Route::get('/orderShow/{id}', 'adminPagesController@orderShow')->name('admin.orderShow');
Route::post('/paid/{id}', 'adminPagesController@paid')->name('admin.paid');
Route::get('/account', 'adminPagesController@account')->name('admin.account');*/
});
