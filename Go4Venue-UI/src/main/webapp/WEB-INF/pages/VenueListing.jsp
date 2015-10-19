<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->  
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->  
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->  
<head>
    <title>Product List | Unify - Responsive Website Template</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="resources/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/assets/css/shop.style.css">
    
    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="resources/assets/css/headers/header-v5.css">
    <link rel="stylesheet" href="resources/assets/css/footers/footer-v4.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="resources/assets/plugins/animate.css">    
    <link rel="stylesheet" href="resources/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="resources/assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/assets/plugins/noUiSlider/jquery.nouislider.min.css">
    <link rel="stylesheet" href="resources/assets/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
    
    <!-- Style Switcher -->
    <link rel="stylesheet" href="resources/assets/css/plugins/style-switcher.css"> 

    <!-- CSS Theme -->
    <link rel="stylesheet" href="resources/assets/css/theme-colors/purple.css" id="style_color">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="resources/assets/css/custom.css">
</head> 

<body class="header-fixed">
<div class="wrapper">
    <!--=== Header v5 ===-->   
    <div class="header-v5 header-static">
        <!-- Topbar v3 -->
        <div class="topbar-v3">
            <div class="search-open">
                <div class="container">
                    <input type="text" class="form-control" placeholder="Search">
                    <div class="search-close"><i class="icon-close"></i></div>
                </div>    
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <!-- Topbar Navigation -->
                        <ul class="left-topbar">
                            <li>
                                <a>Currency (USD)</a>
                                <ul class="currency">
                                    <li class="active">
                                        <a href="#">USD <i class="fa fa-check"></i></a> 
                                    </li>
                                    <li><a href="#">Euro</a></li>
                                    <li><a href="#">Pound</a></li>
                                </ul>
                            </li>
                            <li>
                                <a>Language (EN)</a>
                                <ul class="language">
                                    <li class="active">
                                        <a href="#">English (EN)<i class="fa fa-check"></i></a> 
                                    </li>
                                    <li><a href="#">Spanish (SPN)</a></li>
                                    <li><a href="#">Russian (RUS)</a></li>
                                    <li><a href="#">German (GRM)</a></li>
                                </ul>
                            </li>   
                        </ul><!--/end left-topbar-->
                    </div>
                    <div class="col-sm-6">
                        <ul class="list-inline right-topbar pull-right">
                            <li><a href="#">Account</a></li>
                            <li><a href="shop-ui-add-to-cart.html">Wishlist (0)</a></li>
                            <li><a href="shop-ui-login.html">Login</a> | <a href="shop-ui-register.html">Register</a></li>
                            <li><i class="search fa fa-search search-button"></i></li>
                        </ul>
                    </div>
                </div>
            </div><!--/container-->
        </div>
        <!-- End Topbar v3 -->

        <!-- Navbar -->
        <div class="navbar navbar-default mega-menu" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">
                        <img id="logo-header" src="resources/assets/img/go.png" alt="Logo">
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-responsive-collapse">
                    <!-- Shopping Cart -->
                    <ul class="list-inline shop-badge badge-lists badge-icons pull-right">
                        <li>
                            <a href="#"><i class="fa fa-heart"></i></a>
                            <span class="badge badge-sea rounded-x">3</span>
                            <ul class="list-unstyled badge-open mCustomScrollbar" data-mcs-theme="minimal-dark">
                                <li>
                                    <img src="resources/assets/img/thumb/venue-1-thumb.jpg" alt="">
                                    <button type="button" class="close">×</button>
                                    <div class="overflow-h">
                                        <span>Venue 1</span>
                                        <small></small>
                                    </div>    
                                </li>
                                <li>
                                    <img src="resources/assets/img/thumb/venue-2-thumb.jpg" alt="">
                                    <button type="button" class="close">×</button>
                                    <div class="overflow-h">
                                        <span>Venue 2</span>
                                        <small></small>
                                    </div>    
                                </li>
                                <li>
                                    <img src="resources/assets/img/thumb/venue-3-thumb.jpg" alt="">
                                    <button type="button" class="close">×</button>
                                    <div class="overflow-h">
                                        <span>Venue 3</span>
                                        <small></small>
                                    </div>    
                                </li>
                                <li class="subtotal">
                                    <div class="overflow-h margin-bottom-10">
                                        <span>Total Selectd</span>
                                        <span class="pull-right subtotal-cost">3</span>
                                    </div>
                                    <div class="row">    
                                        <div class="col-xs-6">
                                            <a href="shop-ui-inner.html" class="btn-u btn-brd btn-brd-hover btn-u-sea-shop btn-block">View Shortlist</a>
                                        </div>
                                        <div class="col-xs-6">
                                            <a href="shop-ui-add-to-cart.html" class="btn-u btn-u-sea-shop btn-block">Compare</a>
                                        </div>
                                    </div>        
                                </li>    
                            </ul>
                        </li>
                    </ul>
                    <!-- End Shopping Cart -->

                    <!-- Nav Menu -->
                    <ul class="nav navbar-nav">
                        <!-- Pages -->
                        <li class="dropdown active">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                Pages
                            </a>
                            <ul class="dropdown-menu">
                                
                            </ul>
                        </li>
                        <!-- End Pages -->

                        <!-- Promotion -->
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                Promotion
                            </a>
                            <ul class="dropdown-menu">
                                
                            </ul>
                        </li>
                        <!-- End Promotion -->

                      
                      </ul>
                    <!-- End Nav Menu -->
                </div>
            </div>    
        </div>            
        <!-- End Navbar -->
    </div>
    <!--=== End Header v5 ===-->

    <!--=== Breadcrumbs v4 ===-->
    <div class="breadcrumbs-v4">
        <div class="container">
            <span class="page-name">Venue Filter Page</span>
            <h1>Welcome <span >To</span> Go4Venue</h1>
            <ul class="breadcrumb-v4-in">
                <li><a href="index.html">Home</a></li>
                <li><a href="">Venues</a></li>
                <li class="active">Venue Filter Page</li>
            </ul>
        </div><!--/end container-->
    </div> 
    <!--=== End Breadcrumbs v4 ===-->

    <!--=== Content Part ===-->
    <div class="content container">
        <div class="row">
            <div class="col-md-3 filter-by-block md-margin-bottom-60">
                <h1>Filter By</h1>
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                    Location
                                    <i class="fa fa-angle-down"></i>
                                </a>
                            </h2>
                        </div>
                        <div id="collapseOne" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <ul class="list-unstyled checkbox-list">
                                    <li>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox" checked />
                                            <i></i>
                                            New Delhi
                                            <small><a href="#">(23)</a></small>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox" checked />
                                            <i></i>
                                            Gurgaon
                                            <small><a href="#">(4)</a></small>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox" />
                                            <i></i>
                                            Noida
                                            <small><a href="#">(11)</a></small>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox" />
                                            <i></i>
                                            Ghaziabad
                                            <small><a href="#">(3)</a></small>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox" />
                                            <i></i>
                                            Jaipur
                                            <small><a href="#">(87)</a></small>
                                        </label>
                                    </li>
                                </ul>        
                            </div>
                        </div>
                    </div>
                </div><!--/end panel group-->

                <div class="panel-group" id="accordion-v2">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion-v2" href="#collapseTwo">
                                    Event Type
                                    <i class="fa fa-angle-down"></i>
                                </a>
                            </h2>
                        </div>
                        <div id="collapseTwo" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <ul class="list-unstyled checkbox-list">
                                    <li>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox" checked />
                                            <i></i>
                                            Wedding
                                            <small><a href="#">(23)</a></small>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox" checked />
                                            <i></i>
                                            Corporate Meeting
                                            <small><a href="#">(4)</a></small>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox" />
                                            <i></i>
                                            Birthday Party
                                            <small><a href="#">(11)</a></small>
                                        </label>
                                    </li>
                                </ul>        
                            </div>
                        </div>
                    </div>
                </div><!--/end panel group-->

                <div class="panel-group" id="accordion-v3">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion-v3" href="#collapseThree">
                                    Venue Type
                                    <i class="fa fa-angle-down"></i>
                                </a>
                            </h2>
                        </div>
                        <div id="collapseThree" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <ul class="list-unstyled checkbox-list">
                                    <li>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox" />
                                            <i></i>
                                            Hotels
                                            <small><a href="#">(23)</a></small>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox" checked />
                                            <i></i>
                                            Banquet Halls
                                            <small><a href="#">(4)</a></small>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox" />
                                            <i></i>
                                            Restuarants
                                            <small><a href="#">(11)</a></small>
                                        </label>
                                    </li>
                                    <li>
                                        <label class="checkbox">
                                            <input type="checkbox" name="checkbox" />
                                            <i></i>
                                            Ball Room
                                            <small><a href="#">(3)</a></small>
                                        </label>
                                    </li>
                                </ul>        
                            </div>
                        </div>
                    </div>
                </div><!--/end panel group-->

                <div class="panel-group" id="accordion-v4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion-v4" href="#collapseFour">
                                    Capacity
                                    <i class="fa fa-angle-down"></i>
                                </a>
                            </h2>
                        </div>
                        <div id="collapseFour" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <div class="slider-snap"></div>
                                <p class="slider-snap-text">
                                    <span class="slider-snap-value-lower"></span>
                                    <span class="slider-snap-value-upper"></span>
                                </p>    
                            </div>
                        </div>
                    </div>
                </div><!--/end panel group-->

                <div class="panel-group" id="accordion-v5">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion-v5" href="#collapseFive">
                                    Amenities
                                    <i class="fa fa-angle-down"></i>
                                </a>
                            </h2>
                        </div>
                        <div id="collapseFive" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <ul class="list-unstyled checkbox-lis">
                                    <li><input type="checkbox" name="checkbox" checked />
                                            <i class="fa fa-car"></i> Parking</li>
                                    <li><input type="checkbox" name="checkbox" checked />
                                            <i class="fa fa-glass"></i> Alcohol</li>
                                    <li><input type="checkbox" name="checkbox" checked />
                                            <i class="fa fa-wifi"></i> Wi-Fi</li>
                                    <li><input type="checkbox" name="checkbox" checked />
                                            <i class="fa fa-bolt"></i> Power Backup</li>
                                    <li><input type="checkbox" name="checkbox" checked />
                                            <i class="fa  fa-headphones"></i> DJ-Music</li>
                                    <li><input type="checkbox" name="checkbox" checked />
                                            <i class="fa fa-microphone"></i> PA Systems</li>
                                    <li><input type="checkbox" name="checkbox" checked />
                                            <i class="fa fa-video-camera"></i> Projector</li>
                                    <li><input type="checkbox" name="checkbox" checked />
                                            <i class="fa fa-lock"></i> Safety Room</li>
                                    
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </div><!--/end panel group-->

                <div class="panel-group margin-bottom-30" id="accordion-v6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="panel-title">
                                <a data-toggle="collapse" data-parent="#accordion-v6" href="#collapseSix">
                                    Rating
                                    <i class="fa fa-angle-down"></i>
                                </a>
                            </h2>
                        </div>
                        <div id="collapseSix" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <div class="stars-ratings stars-ratings-label">
                                    <input type="radio" name="stars-rating" id="stars-rating-5">
                                    <label for="stars-rating-5"><i class="fa fa-star"></i></label>
                                    <input type="radio" name="stars-rating" id="stars-rating-4">
                                    <label for="stars-rating-4"><i class="fa fa-star"></i></label>
                                    <input type="radio" name="stars-rating" id="stars-rating-3">
                                    <label for="stars-rating-3"><i class="fa fa-star"></i></label>
                                    <input type="radio" name="stars-rating" id="stars-rating-2">
                                    <label for="stars-rating-2"><i class="fa fa-star"></i></label>
                                    <input type="radio" name="stars-rating" id="stars-rating-1">
                                    <label for="stars-rating-1"><i class="fa fa-star"></i></label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/end panel group-->
                <button type="button" class="btn-u btn-brd btn-brd-hover btn-u-lg btn-u-sea-shop btn-block">Reset</button>
            </div>

            <div class="col-md-9">
                <div class="row margin-bottom-5">
                    <div class="col-sm-4 result-category">
                        <h2>Venue</h2>
                        <small class="shop-bg-red badge-results">45 Results</small>
                    </div>
                    <div class="col-sm-8">
                        <ul class="list-inline clear-both">
                            <li class="grid-list-icons">
                                <a href="shop-ui-filter-list.html"><i class="fa fa-th-list"></i></a>
                                <a href="shop-ui-filter-grid.html"><i class="fa fa-th"></i></a>
                            </li>
                            <li class="sort-list-btn">
                                <h3>Sort By :</h3>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                        Price <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Capacity</a></li>
                                        <li><a href="#">Price</a></li>
                                        
                                    </ul>
                                </div>
                            </li>
                            <li class="sort-list-btn">
                                <h3>Show :</h3>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                        20 <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">All</a></li>
                                        <li><a href="#">10</a></li>
                                        <li><a href="#">5</a></li>
                                        <li><a href="#">3</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </div>    
                </div><!--/end result category-->

                <div class="filter-results">
                <c:forEach var="venueData" items="${venueList}">
                    
                
                    <div class="list-product-description product-description-brd margin-bottom-30">
                        <div class="row">
                            <div class="col-sm-4">
                                <a href="shop-ui-inner.html"><img class="img-responsive sm-margin-bottom-20" src="resources/assets/img/venue_images/venue-1.jpg" alt=""></a>
                            </div> 
                            <div class="col-sm-8 product-description">
                                <div class="overflow-h margin-bottom-5">
                                    <ul class="list-inline overflow-h">
                                        <li><h4 class="title-price"><a href="shop-ui-inner.html">Venue1</a></h4></li>
                                        <li><span class="gender text-uppercase">${venueData.venueName}</span></li>
                                        <li class="pull-right">
                                            <ul class="list-inline product-ratings">
                                                <li><i class="rating-selected fa fa-star"></i></li>
                                                <li><i class="rating-selected fa fa-star"></i></li>
                                                <li><i class="rating-selected fa fa-star"></i></li>
                                                <li><i class="rating fa fa-star"></i></li>
                                                <li><i class="rating fa fa-star"></i></li>
                                            </ul>
                                        </li>
                                    </ul>    
                                    <div class="margin-bottom-10">
                                        <span class="title-price margin-right-10">$60.00</span>
                                        <span class="title-price line-through">$95.00</span>
                                    </div>    
                                    <p class="margin-bottom-20">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sollicitudin erat nec ornarevolu tpat. Etiam ut felis nec nisl eleifend lobortis. Aenean nibh est, hendrerit non conva.</p>
                                    <ul class="list-inline add-to-wishlist margin-bottom-20">
                                        <li class="wishlist-in">
                                            <i class="fa fa-heart"></i>
                                            <a href="#">Add To Shortlist</a>
                                        </li>
                                        <li class="compare-in">
                                            <i class="fa fa-exchange"></i>
                                            <a href="#">Add to Compare</a>
                                        </li>
                                    </ul>
                                    <button type="button" class="btn-u btn-u-sea-shop">Add to Cart</button>
                                </div>    
                            </div>
                        </div>
                    </div>    

                   </c:forEach>


                </div><!--/end filter resilts-->

                <div class="text-center">
                    <ul class="pagination pagination-v2">
                        <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                        <li><a href="#">1</a></li>
                        <li class="active"><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                    </ul>                                                            
                </div><!--/end pagination-->
            </div>
        </div><!--/end row-->
    </div><!--/end container-->    
    <!--=== End Content Part ===-->

    <!--=== Shop Suvbscribe ===-->
    <div class="shop-subscribe">
        <div class="container">
            <div class="row">
                <div class="col-md-8 md-margin-bottom-20">
                    <h2>subscribe to our weekly <strong>newsletter</strong></h2>
                </div>  
                <div class="col-md-4">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Email your email...">
                        <span class="input-group-btn">
                            <button class="btn" type="button"><i class="fa fa-envelope-o"></i></button>
                        </span>
                    </div>    
                </div>
            </div>
        </div><!--/end container-->
    </div>
    <!--=== End Shop Suvbscribe ===-->

    <!--=== Footer v4 ===-->
    <div class="footer-v4">
        <div class="footer">
            <div class="container">
                </div><!--/end continer-->
        </div><!--/footer-->

        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">                     
                        <p>
                            2015 &copy; Go4Venue. ALL Rights Reserved. 
                         <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
                        </p>
                    </div>
                    <div class="col-md-6">  
                        <ul class="list-inline sponsors-icons pull-right">
                            <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div> 
        </div><!--/copyright--> 
    </div>
    <!--=== End Footer v4 ===-->
</div><!--/wrapper-->

<!-- JS Global Compulsory -->           
<script src="resources/assets/plugins/jquery/jquery.min.js"></script>
<script src="resources/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script src="resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script src="resources/assets/plugins/back-to-top.js"></script>
<script src="resources/assets/plugins/smoothScroll.js"></script>
<script src="resources/assets/plugins/noUiSlider/jquery.nouislider.all.min.js"></script>
<script src="resources/assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- JS Customization -->
<script src="resources/assets/js/custom.js"></script>
<!-- JS Page Level -->           
<script src="resources/assets/js/shop.app.js"></script>
<script src="resources/assets/js/plugins/mouse-wheel.js"></script>
<script>
    jQuery(document).ready(function() {
        App.init();
        App.initScrollBar();        
        MouseWheel.initMouseWheel();     
    });
</script>
<!--[if lt IE 9]>
    <script src="resources/assets/plugins/respond.js"></script>
    <script src="resources/assets/plugins/html5shiv.js"></script>
    <script src="resources/assets/js/plugins/placeholder-IE-fixes.js"></script>    
<![endif]-->
<!--[if lt IE 10]>
    <script src="resources/assets/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->

</body>
</html> 