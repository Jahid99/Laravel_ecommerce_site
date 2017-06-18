@extends('layouts.master')

@section('content')

<?php
                        
  Session::put('backUrl', URL::previous());
?>

<section class="header_text sub">
                <h4><span>Login or Regsiter</span></h4>
            </section>          
            <section class="main-content">              
                <div class="row">
                    <div class="span5">                 
                        <h4 class="title"><span class="text"><strong>Login</strong> Form</span></h4>
                        <form method="POST" action="{{ route('login') }}">
                        {{ csrf_field() }}
                            <input type="hidden" name="next" value="/">
                            <fieldset>
                                <div class="control-group">
                                    <label class="control-label">E-mail</label>
                                    <div class="controls">
                                       <input id="email" type="email" class="input-xlarge" name="email" value="{{ old('email') }}" required autofocus>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Password</label>
                                    <div class="controls">
                                        <input id="password" type="password" class="input-xlarge" name="password" required>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <input tabindex="3" class="btn btn-inverse large" type="submit" value="Sign into your account">
                                   
                                
                                    <hr>
                                    <p class="reset"><a class="btn btn-link" href="{{ route('password.request') }}">
                                    Forgot Your Password?
                                </a></p>
                                </div>
                            </fieldset>
                        </form>             
                    </div>
                    <div class="span7">                 
                        <h4 class="title"><span class="text"><strong>Register</strong> Form</span></h4>
                        <form class="form-stacked" role="form" method="POST" action="{{ route('register') }}">
                         {{ csrf_field() }}
                            <fieldset>
                                <div class="control-group">
                                    <label class="control-label">Username</label>
                                    <div class="controls">
                                        <input id="name" type="text" class="input-xlarge" name="name" value="{{ old('name') }}" required autofocus>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Email address:</label>
                                    <div class="controls">
                                        <input id="email" type="email" class="input-xlarge" name="email" value="{{ old('email') }}" required>
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Password:</label>
                                    <div class="controls">
                                        <input id="password" type="password" class="input-xlarge" name="password" required>
                                    </div>
                                </div>          
                                                                          
                                <div class="control-group">
                                    <p>Now that we know who you are. I'm not a mistake! In a comic, you know how you can tell who the arch-villain's going to be?</p>
                                </div>
                                <hr>
                                <div class="actions"> <input tabindex="9" class="btn btn-inverse large" type="submit" value="Create your account"></div>
                            </fieldset>
                        </form>                 
                    </div>              
                </div>
            </section>  
    @endsection        