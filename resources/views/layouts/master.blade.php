<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
       
        <title>{{ $site_info->title }}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
        <!-- bootstrap -->
        <link rel="stylesheet" type="text/css" href="{{ URL::to('css/bootstrap.min.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ URL::to('css/bootstrap-responsive.min.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ URL::to('css/bootstrappage.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ URL::to('css/flexslider.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ URL::to('css/theme_main.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ URL::to('css/jquery.fancybox.css') }}">


        <!-- scripts -->
        <script src="{{ URL::to('js/jquery-1.7.2.min.js') }}"></script>
        <script src="{{ URL::to('js/bootstrap.min.js') }}"></script>
        <script src="{{ URL::to('js/superfish.js') }}"></script>
        <script src="{{ URL::to('js/jquery.scrolltotop.js') }}"></script>
        <script src="{{ URL::to('js/jquery.fancybox.js') }}"></script>

        
        <!--[if lt IE 9]>           
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
            <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>  
   



        <div id="top-bar" class="container">
            <div class="row">
                <div class="span4">
                    
                </div>
                <div class="span8">
                    <div class="account pull-right">
                        <ul class="user-menu">     
                            <?php
                        if(Auth::check()){ ?>

                            <li><a href="{{ route('myaccount') }}">My Account</a></li>
                            <?php } ?>

                            <li><a href="{{ URL::to("/cart") }}">Your Cart (@if(isset($total_products_count))
            {{$total_products_count}}
        @endif)</a></li>

                            @if($total_products_count>0)
            <li><a href="{{ URL::to("/checkout") }}">Checkout</a></li> 
        @endif


                         


                            @if (Auth::guest())
                            <li><a href="{{ route('register') }}">Login</a></li>  
                            @else
                            <li>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="wrapper" class="container">
            <section class="navbar main-menu">
                <div class="navbar-inner main-menu">                
                    <a href="{{ URL::to("/") }}" class="logo pull-left"><img src="{{asset('/images/' . $site_info->logo)}}" class="site_logo" alt=""></a>
                    
                </div>
            </section>
            
            @yield('content')
            <section id="footer-bar">
                <div class="row">
                    <div class="span3">
                        <h4>Navigation</h4>
                        <ul class="nav">
                            <li><a href="#">Homepage</a></li>  
                            <li><a href="#">About Us</a></li>
                            <li><a href=".#">Contact Us</a></li>                           
                        </ul>                   
                    </div>
                    <div class="span4">
                        <h4>My Account</h4>
                        <ul class="nav">
                           
                            
                            <li><a href="#">Newsletter</a></li>
                        </ul>
                    </div>
                    <div class="span5">
                        <p class="logo"><img src="{{asset('/images/' . $site_info->logo)}}" class="site_logo" alt=""></p>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. the  Lorem Ipsum has been the industry's standard dummy text ever since the you.</p>
                        <br/>
                        <span class="social_icons">
                            <a class="facebook" href="#">Facebook</a>
                            <a class="twitter" href="#">Twitter</a>
                            <a class="skype" href="#">Skype</a>
                            <a class="vimeo" href="#">Vimeo</a>
                        </span>
                    </div>                  
                </div>  
            </section>
            <section id="copyright">
               <span> {!! $site_info->copyright_text !!}</span>
                
            </section>
        </div>
        <script src="{{ URL::to('js/common.js') }}"></script>
        <script src="{{ URL::to('js/jquery.flexslider-min.js') }}"></script>
        <script type="text/javascript">
            $(function() {
                $(document).ready(function() {
                    $('.flexslider').flexslider({
                        animation: "fade",
                        slideshowSpeed: 4000,
                        animationSpeed: 600,
                        controlNav: false,
                        directionNav: true,
                        controlsContainer: ".flex-container" // the container that holds the flexslider
                    });
                });
            });
        </script>
        <script>
            $(function () {
                $('#myTab a:first').tab('show');
                $('#myTab a').click(function (e) {
                    e.preventDefault();
                    $(this).tab('show');
                })
            })
            $(document).ready(function() {
                $('.thumbnail').fancybox({
                    openEffect  : 'none',
                    closeEffect : 'none'
                });
                
                $('#myCarousel-2').carousel({
                    interval: 2500
                });                             
            });
        </script>
    </body>
</html>