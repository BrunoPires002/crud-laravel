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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/cadastro', function (){
    return view('cadastro-Cliente');
});

Route::get('/categoria', function (){
    return view('categoria');
});

Route::get('/produto', function (){
    return view('produto');
});

Route::get('/pedido', function (){
    return view('pedido');
});
Route::post('registrar', [LoginController::class, 'registrar'])->name('registrar');

Route::get('/categoria','App\Http\Controllers\CategoriaController@index');


Route::get('/produto','App\Http\Controllers\ProdutoController@index');


