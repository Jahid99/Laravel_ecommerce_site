@extends('layouts.master')

@section('content')
	
	

	<section class="header_text sub">
				<h4><span>Shopping Cart</span></h4>
			</section>

			

			<section class="main-content">				
				<div class="row">
					<div class="span9">					
						<h4 class="title"><span class="text"><strong>Your</strong> Cart</span></h4>
						<table class="table table-striped">
							<thead>
								<tr>
									<th>Remove</th>
									<th>Image</th>
									<th>Product Name</th>
									<th>Quantity</th>
									<th>Unit Price</th>
									<th>Total</th>
								</tr>
							</thead>
							<tbody>
							<form action="{{ route('check.submit') }}" method="post">
							<?php $total = 0; ?>

								@foreach($cartproducts as $cartproduct)

								<?php $total += $cartproduct->price * $cartproduct->quantity; ?>

								<tr>
									<td><input type="checkbox" value="{{ $cartproduct->id }}" name="checkbox[]"></td>
									<td><a href="product_detail.html"><img alt="" src="{{asset('/images/cloth/' . $cartproduct->image)}}"></a></td>
									<td>{{ $cartproduct->product_name }}</td>
									<td><input type="text" value="{{ $cartproduct->quantity }}" class="input-mini" name="quantity[]"></td>
									<td>${{ $cartproduct->price }}</td>
									<td>${{ $cartproduct->price * $cartproduct->quantity }}</td>
								</tr>	

								@endforeach

								
								<tr>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td><strong>${{ $total }}</strong></td>
								</tr>		  
							</tbody>
						</table>
						<h4>What would you like to do next?</h4>
						<p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
						<label class="radio">
							<input type="radio" name="optionsRadios" id="optionsRadios1" value="coupon" checked="">
							Use Coupon Code
						</label>
						<label class="radio">
							<input type="radio" name="optionsRadios" id="optionsRadios2" value="shipping">
							Estimate Shipping &amp; Taxes
						</label>
						<hr>
						<p class="cart-total right">
							<strong>Sub-Total</strong>:	${{ $total }}<br>
							<strong>Eco Tax (-2.00)</strong>: $2.00<br>
							<strong>VAT (17.5%)</strong>: ${{(0.17 * $total)}}<br>
							<strong>Total  </strong>  &nbsp;&nbsp; : ${{ ((0.17 * $total)+($total))+2 }}<br>
						</p>
						<hr/>
						<p class="buttons center">				
							<input type="submit" name="update" value="Update">
							<input type="submit" name="continue" value="Continue">
							<input type="submit" name="checkout" value="Checkout">
							<input type="hidden" value="{{ Session::token() }}" name="_token">
							
							
						</p>	
							</form>			
					</div>
					<div class="span3 col">
						<div class="block">	
							<ul class="nav nav-list">
								<li class="nav-header">SUB CATEGORIES</li>
								<li><a href="#">Nullam semper elementum</a></li>
								<li class="active"><a href="products.html">Phasellus ultricies</a></li>
								<li><a href="#">Donec laoreet dui</a></li>
								<li><a href="#">Nullam semper elementum</a></li>
								<li><a href="#">Phasellus ultricies</a></li>
								<li><a href="#">Donec laoreet dui</a></li>
							</ul>
							<br/>
							<ul class="nav nav-list below">
								<li class="nav-header">MANUFACTURES</li>
								<li><a href="#">Adidas</a></li>
								<li><a href="#">Nike</a></li>
								<li><a href="#">Dunlop</a></li>
								<li><a href="#">Yamaha</a></li>
							</ul>
						</div>
						<div class="block">
							<h4 class="title">
								<span class="pull-left"><span class="text">Randomize</span></span>
								<span class="pull-right">
									<a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
								</span>
							</h4>
							<div id="myCarousel" class="carousel slide">
								<div class="carousel-inner">

								<?php $flag = 0 ; ?>
								@foreach($randomize_product_sliders as $key=>$randomize_product_slider)

									<div class="<?php if($flag==0) {echo 'active';}?> item">
										<ul class="thumbnails listing-products">
											<li class="span3">
												<div class="product-box">
													<span class="sale_tag"></span>												
													<a href="{{ $randomize_product_slider->image_link }}"><img alt="" src="{{asset('/images/ladies/' . $randomize_product_slider->image)}}"></a><br/>
													<a href="{{ $randomize_product_slider->title_link }}" class="title">{{ $randomize_product_slider->title }}</a><br/>
													<a href="{{ $randomize_product_slider->category_link }}" class="category">{{ $randomize_product_slider->category }}</a>
													<p class="price">${{ $randomize_product_slider->price }}</p>
												</div>
											</li>
										</ul>
									</div>
									<?php ++$flag; ?>
									@endforeach

								</div>
							</div>
						</div>						
					</div>
				</div>
			</section>			

@endsection