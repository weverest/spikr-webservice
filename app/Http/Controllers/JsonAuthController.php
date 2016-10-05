<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;

use App\Http\Requests;
use Illuminate\Support\Facades\Hash;

class JsonAuthController extends Controller
{
    public function auth(Request $request, User $user)
    {
        $response = [
            'result'    => false,
            'code'      => 403,
            'message'   => 'Access denied.',
        ];

        $email = $request->get('email');
        $password = $request->get('password');

        $user_auth = $user
            ->where('email', $email)
            ->get()
            ->first();

        if($user_auth) {
            if(Hash::check($password, $user_auth->password)) {
                $response = [
                    'result'    => true,
                    'code'      => 200,
                    'message'   => 'Access allowed.',
                    'user'      => $user_auth
                ];
            }
        }

        return response($response, $response['code']);
    }
}
