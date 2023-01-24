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
    return view('welcome');
});

Route::get('/home', function () {
    return view('home');
});

Route::get('/questionaire', function () {
    return view('questionaire');
});

Route::get('/list', function () {
    return view('questionList');
});

Route::get('/edit/{id}', function () {
    return view('questionaire');
});

Route::get('/competency', function () {
    return view('competency');
});
