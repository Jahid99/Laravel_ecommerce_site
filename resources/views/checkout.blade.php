@extends('layouts.master')

@section('content')


	<section class="header_text sub">
				<h4><span>Check Out</span></h4>
			</section>	
			<section class="main-content">
				<div class="row">
					<div class="span12">
						<div class="accordion" id="accordion2">
							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="

									<?php
                        if(Auth::check()){
  
  echo '#collapseOn';
}else{
	echo '#collapseOne';
}
?>
									


									">Checkout Options</a>
								</div>
								<div id="collapseOne" class="accordion-body 
								<?php

								if(Auth::check()){
  
  echo '';
}else{
	echo 'in';
}
?>
								


								collapse">
									<div class="accordion-inner">
										<div class="row-fluid">
											<div class="span6">
												<h4>New Customer</h4>
												<p>By creating an account you will be able to shop faster, be up to date on an order's status, and keep track of the orders you have previously made.</p>
												<div>
													<fieldset>
														<label class="radio" for="register">

															<input type="radio" name="account" value="register" id="register" checked="checked">Register Account
														</label>
														<label class="radio" for="guest">
															<input type="radio" name="account" value="guest" id="guest">Guest Checkout
														</label>
														<br>
														<button class="btn btn-inverse" onclick="form_request();">Add New Record</button>
													</fieldset>
												</div>
												<script>
													// $(document).ready(function(){
													//     $("form").submit(function(){
													//         //alert("Submitted");
													//         preventDefault();
													//         var check = $('input[name="account"]:checked').val();

													//         if(check=='register'){

													//         	window.location='google.com';
													//         }

													//     });
													// });

													function form_request(){
														var check = $('input[name="account"]:checked').val();
														if(check=='register'){
															window.location='/register';
														}
													}
														
												</script>
											 </div>
											 <div class="span6">
												<h4>Returning Customer</h4>
												<p>I am a returning customer</p>
												<form method="POST" action="{{ route('login') }}">
                        {{ csrf_field() }}
                            <input type="hidden" name="next" value="/">
                            <?php
                        if(!Auth::check()){
  session(['checkout' => 'value']);
}
?>
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
                                	<input type="hidden" name="checkitout" value="flag"> <!-- For loginController.php 
									for redirection -->
                                    <input tabindex="3"
                                   <?php
                        if(Auth::check()){
  echo "disabled";
  
}
?>
                                 class="btn btn-inverse large" type="submit" value="Sign into your account">
                                   
                       
                                    <hr>
                                    <p class="reset"><a class="btn btn-link" href="{{ route('password.request') }}">
                                    Forgot Your Password?
                                </a></p>
                                </div>
                            </fieldset>
                        </form>  
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo">Account &amp; Billing Details</a>
								</div>
								<div id="collapseTwo" class="accordion-body 

								<?php

								if(!Auth::check()){
  
  echo '';
}else{
	echo 'in';
}
?>


								collapse">
									<div class="accordion-inner">
										<div class="row-fluid">
											<div class="span6">
												<h4>Your Personal Details</h4>
												<form action="{{ route('billing.details') }}" method="post">
												<div class="control-group">
													<label class="control-label">First Name</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge" name="first_name" autofocus>
															@if ($errors->has('first_name'))
                                    <span class="help-block" style="color:red">
                                        <strong>{{ $errors->first('first_name') }}</strong>
                                    </span>
                                @endif
													</div>

												</div>

												<div class="control-group">
													<label class="control-label">Last Name</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge" name="last_name">
															@if ($errors->has('last_name'))
                                    <span class="help-block" style="color:red">
                                        <strong>{{ $errors->first('last_name') }}</strong>
                                    </span>
                                @endif
													</div>
												</div>					  
												<div class="control-group">
													<label class="control-label">Email Address</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge" value="<?php 

														if(Auth::check()){

															echo Auth::user()->email;

													}

														 ?>"  name="email_address">
														 	@if ($errors->has('email_address'))
                                    <span class="help-block" style="color:red">
                                        <strong>{{ $errors->first('email_address') }}</strong>
                                    </span>
                                @endif
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">Telephone</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge" name="telephone">
															@if ($errors->has('telephone'))
                                    <span class="help-block" style="color:red">
                                        <strong>{{ $errors->first('telephone') }}</strong>
                                    </span>
                                @endif
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">Fax</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge" name="fax">
															@if ($errors->has('fax'))
                                    <span class="help-block" style="color:red">
                                        <strong>{{ $errors->first('fax') }}</strong>
                                    </span>
                                @endif
													</div>
												</div>
											</div>
											<div class="span6">
												<h4>Your Address</h4>
												<div class="control-group">
													<label class="control-label">Company</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge" name="company">
															@if ($errors->has('company'))
                                    <span class="help-block" style="color:red">
                                        <strong>{{ $errors->first('company') }}</strong>
                                    </span>
                                @endif
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">Company ID:</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge" name="company_id">
															@if ($errors->has('company_id'))
                                    <span class="help-block" style="color:red">
                                        <strong>{{ $errors->first('company_id') }}</strong>
                                    </span>
                                @endif
													</div>
												</div>					  
												<div class="control-group">
													<label class="control-label"><span class="required"></span> Address 1:</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge" name="address_1">
															@if ($errors->has('address_1'))
                                    <span class="help-block" style="color:red">
                                        <strong>{{ $errors->first('address_1') }}</strong>
                                    </span>
                                @endif
													</div>
												</div>
												<div class="control-group">
													<label class="control-label">Address 2:</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge" name="address_2">
															@if ($errors->has('address_2'))
                                    <span class="help-block" style="color:red">
                                        <strong>{{ $errors->first('address_2') }}</strong>
                                    </span>
                                @endif
													</div>
												</div>
												<div class="control-group">
													<label class="control-label"><span class="required"></span> City:</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge" name="city">
															@if ($errors->has('city'))
                                    <span class="help-block" style="color:red">
                                        <strong>{{ $errors->first('city') }}</strong>
                                    </span>
                                @endif
													</div>
												</div>
												<div class="control-group">
													<label class="control-label"><span class="required"></span> Post Code:</label>
													<div class="controls">
														<input type="text" placeholder="" class="input-xlarge" name="post_code">
															@if ($errors->has('post_code'))
                                    <span class="help-block" style="color:red">
                                        <strong>{{ $errors->first('post_code') }}</strong>
                                    </span>
                                @endif
													</div>
												</div>
												<div class="control-group">
													<label class="control-label"><span class="required"></span> Country:</label>
													<div class="controls">
														<select class="input-xlarge"  name="country">
															<option value=""> --- Please Select --- </option>
														
															<option value="1">Afghanistan</option>
															<option value="2">Albania</option>
															<option value="3">Algeria</option>
															<option value="4">American Samoa</option>
															<option value="5">Andorra</option>
															<option value="6">Angola</option>
														</select>
															@if ($errors->has('country'))
                                    <span class="help-block" style="color:red">
                                        <strong>{{ $errors->first('country') }}</strong>
                                    </span>
                                @endif
													</div>
												</div>
												<div class="control-group">
													<label class="control-label"><span class="required"></span> Region / State:</label>
													<div class="controls">
														<select class="input-xlarge" name="region">
															<option value=""> --- Please Select --- </option>
															<option value="3513">Aberdeen</option>
															<option value="3514">Aberdeenshire</option>
															<option value="3515">Anglesey</option>
															<option value="3516">Angus</option>
															<option value="3517">Argyll and Bute</option>
														</select>
															@if ($errors->has('region'))
                                    <span class="help-block" style="color:red">
                                        <strong>{{ $errors->first('region') }}</strong>
                                    </span>
                                @endif
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="accordion-group">
								<div class="accordion-heading">
									<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree">Confirm Order</a>
								</div>
								<div id="collapseThree" class="accordion-body collapse">
									<div class="accordion-inner">
										<div class="row-fluid">
											<div class="control-group">
												<label for="textarea" class="control-label">Comments</label>
												<div class="controls">
													<textarea rows="3" id="textarea" class="span12" name="comments"></textarea>
												</div>
											</div>									
											<button class="btn btn-inverse pull-right" type="submit" name="confirm_order">Confirm order</button>
											<input type="hidden" value="{{ Session::token() }}" name="_token">
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>				
					</div>
				</div>
			</section>		


@endsection