@extends('layouts.master')
@section('content')

	

			<section class="header_text sub">
				<h4><span>Product Detail</span></h4>
				
			</section>
			<section class="main-content">				
				<div class="row">						
					<div class="span9">
						<div class="row">
							<div class="span4">
								<a href="{{URL::to('/')}}" class="thumbnail" data-fancybox-group="group1" title="Description 1"><img alt="" src="{{asset('/images/ladies/' . $product->slider_image)}}"></a>												
								<ul class="thumbnails small">	

									@foreach($product_variations as $product_variation)

									<li class="span1">
										<a href="{{asset('/images/ladies/' . $product_variation->image)}}" class="thumbnail" data-fancybox-group="group1" title="Description 2"><img src="{{asset('/images/ladies/' . $product_variation->image)}}" alt=""></a>
									</li>		

									@endforeach
								</ul>
							</div>
							<div class="span5">
								<address>
									<strong>Product Name:</strong> <span>{{ $product->title }}</span><br>
									<strong>Product Code:</strong> <span>{{ $product->product_code }}</span><br>
									<strong>Availability:</strong> <span>{{ $product->available_products }} products available</span><br>								
								</address>									
								<h4><strong>${{ $product->price }}</strong></h4>
							</div>
							<div class="span5">
								<form action="{{ route('cart.save',['title' => $product->title, 'product_code' => $product->product_code, 'price' => $product->price, 'slider_image' => $product->slider_image ]) }}" method="post">
									<label class="checkbox">
										<input type="checkbox" value="Option one is this and that" name="option1"> Option one is this and that
									</label>
									<br/>
						
									<label class="checkbox">
									  <input type="checkbox" value="Be sure to include why it's great" name="option2"> Be sure to include why it's great
									</label>
									<p>&nbsp;</p>
														@if($errors->any())
<h4 style="color:red">{{$errors->first()}}</h4>
@endif	
@if (Session::has('success'))

	<div class="alert alert-success" role="alert">
		<strong>Success:</strong>{{ Session::get('success') }}
	</div>

@endif
									<label>Qty:</label>
									<input type="text" class="span1" placeholder="1" name="quantity">
									<button class="btn btn-inverse" type="submit">Add to cart</button>
									<input type="hidden" value="{{ Session::token() }}" name="_token">
								</form>
							</div>	

						</div>
						<div class="row">
							<div class="span9">
								<ul class="nav nav-tabs" id="myTab">
									<li class="active"><a href="#home">Description</a></li>
									<li class=""><a href="#profile">Additional Information</a></li>
								</ul>							 
								<div class="tab-content">
									<div class="tab-pane active" id="home">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem</div>
									<div class="tab-pane" id="profile">
										<table class="table table-striped shop_attributes">	
											<tbody>
												<tr class="">
													<th>Size</th>
													<td>Large, Medium, Small, X-Large</td>
												</tr>		
												<tr class="alt">
													<th>Colour</th>
													<td>Orange, Yellow</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>							
							</div>						
							<div class="span9">	
								<br>
								<h4 class="title">
									<span class="pull-left"><span class="text"><strong>Related</strong> Products</span></span>
									<span class="pull-right">
										<a class="left button" href="#myCarousel-1" data-slide="prev"></a><a class="right button" href="#myCarousel-1" data-slide="next"></a>
									</span>
								</h4>
								<div id="myCarousel-1" class="carousel slide">
									<div class="carousel-inner">
										<div class="active item">
											<ul class="thumbnails listing-products">

											@foreach($related_products as $key=>$related_product)
											<?php ++$key; $cnt = count($related_products); ?>


												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>												
														<a href="{{ $related_product->id }}"><img src="{{asset('/images/ladies/' . $related_product->slider_image)}}" alt="" /></a><br/>
														<a href="product_detail.html" class="title">{{ $related_product->title }}</a><br/>
														<a href="#" class="category">{{ $related_product->category }}</a>
														<p class="price">${{ $related_product->price }}</p>
													</div>
												</li>
												@if(($key%3)==0 && $key != $cnt)
												</ul>
										</div>
												
												<div class="item">
											<ul class="thumbnails listing-products">
												@endif

												@endforeach
											</ul>
										</div>
										
									</div>							
								</div>


											
							</div>
						</div>
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
						<div class="block">								
							<h4 class="title"><strong>Best</strong> Seller</h4>								
							<ul class="small-product">

							@foreach($best_seller_parts as $key=>$best_seller_part)


								<li>
									<a href="{{ $best_seller_part->image_link }}">
										<img src="{{asset('/images/ladies/' . $best_seller_part->image)}}" alt="{{ $best_seller_part->image_link }}">
									</a>
									<a href="{{ $best_seller_part->title_link }}">{{ $best_seller_part->title }}</a>
								</li>

							@endforeach
							
							</ul>
						</div>
					</div>
				</div>
			</section>			
			@endsection