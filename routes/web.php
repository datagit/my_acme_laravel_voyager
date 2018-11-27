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

Route::get('/', function () {
    $page = new \TCG\Voyager\Models\Page();
    $about = $page->where('slug', '=', 'about')->first();

    var_dump($about->title);
    var_dump($about->slug);
    var_dump($about->excerpt);
    var_dump($about->body);
    var_dump($about->image);
    var_dump($about->status);
    var_dump($about->meta_description);

    //echo menu('admin', '_json');
    echo setting('site.hello_world');
    return view('welcome');
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
