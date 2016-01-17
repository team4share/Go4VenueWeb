<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <title>Registration Page | Go4Venue</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="resources/favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="resources/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/assets/css/style.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="resources/assets/plugins/animate.css">
    <link rel="stylesheet" href="resources/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="resources/assets/plugins/font-awesome/css/font-awesome.min.css">
    
    <!-- CSS Page Style -->
    <link rel="stylesheet" href="resources/assets/css/pages/page_log_reg_v2.css">
    
    <!-- CSS Theme Colours -->
    <link rel="stylesheet" href="resources/assets/css/theme-colors/purple.css">
    
    <!-- CSS Customization -->
    <link rel="stylesheet" href="resources/assets/css/custom.css">
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
    <!-- <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.0rc1/angular-route.min.js"></script>-->
    <script src="resources/work/scripts/controllers/UserController.js"></script>
   
</head>
<body>
<!--=== Content Part ===-->
<div class="container" ng-controller="UserController">
    <a href="index.html"><img id="logo-top"  class="reg-logo" src="resources/assets/img/go.png" alt=""></a>
    <!--Reg Block-->
    <div class="reg-block reg-block-margin">
        <div class="reg-block-header">
            <h2>Sign Up</h2>
            <ul class="social-icons text-center">
                <li><a class="rounded-x social_facebook" data-original-title="Facebook" href="#"></a></li>
                <li><a class="rounded-x social_googleplus" data-original-title="Google Plus" href="#"></a></li>
             </ul>
            <p>Already Signed Up? Click <a class="color-green" href="login">Sign In</a> to login your account.</p>
        </div>
         <div class="input-group margin-bottom-5">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" class="form-control" placeholder="FirstName" ng-model = "formData.firstName">
        </div>
        <div class="input-group margin-bottom-5">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
            <input type="text" class="form-control" placeholder="LastName" ng-model = "formData.lastName">
        </div>
        
        <div class="input-group margin-bottom-5">
            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
            <input type="email" class="form-control" placeholder="Email" ng-model = "formData.email">
        </div>
        <div class="input-group margin-bottom-5">
            <span class="input-group-addon"><i class="fa fa-mobile-phone"></i></span>
            <!--=== Code added for extra field +91 ===-->
            <span class="input-group-addon"><i class="fa">+91</i></span>  
           <input type="text" class="form-control" placeholder="Contact Number" ng-model = "formData.contactNumber" maxlength="10">
        </div>
        <div class="input-group margin-bottom-5">
            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
            <input type="text" class="form-control" placeholder="Password" ng-model = "formData.password">
        </div>
        <div class="input-group margin-bottom-5">
            <span class="input-group-addon"><i class="fa fa-key"></i></span>
            <input type="text" class="form-control" placeholder="Confirm Password" ng-model = "formData.confirmPassword">
        </div>
        
                <hr>

        <div class="checkbox">
            <label>
                <input type="checkbox">
                I have read <a target="_blank" href="page_terms.html">Terms and Conditions</a>
            </label>
        </div>

        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <button type="submit" class="btn-u btn-block"  data-toggle="modal" data-target=".bs-example-modal-sm" ng-click="submit(formData)">Register</button>
            </div>
            
            <!-- Popup modal for Otp -->
                        <div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-sm">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                        <h4 id="myLargeModalLabel3" class="modal-title">Verify Mobile Number</h4>
                                    </div>
                                    <div class="modal-body">
                                      <p>Please Enter The OTP Sent On Your Mobile</p>
                                      <p>
                                          <input class="form-control" type="text" placeholder="OTP" /></p>
                                               
                                    </div>
                                    <div class="modal-footer">
                                  
                                        <button type="button" class="btn-u btn-u-primary">Submit</button>
                            <button type="button" class="btn-u btn-u-default-otp" data-dismiss="modal">Regenerate</button>
                                      </div>
                                    
                                </div>
                            </div>
                        </div>
                                    <!-- End Popup Modal For Otp -->
            
        </div>
    </div>
    <!--End Reg Block-->
</div><!--/container-->
<!--=== End Content Part ===-->

<!-- JS Global Compulsory -->
<script type="text/javascript" src="resources/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resources/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="resources/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="resources/assets/plugins/backstretch/jquery.backstretch.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="resources/assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="resources/assets/js/app.js"></script>
    <!-- Code For Background image change of registration page -->
    <script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
    });
</script>
  
    
<script type="text/javascript">
    $.backstretch([
      "resources/assets/img/bg/reg_bg1.jpg",
      "resources/assets/img/bg/reg_bg2.jpg",
      "resources/assets/img/bg/reg_bg3.jpg",
      ], {
        fade: 1000,
        duration: 7000
    });
</script>
<!--[if lt IE 9]>
    <script src="assets/plugins/respond.js"></script>
    <script src="assets/plugins/html5shiv.js"></script>
    <script src="assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>