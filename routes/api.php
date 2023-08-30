<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Laravel\Passport\Client;

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

Route::middleware('auth:api', 'scope:view-user')->get('/user', function (Request $request) {
    return $request->user();
});
Route::middleware('auth:api')->get('/logmeout', function (Request $request) {
    $user                   =  $request->user();
    $accessToken            = $user->token();
    DB::table('oauth_refresh_tokens')
    ->where('access_token_id', $accessToken->id)
    ->delete();
    $user->token()->delete();
    return response()->json([
        'message'   => "Revoked"
    ]);
});

Route::post('/login', function(Request $request){

        $input = $request->all();
        $vallidation = Validator::make($input,[
            'email' => 'required|email',
            'password' => 'required'
        ]);

        if($vallidation->fails()){
            return response()->json(['error' => $vallidation->errors()],422);
        }


        if (Auth::attempt(['email' => $input['email'],'password' => $input['password']])) {
            $user  = Auth::user();
            // dd($user);

            $token = $user->createToken('MyApp')->accessToken;

            return response()->json(['user'=> $user, 'token' => $token]);
        }

});
Route::get('/oauth/clients', function () {
    $clients = \Laravel\Passport\Client::all();

    return response()->json($clients);
});
Route::post('/oauth/clients', function(Request $request){
    $create = \Laravel\Passport\ClientRepository::create($request->user_id, $request->name, $request->url, null, false, false, true)->makeVisible('secret');
    return response()->json($create, 201);
});
