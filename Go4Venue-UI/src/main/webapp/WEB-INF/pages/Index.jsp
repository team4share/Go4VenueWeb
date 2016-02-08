<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" ng-app="app">
<!--<![endif]-->
<head>
<title>${title}</title>

<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicon -->
<link rel="shortcut icon">

<!-- Web Fonts -->
<link rel='stylesheet' type='text/css'
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

<!-- CSS Global Compulsory -->
<link rel="stylesheet"
	href="resources/assets/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/assets/css/style.css">

<!-- CSS Header and Footer -->
<link rel="stylesheet" href="resources/assets/css/headers/header-v2.css">
<link rel="stylesheet" href="resources/assets/css/footers/footer-v1.css">

<!-- CSS Corousel -->
<link rel="stylesheet" href="resources/assets/plugins/fancybox/source/jquery.fancybox.css">
<link rel="stylesheet" href="resources/assets/plugins/owl-carousel/owl-carousel/owl.carousel.css">
<!-- CSS Implementing Plugins -->
<link rel="stylesheet" href="resources/assets/plugins/animate.css">
<link rel="stylesheet"
	href="resources/assets/plugins/line-icons/line-icons.css">
<link rel="stylesheet"
	href="resources/assets/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
    
<link rel="stylesheet" href="resources/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">

<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
<script src="resources/work/scripts/controllers/SearchController.js"></script>
<!-- CSS Customization -->
<link rel="stylesheet" href="resources/assets/css/custom.css">
</head>

<body class="header-fixed">
    
    
    <!-- Popup Form For Get Quote-->
    <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Let Us Find The Best Offer For You</h4>
      </div>
        
      <div class="modal-body">
         
                       

                   <!-- Begin Content -->
                <!-- Tabs -->
                <div class="tab-v1">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#home-1" data-toggle="tab">Get Quote</a></li>
                        <li><a href="#profile-1" data-toggle="tab">Quick Call</a></li>
                        </ul>
                    <div class="tab-content">
                        <!-- Send Enquiry Forms -->
                        <div class="tab-pane fade in active" id="home-1">
                            <form action="#" id="sky-form" class="sky-form">
                                <header>Please Provide Your Event Details.</header>

                                <fieldset>
                                    
                                    <div class="row">
                                        
                                        <section class="col col-6">
                                            <label class="label">Select Event</label>
                                <label class="select">
                                    <select name="event" placeholder="">
                                        <option value="none" selected disabled>I am hosting</option>
                                        <option value="Wedding">Wedding</option>
                                        <option value="Engagement">Engagement</option>
                                        <option value="Reception">Reception</option>
                                        <option value="Birthday">Birthday</option>
                                        
                                    </select>
                                    <i></i>
                                </label>
                            </section>
                                         
                           <section class="col col-6">
                               <label class="label">Select Event Date</label>
                                            <label class="input">
                                                <i class="icon-append fa fa-calendar"></i>
                                                <input type="text" name="event_date" id="finish" placeholder="Event date">
                                            </label>
                                        </section>
                                    </div>

                                  
                                    <div class="row">
                                        <section class="col col-6">
                                              <label class="label">No.Of Guests</label>
                                            <label class="input">
                                                <i class="icon-append fa fa-users"></i>
                                                <input type="text" name="guest" id="guest" placeholder="No. Of Guests">
                                            </label>
                                        </section>
                                        <section class="col col-6">
                                            <label class="label">Enter Budget</label>
                                            <label class="input">
                                                <i class="icon-append fa fa-money"></i>
                                                <input type="text" name="Budget" id="Budget" placeholder="Budget">
                                            </label>
                                        </section>
                                    </div>
                                    
                                    <div class="row">
                                        
                                        
                                        <section class="col col-6">
                                            <label class="label">Preffered Location</label>
                                <label class="select">
                                    <select name="event" placeholder="" >
                                        <option value="Mansarovar" selected disabled>Mansarovar</option>
                                        <option value="New Sanganer Road">New Sanganer Road</option>
                                        <option value="New Sanganer Road">Sodala</option>
                                        <option value="Malviya Nagar">Malviya Nagar</option>
                                        <option value="Bani Park">Bani Park</option>
                                        
                                    </select>
                                    <i></i>
                                </label>
                            </section>
                                         
                           <section class="col col-6">
                               <label class="label">Enter Name</label>
                                            <label class="input">
                                                <i class="icon-append fa fa-user"></i>
                                                <input type="text" name="name" id="finish" placeholder="Contact Name">
                                            </label>
                                        </section>
                                    </div>
                                    
                                    <div class="row">
                                        <section class="col col-6">
                                              <label class="label">Enter Mobile Number</label>
                                            <label class="input">
                                                <i class="icon-append fa fa-phone-square"></i>
                                                <input type="text" name="contac_number" id="guest" placeholder="Contact Number">
                                            </label>
                                        </section>
                                        <section class="col col-6">
                                            <label class="label">Enter Email</label>
                                            <label class="input">
                                                <i class="icon-append fa fa-envelope"></i>
                                                <input type="text" name="email" id="email" placeholder="Email-ID">
                                            </label>
                                        </section>
                                    </div>
                                    
                                </fieldset>
                                <footer>
                                    <button type="submit" class="btn-u ">Submit</button>
                                    
                                </footer>
                            </form>
                        </div>
                        <!-- End Datepicker Forms -->

                        <!-- Validation Forms -->
                        <div class="tab-pane fade" id="profile-1">
                            <form action="#" id="sky-form1" class="sky-form">
                                <header>Please Enter Contact Details</header>

                                <fieldset>
                                    <div class="row">
                                        <section class="col col-6">
                                            <label class="label">Enter Name</label>
                                            <label class="input">
                                                <i class="icon-append fa fa-user"></i>
                                                <input type="text" name="required">
                                            </label>
                                        </section>
                                        <section class="col col-6">
                                            <label class="label">Enter Contact Number</label>
                                            <label class="input">
                                                <i class="icon-append fa fa-phone"></i>
                                                <input type="text" name="contact">
                                            </label>
                                        </section>
                                    </div>
                                          
                                </fieldset>

                                <footer>
                                    <button type="submit" class="btn-u ">Submit</button>
                                    </footer>
                            </form>
                        </div>
                        <!-- End Validation Forms -->

                    </div>
                </div>
                <!-- End Tabs-->
      
            <!-- End Content -->

                        

                        
                   
                <!-- End  Form -->

        
      </div>
     
    </div>

  </div>
</div>
<!--End popup Form For Get Quote-->
<div class="wrapper">
    <!--=== Header v2 ===-->
    <div class="header-v2 header-sticky">
        <div class="container container-space">
            <!-- Topbar v2 -->
            <div class="topbar-v2">
                <div class="row">
                    <div class="col-sm-8">
                        <ul class="list-inline top-v2-contacts">
                            <li><i class="fa  fa-envelope "></i> <a href="mailto:support@go4venue.com">support@go4venue.com</a></li>
                            <li><i class="fa fa-phone-square "></i> +70 396 4587 99</li>
                          <li>
                                <div class="language-bar">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        <span class="heading"><i class="fa  fa-map-marker "></i> Jaipur</span>
                                    </a>
                                    <ul class="languages-dropdown" role="menu">
                                        <li class="active">
                                            <a href="#">Jaipur</a>
                                        </li>
                                        <li><a href="#">Delhi</a></li>
                                    </ul>
                                </div>
                            </li>


							</ul>
						</div>
						<div class="col-sm-4">
							<div class="topbar-buttons pull-right">
								<!-- 
								<a href="login"
									class="btn-u btn-brd btn-brd-hover btn-u-light margin-right-5">Sign
									In</a> <a href="register"
									class="btn-u btn-brd btn-brd-hover btn-u-light">Sign Up</a>
									-->
									
							</div>
						</div>
					</div>
				</div>
				<!-- End Topbar v2 -->
			</div>

			<!-- Navbar -->
			<div class="navbar navbar-default mega-menu" role="navigation">
				<div class="container container-space">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">

						<a class="navbar-brand brand-style" href="index.html"> <img
							id="logo-header" src="resources/assets/img/go.png" alt="Logo">
						</a>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-responsive-collapse">
						<ul class="nav navbar-nav">
							<!-- Home -->
							
							<!-- End Home -->

                        <!-- Pages -->
                         <li class="">
                            
                      
                        
                            <a href="javascript:void(0);"  class="btn-u btn-brd btn-brd-hover btn-u-light" data-toggle="modal" data-target="#myModal">Get Quote</a>
            

                      
                           
                        </li>
                        <!-- End Pages -->

                        <!-- Blog -->
                        <li class="">
                            &nbsp; &nbsp;
                            </li>
                        
                        <!-- End Blog -->

                        <!-- Portfolio -->
                       <li class="">
                            
                      
                        
                            <a href="javascript:void(0);"  class="btn-u btn-brd btn-brd-hover btn-u-light" >List Your Venue</a>
            

                      
                           
                        </li>
                        <!-- End Portfolio -->
 <!--  <li class="">
 <!--  <li class="">
                            
                      
                        
                            <a href="javascript:void(0);"  class="btn-u btn-brd btn-brd-hover btn-u-light" >List Your Venue</a>
            

                      
                           
                        </li>
                     -->   <!-- End Portfolio -->

                       
                        <!-- End Misc Pages -->
                    </ul>
                </div><!--/navbar-collapse-->
            </div>
        </div>
        <!-- End Navbar -->
    </div>
    <!--=== End Header v2 ===-->

		<!-- Image Gradient Go4Venue -->


		<div class="interactive-slider-v2">
			<div class="container" ng-controller="SearchController">
				<h1>Get Set Go!!!</h1>

				<br>
  
            <br><div class="col-md-6 col-md-offset-3">
            <div class="input-group">
                    <input type="text" class="form-control" placeholder="I am looking for the venue...">
                    <span class="input-group-btn">
                        <button class="btn-u-search-Center" type="button"><i class="fa fa-search"></i></button>
                    </span>
                </div>
            </div>
			
			<div class="topbar-buttons Search-background">
					<form action="listVenues" id="searchVenue" name="venueSearchForm"
						method="post" modelAttribute="venueSearchInfo">

						<select class="btn-u btn-brd btn-brd-hover btn-u-light"
							name="occasionId">
							<option value="" disabled selected>Select Event</option>
							<c:forEach var="occasion" items="${occasions}">
								<option value="${occasion.key}">${occasion.name}</option>
							</c:forEach>
						</select> <Select class="btn-u btn-brd btn-brd-hover btn-u-light"
							name="locationId"><option value="" disabled selected>Choose Location</option>
							<c:forEach var="city" items="${cities}">
								<option value="${city.key}">${city.name}</option>
							</c:forEach>
						</Select>
						<Select class="btn-u btn-brd btn-brd-hover btn-u-light"
							name="capacity">
							<option value="" disabled selected>No. Of People</option>
								<option>50-100</option>
								<option>100-500</option>
								<option>500-1000</option>
								<option>1000-1500</option>
							
						</Select>
						
						<button type="submit"
							class=" glyphicon glyphicon-search .btn-u-search.btn-brd-search btn-u btn-brd btn-brd-hover btn-u-light">
							Search</button>


					</form>
				</div>
			</div>
		</div>
		<!-- End Image Gradient -->

		<!--=== Content Part ===-->
		<div class="container content-sm" id="how_it_works">
			<!-- Service Blocks -->
			<div class="row margin-bottom-30">
				<div class="col-md-4">
					<div class="service">
						<i class="fa fa-globe service-icon"></i>
						<div class="desc">
							<h4>Browse</h4>
							<p>Browse From The Wide Range Of Venues Available</p>
						</div>
					</div>
				</div>

				<div class="col-md-4">
					<div class="service">
						<i class="fa fa-hand-o-up service-icon"></i>
						<div class="desc">
							<h4>Select &amp; Get Qoutes</h4>
							<p>Select The Venues As Per Your Requirement, Grab The Best
								Deal</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="service">
						<i class="fa fa-desktop service-icon"></i>
						<div class="desc">
							<h4>Book Online</h4>
							<p>Be The First To Book Venue Of Your Choice</p>
						</div>
					</div>
				</div>
			</div>
			<!-- End Service Blokcs -->

			<!-- Recent Works -->
			<div class="headline">
				<h2>Book The Event</h2>
			</div>
			<div class="row margin-bottom-20">
				<div class="col-md-3 col-sm-6">
					<div class="thumbnails thumbnail-style thumbnail-kenburn">
						<div class="thumbnail-img">
							<div class="overflow-hidden">
								<img class="img-responsive"
									src="resources/assets/img/main//wedding.jpg" alt="">
							</div>
							<a class="btn-more hover-effect" href="#">read more +</a>
						</div>
						<div class="caption">
							<h3>
								<a class="hover-effect" href="#">Wedding party</a>
							</h3>
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="thumbnails thumbnail-style thumbnail-kenburn">
						<div class="thumbnail-img">
							<div class="overflow-hidden">
								<img class="img-responsive"
									src="resources/assets/img/main/coktail.jpg" alt="">
							</div>
							<a class="btn-more hover-effect" href="#">read more +</a>
						</div>
						<div class="caption">
							<h3>
								<a class="hover-effect" href="#">Cocktail Party</a>
							</h3>
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="thumbnails thumbnail-style thumbnail-kenburn">
						<div class="thumbnail-img">
							<div class="overflow-hidden">
								<img class="img-responsive"
									src="resources/assets/img/main/conf.jpg" alt="">
							</div>
							<a class="btn-more hover-effect" href="#">read more +</a>
						</div>
						<div class="caption">
							<h3>
								<a class="hover-effect" href="#">Corporate Conference</a>
							</h3>
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="thumbnails thumbnail-style thumbnail-kenburn">
						<div class="thumbnail-img">
							<div class="overflow-hidden">
								<img class="img-responsive"
									src="resources/assets/img/main/birthday.jpg" alt="">
							</div>
							<a class="btn-more hover-effect" href="#">read more +</a>
						</div>
						<div class="caption">
							<h3>
								<a class="hover-effect" href="#">Birthday Party</a>
							</h3>
							<p></p>
						</div>
					</div>
				</div>
			</div>
			<!-- End Recent Works -->

			<!-- Info Blokcs -->
			<div class="row margin-bottom-5">
				<!-- Welcome Block -->
				<div class="col-md-8 md-margin-bottom-5">
					<div class="headline">
						<h2>Why Choose Us ?</h2>
					</div>
					<div class="row">
						<div class="col-sm-4">
							<img class="img-responsive margin-bottom-20"
								src="resources/assets/img/main/How_we_work.jpg" alt="">
						</div>
						<div class="col-sm-8">
							<p>There are ample reasons to choose Go4Venue. Let us write
								few of them!</p>
							<ul class="list-unstyled margin-bottom-20">
								<li><i class="fa fa-check color-green"></i> Easy Venue
									Searching</li>
								<li><i class="fa fa-check color-green"></i> Hassle Free
									Bookings</li>
								<li><i class="fa fa-check color-green"></i> Compare Venues
									and Choose Best</li>
								<li><i class="fa fa-check color-green"></i> Get Quoutes
									From Mutliple Venues</li>
								<li><i class="fa fa-check color-green"></i> Lowest Cost
									Gauranteed</li>

							</ul>
						</div>
					</div>

					<blockquote class="hero-unify">
						<p>" Because we believe that you don't host events, you host
							Memories!"</p>

					</blockquote>
				</div>
				<!--/col-md-8-->

				<!-- Featured Venues -->
				<div class="col-md-4">
					<div class="headline">
						<h2>Featured Venues</h2>
					</div>
					<div id="myCarousel" class="carousel slide carousel-v1">
						<div class="carousel-inner">
							<div class="item active">
								<img src="resources/assets/img/main/dec3.jpg" alt="">
								<div class="carousel-caption">
									<p>The Royal Destination Wedding.</p>
								</div>
							</div>
							<div class="item">
								<img src="resources/assets/img/main/dec1.jpg" alt="">
								<div class="carousel-caption">
									<p>Gala Dinner Court</p>
								</div>
							</div>
							<div class="item">
								<img src="resources/assets/img/main/dec4.jpg" alt="">
								<div class="carousel-caption">
									<p>Cocktail Courtyard</p>
								</div>
							</div>
						</div>

						<div class="carousel-arrow">
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev"> <i class="fa fa-angle-left"></i>
							</a> <a class="right carousel-control" href="#myCarousel"
								data-slide="next"> <i class="fa fa-angle-right"></i>
							</a>
						</div>
					</div>
				</div>
				<!--/col-md-4-->
			</div>
			<!-- End Info Blokcs -->

			<!-- Owl Clients v1 -->

			<!-- End Owl Clients v1 -->
		</div>
		<!--/container-->
		<!-- End Content Part -->

		<!--=== Footer Version 1 ===-->
		<div class="footer-v1">
			<div class="footer">
				<div class="container">
					<div class="row">
						<!-- About -->
						<div class="col-md-3 md-margin-bottom-40">
							<a href="index.html"><img id="logo-footer"
								class="footer-logo" src="resources/assets/img/go.png" alt=""></a>
							<p>Welcome to Go4Venue we provide a wonderful experince to
								make your event a memorable one</p>
							<p></p>
						</div>
						<!--/col-md-3-->
						<!-- End About -->

						<!-- Latest 
						<div class="col-md-3 md-margin-bottom-40">
							<div class="posts">
								<div class="headline">
									<h2>Latest Posts</h2>
								</div>
								<ul class="list-unstyled latest-list">
									<li><a href="#">Incredible content</a> <small>May
											8, 2014</small></li>
									<li><a href="#">Best shoots</a> <small>June 23,
											2014</small></li>
									<li><a href="#">New Terms and Conditions</a> <small>September
											15, 2014</small></li>
								</ul>
							</div>
						</div>-->
						<!--/col-md-3-->
						<!-- End Latest -->

						<!-- Link List -->
						<div class="col-md-3 md-margin-bottom-40">
							<div class="headline">
								<h2>Useful Links</h2>
							</div>
							<ul class="list-unstyled link-list">
								<li><a href="#">About us</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">Portfolio</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">GOBlog</a><i class="fa fa-angle-right"></i></li>
								<li><a href="#">Latest Assocations</a><i
									class="fa fa-angle-right"></i></li>
								<li><a href="#">Contact us</a><i class="fa fa-angle-right"></i></li>
							</ul>
						</div>
						<!--/col-md-3-->
						<!-- End Link List -->

						<!-- Address -->
						<div class="col-md-3 map-img md-margin-bottom-40">
							<div class="headline">
								<h2>Contact Us</h2>
							</div>
							<address class="md-margin-bottom-40">
								8,Sunshine Appartments <br /> Pune, India <br /> Phone: 800
								123 3456 <br /> Fax: 800 123 3456 <br /> Email: <a
									href="mailto:support@go4venue.com" class="">support@go4venue.com</a>
							</address>
						</div>
						<!--/col-md-3-->
						<!-- End Address -->
					</div>
				</div>
			</div>
			<!--/footer-->

			<div class="copyright">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<p>
								2016 &copy; All Rights Reserved. <a href="#">Privacy Policy</a>
								| <a href="#">Terms of Service</a>
							</p>
						</div>

						<!-- Social Links -->
						<div class="col-md-6">
							<ul class="footer-socials list-inline">
								<li><a href="#" class="tooltips" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="Facebook">
										<i class="fa fa-facebook"></i>
								</a></li>
								<li><a href="#" class="tooltips" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="Google Plus">
										<i class="fa fa-google-plus"></i>
								</a></li>
								<li><a href="#" class="tooltips" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="Twitter">
										<i class="fa fa-twitter"></i>
								</a></li>
									</ul>
						</div>
						<!-- End Social Links -->
					</div>
				</div>
			</div>
			<!--/copyright-->
		</div>
		<!--=== End Footer Version 1 ===-->
	</div>
	<!--/wrapper-->

	<!-- JS Global Compulsory -->
	<script type="text/javascript"
		src="resources/assets/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<!-- JS Implementing Plugins -->
	<script type="text/javascript"
		src="resources/assets/plugins/back-to-top.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/smoothScroll.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/parallax-slider/js/modernizr.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/parallax-slider/js/jquery.cslider.js"></script>
	<script type="text/javascript"
		src="resources/assets/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
	
	 <!-- JS For Enquiry Form-->
    <script src="resources/assets/plugins/sky-forms-pro/skyforms/js/jquery.maskedinput.min.js"></script>
<script src="resources/assets/plugins/sky-forms-pro/skyforms/js/jquery-ui.min.js"></script>
<script src="resources/assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>

		<!-- JS Page Level -->
	<script type="text/javascript" src="resources/assets/js/app.js"></script>
	<script type="text/javascript"
		src="resources/assets/js/plugins/owl-carousel.js"></script>
<script type="text/javascript" src="resources/assets/js/plugins/masking.js"></script>
<script type="text/javascript" src="resources/assets/js/plugins/datepicker.js"></script>
<script type="text/javascript" src="resources/assets/js/plugins/validation.js"></script>
<!-- JS Customization -->
	<script type="text/javascript" src="resources/assets/js/custom.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			App.init();
			OwlCarousel.initOwlCarousel();
Masking.initMasking();
        Datepicker.initDatepicker();
        Validation.initValidation();
		});
	</script>
	<!--[if lt IE 9]>
    <script src="resources/assets/plugins/respond.js"></script>
    <script src="resources/assets/plugins/html5shiv.js"></script>
    <script src="resources/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>
