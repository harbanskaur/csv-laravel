<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Csv;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [Csv::class,'index']);
Route::get('/export_csv', [Csv::class,'export_csv'])->name('export.csv');
