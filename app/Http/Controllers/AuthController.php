<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Tymon\JWTAuth\Contracts\Providers\Auth as ProvidersAuth;

class AuthController extends Controller
{
    public function __construct(){
        $this->middleware('auth:api', ["except" => ['login', 'register']]);
        // $this->user = Auth::user();
    }

    public function login(Request $request){
        $validator = Validator::make($request->all(), [
            "email" => 'required|email',
            "password" => 'required|string|min:6'
        ]);

        if($validator->fails()){
            return response()->json($validator->errors(), 400);
        }

        $token_validity = 24*60;
        $this->guard()->factory()->setTTL($token_validity);
        if(!$token = $this->guard()->attempt($validator->validated())){
            return response()->json(['error' => 'Unauthorized'], 404);
        }

        return $this->respondWithToken($token);
    }

    public function register(Request $request){
        $validator = Validator::make($request->all(), [
            "name" => "required|string|between:2,100",
            "email" => "required|email|unique:users",
            "password" => "required|confirmed|min:6",
        ]);

        if($validator->fails()){
            return response()->json($validator->errors(), 422);
        }

        $user = User::create(array_merge($validator->validated(), ['password' => bcrypt($request->password)]));
        return response()->json(['message' => 'User Created Successfully', 'user' => $user]);
    }

    public function logout(){
        $this->guard()->logout();
        return response()->json(['message' => 'User logged out Successfully'], 200);
    }

    public function profile(){
        return response()->json($this->guard()->user());
    }

    public function refresh(){
        return response()->respondWithToken($this->guard()->refresh());
    }

    protected function guard(){
        return Auth::guard();
    }

    protected function respondWithToken($token){
        return response()->json([
            "token" => $token,
            "token_type" => "bearer",
            "expires_in" => Auth::factory()->getTTL()*60
        ]);
    }
}
