<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Session;
use Illuminate\Routing\Route;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */



    //protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */


    protected function authenticated(Request $request, $user)
    {
    //     if ( $user->isAdmin() ) {// do your margic here
    //         return redirect()->route('dashboard');
    // }
        

        // if($request->session()->has('checkout'))
        //     {
        //          return redirect('/checkout');
        //          session()->forget('checkout');
        //     }else{
        //         return redirect('/home');
        //     }
        // if(Route::return redirect('/home');()->getActionName()=='checkout.show'){
        //     return redirect('/checkout');
        // }else{
        //     return redirect('/checkout');

        // }
        // if(Request::capture()->fullUrl()=='checkout'){
        //     return redirect('/checkout');
        // }else{
        //      return redirect('/checkout');
        // }
        $checkthat = $request->input('checkitout');
        if($checkthat=='flag'){
            return redirect('/checkout');
        }else{
            return redirect('/');
        }

    }


    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
