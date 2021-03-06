<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<% 

 
if(request.getParameter("code") != "null" || request.getParameter("code") != null){
	%>
	<jsp:include page="/googleOauthCallback" />
<% 
}
%>
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
   <!-- FB Script -->
    <script src="resources/work/scripts/libraries/fbLoginScript.js"></script>
</head>
<body>
<!--=== Content Part ===-->
<div class="container">
    <a href="index.html"><img id="logo-top"  class="reg-logo" src="resources/assets/img/go.png" alt=""></a>
    <!--Reg Block-->
    <div class="reg-block reg-block-margin">
        <div class="reg-block-header">
            <h2>Sign Up</h2>
             
               <fb:login-button scope="public_profile,email" onlogin="checkLoginState();"></fb:login-button>
               <din id="status"></din>
            <ul class="social-icons text-center">
                <li><a class="rounded-x social_facebook" data-original-title="Facebook" onclick="checkLoginState();"></a></li>
                <li><a class="rounded-x social_googleplus" data-original-title="Google Plus" href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/Go4Venue-UI/register&response_type=code&client_id=493613922297-f1g2vbtud9oimgbgo8642rjb81tctf3n.apps.googleusercontent.com&approval_prompt=force"></a></li>
             </ul>
            <p>Already Signed Up? Click <a class="color-green" href="login">Sign In</a> to login your account.</p>
        </div>
     
         <form id="registerForm" method="post" action="registerUser" modelAttribute="user">
         
         <div class="input-group margin-bottom-5">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
             <input type="text" class="form-control" placeholder="FirstName" name = "firstName"> 
                  </div>
        <div class="input-group margin-bottom-5">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
           <input type="text" class="form-control" placeholder="LastName" name = "lastName">
       
        </div>
        
        <div class="input-group margin-bottom-5">
            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
             <input type="email" class="form-control" placeholder="Email" name = "email">
            
        </div>
        <div class="input-group margin-bottom-5">
            <span class="input-group-addon"><i class="fa fa-mobile-phone"></i></span>
            <!--=== Code added for extra field +91 ===-->
            <span class="input-group-addon"><i class="fa">+91</i></span>  
          <input type="text" class="form-control" placeholder="Contact Number" name = "contactNumber" maxlength="10"> 
    
        </div>
        <div class="input-group margin-bottom-5">
            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
             <input type="text" class="form-control" placeholder="Password" name = "password"> 
         
        </div>
        <div class="input-group margin-bottom-5">
            <span class="input-group-addon"><i class="fa fa-key"></i></span>
             <input type="text" class="form-control" placeholder="Confirm Password" name = "confirmPassword"> 
        
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
                <input type="submit" class="btn-u btn-block"/>Register
            </div>
            </div>
	</form>
       
        </div>
    </div>
    <!--End Reg Block-->
<!--/container-->
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