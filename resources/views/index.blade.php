@extends('layouts.master')


@section('content')

<section  class="homepage-slider" id="home-slider">
                <div class="flexslider">
                    <ul class="slides">

                        @foreach($slider_infos as $slider)

                        <li>
                            <img src="{{asset('/images/carousel/' . $slider->image_name)}}" alt="" />
                            @if(is_null($slider->Description_1))

                            

                        @else
                            <div class="intro">
                                <h1>{{ $slider->Description_1 }}</h1>
                                <p><span>{{ $slider->Description_2 }}</span></p>
                            </div>
                        
                        @endif
                        </li> 
                        
                        

                        


                        @endforeach

                    


                    </ul>
                </div>          
            </section>

<section class="header_text">
				
				We stand for top quality templates. Our genuine developers always optimized bootstrap commercial templates. 
				<br/>Don't miss to use our cheap abd best bootstrap templates.
			</section>
			<section class="main-content">		
				<div class="row">
					<div class="span12">													
						<div class="row">
							<div class="span12">
								<h4 class="title">
									<span class="pull-left"><span class="text"><span class="line">Feature <strong>Products</strong></span></span></span>
									<span class="pull-right">
										<a class="left button" href="#myCarousel" data-slide="prev"></a><a class="right button" href="#myCarousel" data-slide="next"></a>
									</span>
								</h4>
								<div id="myCarousel" class="myCarousel carousel slide">
									<div class="carousel-inner">
										<div class="active item">
											<ul class="thumbnails">	


											@foreach($feature_products as $key=>$feature_product)
											<?php ++$key; $cnt = count($feature_products); ?>

												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>
														<p><a href="{{ route('product', ['id' => $feature_product->id, 'product_type' => 'feature']) }}"><img src="{{asset('/images/ladies/' . $feature_product->slider_image)}}" alt="" /></a></p>
														<a href="product_detail.html" class="title">{{ $feature_product->title }}</a><br/>
														<a href="products.html" class="category">{{ $feature_product->category }}</a>
														<p class="price">${{ $feature_product->price }}</p>
													</div>
												</li>
												
												@if(($key%4)==0 && $key != $cnt)
												</ul>
										</div>
												
												<div class="item">
											<ul class="thumbnails">
												@endif

												@endforeach
											</ul>
										</div>
										
									</div>							
								</div>
							</div>						
						</div>
						<br/>
						<div class="row">
							<div class="span12">
								<h4 class="title">
									<span class="pull-left"><span class="text"><span class="line">Latest <strong>Products</strong></span></span></span>
									<span class="pull-right">
										<a class="left button" href="#myCarousel-2" data-slide="prev"></a><a class="right button" href="#myCarousel-2" data-slide="next"></a>
									</span>
								</h4>
								
								<div id="myCarousel-2" class="myCarousel carousel slide">
									<div class="carousel-inner">
										<div class="active item">
											<ul class="thumbnails">	


											@foreach($latest_products as $key=>$latest_product)
											<?php ++$key; $cnt = count($latest_products); ?>

												<li class="span3">
													<div class="product-box">
														<span class="sale_tag"></span>
														<p><a href="{{ route('product', ['id' => $latest_product->id, 'product_type' => 'latest']) }}"><img src="{{asset('/images/cloth/' . $latest_product->slider_image)}}" alt="" /></a></p>
														<a href="product_detail.html" class="title">{{ $latest_product->title }}</a><br/>
														<a href="products.html" class="category">{{ $latest_product->category }}</a>
														<p class="price">${{ $latest_product->price }}</p>
													</div>
												</li>
												
												@if(($key%4)==0 && $key != $cnt)
												</ul>
										</div>
												
												<div class="item">
											<ul class="thumbnails">
												@endif

												@endforeach
											</ul>
										</div>
										
									</div>							
								</div>



							</div>						
						</div>
						<div class="row feature_box">


						@foreach($services as $service)

							<div class="span4">
								<div class="service">
									<div class="responsive">	
										<img src="{{asset('/images/' . $service->image)}}" alt="" />
										{!! $service->title !!}
										<p>{{ $service->description }}</p>									
									</div>
								</div>
							</div>

						@endforeach

						</div>		
					</div>				
				</div>
			</section>
			<section class="our_client">
				<h4 class="title"><span class="text">Manufactures</span></h4>
				<div class="row">

				@foreach($manufactures as $manufacture)

					<div class="span2">
						<a href="{{ $manufacture->image_link }}"><img alt="{{ $manufacture->image_alt }}" src="{{asset('/images/clients/' . $manufacture->image_name)}}"></a>
					</div>
				
				@endforeach

				</div>
			</section>
@endsection