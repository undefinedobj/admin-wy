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
    $user = \App\Models\User::findOrFail(1);
    \Mail::to($user->email)->send(new \App\Mail\WelcomeToAdminWy($user));

    $users = \App\Models\User::paginate(5);
    return view('welcome', compact('users'));
});
// https://www.aliyun.com/jiaocheng/1412353.html
// https://blog.csdn.net/qq_15096707/article/details/51194899

Route::get('/demo', 'DemoController@index');
Route::get('/data', function () {
    $post = \App\Models\Article::where('id',2)->get();
    dd($post);
});
