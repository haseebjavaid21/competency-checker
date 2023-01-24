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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/getQuestionsList', 'QuestionairesController@index');
Route::post('/addQuestion', 'QuestionairesController@store');
Route::post('/saveResponse', 'ResponsesController@store');
Route::get('/all', 'QuestionairesController@show');
Route::delete('{id}/delete', 'QuestionairesController@destroy');
Route::get('/edit/{id}','QuestionairesController@edit');
Route::post('/update/{id}','QuestionairesController@update');
Route::post('/addCompetency','CompetencyController@store');
Route::get('/getCompetencyNameList','CompetencyController@index');


