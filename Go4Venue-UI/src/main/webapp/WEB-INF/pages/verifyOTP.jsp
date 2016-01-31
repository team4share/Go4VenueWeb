<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
<div class="container">
 <div class="reg-block reg-block-margin">
    <div class="reg-block-header">
        <h2> Enter the OTP to verify</h2>
    </div>
    <form:form method="POST" action="otp"> 
 
                                      <p>
        <div class="input-group margin-bottom-5">
            <span class="input-group-addon"><i class="fa fa-user"></i></span>
           <form:label path="otpValue" class="form-control">OTP</form:label>
           <form:input path="otpValue"/>
        </div>
                                         </p>
                                               
                                   
         <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <input type="submit" class="btn-u btn-block" value = "Validate"/></div>
         </div>
     </form:form>
       </div>
   
   </div>
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