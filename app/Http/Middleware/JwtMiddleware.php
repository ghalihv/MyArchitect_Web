<?php

namespace App\Http\Middleware;

use Closure;
use JWTAuth;
use Exception;
use Tymon\JWTAuth\Http\Middleware\BaseMiddleware;

class JwtMiddleware extends BaseMiddleware
{
    public function handle($request, Closure $next)
    {
        try {
            $user = JWTAuth::parseToken()->authenticate();
        } catch (Exception $e) {
            if ($e instanceof \Tymon\JWTAuth\Exceptions\TokenInvalidException){
                return response()->json(['success'=>false,'data'=>'{}','message'=>'Token is Invalid'.$e->getMessage()],500);
            }else if ($e instanceof \Tymon\JWTAuth\Exceptions\TokenExpiredException){
                return response()->json(['success'=>false,'data'=>'{}','message'=>'Token is Expired'],500);
            }else{
                return response()->json(['success'=>false,'data'=>'{}','message'=>'Authorization Token not found'],500);
            }
        }
        return $next($request);
    }
}
