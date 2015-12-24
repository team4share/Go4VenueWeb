<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" ng-app="venueListing">
<!--<![endif]-->
<head>
<title>${title}</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="" href="">

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
    <link rel="stylesheet" href="resources/assets/css/venue_list_custom.css">
    
    <script>
		var venues = '${venueList}';
		var amenities = '${amenities}';
		var venueTypes = '${venueTypes}';
		var cities = '${cities}';
		var occasions = '${occasions}';
		
		
		function getVenues() {
			return JSON.parse(venues);
		}
		function getAmenities() {
			return JSON.parse(amenities);
		}
		function getVenueTypes() {
			return JSON.parse(venueTypes);
		}
		function getOccasions() {
			return JSON.parse(occasions);
		}
		function getCities() {
			return JSON.parse(cities);
		}
	</script>
		
		
		
		
		<script
			src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
		<script
			src="resources/work/scripts/controllers/VenueListingController.js"></script>
    
    
</head> 

<body class="header-fixed">
<div class="wrapper" ng-controller="VenueListingController">
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
                                <a class="fa  fa-envelope "></a> <a href="mailto:support@go4venue.com">support@go4venue.com</a>
                                
                            </li>   
                       
                            <li>
                               <a class="fa fa-phone-square "></a><a> +70 396 4587 99</a>  </li>
                             </ul><!--/end left-topbar-->
                    </div>
                    <div class="col-sm-6">
                        <ul class="list-inline right-topbar pull-right">
                            <li> <a class="fa  fa-rupee"></a><a href="#"> Get Quote</a></li>
                            <li><a href="shop-ui-add-to-cart.html">Wishlist (0)</a></li>
                            <li><a href="login">Login</a> | <a href="register">Register</a></li>
                           
                        </ul>
                    </div>
                </div>
            </div><!--/container-->
        </div>
        <!-- End Topbar v3 -->

        <!-- Navbar -->
               <!-- End Navbar -->
    </div>
    <!--=== End Header v5 ===-->

    <!--=== Breadcrumbs v4 ===-->
    <div class="breadcrumbs-v4">
        <div class="container">
            <span class="page-name"></span>
            <h1>Let's <span >Go 4</span> Venue !!</h1>
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
				<div id="spinnerModal" class="modal fade"   >
					<div id="spinnerPage" class="spinner-page"  >
						<img id="img-spinner" src="resources/work/images/spinner.gif" alt="Loading" style="margin-left:50%; margin-top:15%"/>
					</div>
				</div>	
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
                            <div class="panel-body"><label> Select City</label><br>
                              <div>
                                
                               
                              <!--   <select class="input--select citySelect" ng-model = "selectedCity">
                                 <option  ng-repeat="city in cities"  value="{{city.id}}">{{city.name}} </option>
								</select> -->
                             
                             
                         <!--  <select  class="input--select citySelect" ng-model="selectedCity">
    						<option ng-repeat="city in cities" value="{{city.id}}">{{city.name}}</option>
						  </select>
						  <br/> -->
						  
						  <select  class="input--select citySelect" ng-model="selectedCity" ng-change="getLocalities()" ng-options="city.name for city in cities">
						  </select>
  			

                             
                             
                    
                                  </div>
                                <br>
                                <div class="locality">
                                <label> Choose Locality</label>
                                <ul class="list-unstyled checkbox-list">
                            
                                     <li>
                                   		<label class="checkbox"
											ng-repeat="locality in localities"> 
											<input id=locality_{{$index}} type="checkBox" ng-true-value="{{value}}" 
											ng-false-value="UNCHECKED" ng-click="getSelectedOptionsForLocality()" /> <i></i>
												{{locality.name}}
										</label>
									</li>
                                </ul>  
                                    </div>
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
                                   		<label class="checkbox"
											ng-repeat="occasion in occasions"> 
											<input id=occasion_{{$index}} type="checkBox" ng-true-value="{{value}}" 
											ng-false-value="UNCHECKED" ng-click="getSelectedOptionsForOccasions()"/> <i></i>
												{{occasion.name}}
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
                                    <li><label class="checkbox"
											ng-repeat="venueType in venueTypes"> <input
												type="checkbox" name="checkbox" /> <i></i>
												{{venueType.type}} <!-- <small><a href="#">(23)</a></small> -->
										</label></li>
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
                                    <li ng-repeat="amenity in amenities"><input
											type="checkbox" name="checkbox" id=amenity_{{$index}} ng-click="getSelectedOptionsForAmenities()"/> <i
											ng-class="amenity.css"></i> {{amenity.name}}</li>
                                    
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
                    <div class="col-sm-4 result-category">Found {{filteredNumber}} Venues</small></h1>         
                    </div>
                    <div class="col-sm-8">
                        <ul class="list-inline clear-both">
                          
                            <li class="sort-list-btn">
                                <h3>Sort By :</h3>
                               <!--  <div class="btn-group">
                                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                        Price <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Capacity</a></li>
                                        <li><a href="#">Price</a></li>
                                        
                                    </ul>
                                </div> -->
                                <select  ng-model="orderProp" >
								  <option value="venuePrice">Price</option>
								  <option value="venueCapacity">Capacity</option>
								</select>
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
                    <div ng-repeat="venueData in venues | filter : applyFilter() | orderBy:orderProp">
                    
                    	 <div class="list-product-description product-description-brd margin-bottom-30">
                        <div class="row">
                            <div class="col-sm-4">
                                <a href="venue_description.html"><img class="img-responsive sm-margin-bottom-20" src="../assets/img/venue_images/venue-1.jpg" alt=""></a>
                            </div> 
                            <div class="col-sm-8 product-description">
                                <div class="overflow-h margin-bottom-5">
                                    <ul class="list-inline overflow-h">
                                        <li><h4 class="title-price"><a href="venue_description.html">Vivanta by Taj Group |</a></h4></li>
                                        <li><span class="gender text-lowercase"><i class="fa fa-map-marker font-purple">&nbsp; &nbsp;</i>Jodhpur Vila Near Airport</span></li>
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
                                        <span class="title-price margin-right-10"><i class="fa fa-rupee"></i> 600.00  per pax</span>
                                        <span class="title-price margin-right-10"><i class="fa fa-users font-purple" ></i>  1000 people</span>
                                    </div>    
                                    <p class="margin-bottom-20">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sollicitudin erat nec ornarevolu tpat. Etiam ut felis nec nisl eleifend lobortis. Aenean nibh est, hendrerit non conva.</p>
                                    <ul class="list-inline add-to-wishlist margin-bottom-20">
                                        
                                       <i class="fa fa-cutlery"></i> <i class="fa fa-glass"></i><i class="fa fa-headphones"></i><i class="fa fa-bank"></i><i class="fa fa-car"></i><i class="fa fa-bolt"></i><i class="fa fa-wifi"></i><i class="fa fa-microphone"></i><i class="fa fa-video-camera"></i><i class="fa fa-lock"></i>
                                    </ul>

                                    <ul class="list-inline add-to-wishlist margin-bottom-20">
                                        
                                        
                                        <li class="wishlist-in">
                                            <i class="fa fa-heart"></i>
                                            <a href="#">Add To Shortlist</a>
                                        </li>
                                        <li class="compare-in">
                                            <i class="fa fa-exchange"></i>
                                            <a href="#">Add to Compare</a>
                                        </li>
                                        <li class="compare-in">
                                            <i class="fa fa-calendar"></i>
                                            <a href="#">Check Availability</a>
                                        </li>
                                    </ul>
                                   </div>    
                            </div>
                        </div>
                    </div>    
                    	
                    
							<div
								class="list-product-description product-description-brd margin-bottom-30">
								<div class="row">
									<div class="col-sm-4">
										<a href="shop-ui-inner.html"><img
											class="img-responsive sm-margin-bottom-20"
											src="resources/assets/img/venue_images/venue-1.jpg" alt=""></a>
									</div>
									<div class="col-sm-8 product-description">
										<div class="overflow-h margin-bottom-5">
											<ul class="list-inline overflow-h">
												<li><h4 class="title-price">
														<a href="getVenueDescription">{{venueData.venueName}}</a>
													</h4></li>
												<li><span class="gender text-uppercase"></span></li>
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
		                                        <span class="title-price margin-right-10"><i class="fa fa-rupee"></i> {{venueData.venuePrice}}  per pax</span>
		                                        <span class="title-price margin-right-10"><i class="fa fa-users font-purple" ></i> {{venueData.venueCapacity}}</span>
		                                    </div>    
		                                    
                                   			<span ng-repeat="venueAmenity in venueData.array ">{{venueAmenity}}</span>
											<p class="margin-bottom-20">{{venueData.venueDescription}}</p>
											<ul class="list-inline add-to-wishlist margin-bottom-20">
												<li class="wishlist-in"><i class="fa fa-heart"></i> <a
													href="#">Add To Shortlist</a></li>
												<li class="compare-in"><i class="fa fa-exchange"></i> <a
													href="#">Add to Compare</a></li>
												<li class="compare-in">
                                            <i class="fa fa-calendar"></i>
                                            <a href="#">Check Availability</a>
                                        </li>
												
											</ul>
											</div>
									</div>
								</div>
                    </div>
                </div><!--/end filter resilts-->

              <div class="pagination pagination-v2">
					<ul class="pagination">
						<li ng-class="DisablePrevPage()"><a href
							ng-click="prevPage()">&laquo; Prev</a></li>
						<li ng-repeat="n in range()"
							ng-class="{active: n == currentPage}" ng-click="setPage(n)">
							<a href="#">{{n+1}}</a>
						</li>
						<li ng-class="DisableNextPage()">
							<a href ng-click="nextPage()">Next &raquo;</a>
						</li>
					</ul>
				</div>
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