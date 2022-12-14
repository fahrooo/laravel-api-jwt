<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\UsersController;
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

Route::group([

    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {

    Route::post('register', [AuthController::class, 'register']);
    Route::post('login', [AuthController::class, 'login']);
    Route::post('logout', [AuthController::class, 'logout']);
    Route::post('refresh', [AuthController::class, 'refresh']);
    Route::post('me', [AuthController::class, 'me']);
});

Route::group([

    'middleware' => 'api',
    'prefix' => 'v1'

], function ($router) {

    Route::get('users', [UsersController::class, 'index']);
    Route::post('users/create', [UsersController::class, 'store']);
    Route::post('users', [UsersController::class, 'pagination']);
    Route::get('users/{id}', [UsersController::class, 'show']);
    Route::put('users/update/{id}', [UsersController::class, 'update']);
    Route::delete('users/delete/{id}', [UsersController::class, 'destroy']);
});
