<?php

use App\User;

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{
   

       public function CheckIfAdmin()
    {
        
        $user = Auth::user();
        $check_if_admin = $user->role;
        if($check_if_admin == 'admin'){
           return view('eshop_admin');
        }

        else{
            return redirect()->route('dashboard');
        }
       

    }

    public function myaccount()
    {

        if(Auth::check()) {
         return view('myaccount');
        }else{
            return redirect()->route('register');
        }
        
    }

}
