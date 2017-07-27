
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>STOIC ZENO</title>
  <link rel="shortcut icon" href="favicon.ico">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta content="Metronic Shop UI description" name="description">
  <meta content="Metronic Shop UI keywords" name="keywords">
  <meta content="vikram" name="author">
  
  <!-- link to image for socio -->
  <meta property="og:url" content="-CUSTOMER VALUE-">
  <link rel="shortcut icon" href="favicon.ico">
  <!-- Fonts START -->
  <link href="https://fonts.googleapis.com/css?family=Lato|Roboto:100" rel="stylesheet">
  <!-- Fonts END -->
  <!-- Global styles START -->          
  <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
 

  <!-- Theme styles START -->
  <link href="pages/css/components.css" rel="stylesheet">

  <link href="corporate/css/styleblue.css" rel="stylesheet">
  <link href="corporate/css/style-responsive.css" rel="stylesheet">
  <link href="corporate/css/themes/blue.css" rel="stylesheet" id="style-color">
  <link href="corporate/css/custom.css" rel="stylesheet">
  <!-- Theme styles END -->
  <style>
    .v_text {
      font-family: 'Lato', sans-serif;
      font-size: 20px;
    }
  </style>
</head>

<body class="corporate">
  <!-- BEGIN TOP BAR -->
  <div class="pre-header">
    <div class="container">
      <div class="row">
        <!-- BEGIN TOP BAR MENU -->
        <div class="col-md-12 col-sm-12 additional-nav" style=" font-size:11px; font-color:000000">
          <ul class="list-unstyled list-inline pull-right ">
            <li style="font-size:10px"><i class=" fa fa-phone"></i><span>Lets Talk: 1800 123456</span></li>
          </ul>
        </div>
        <!-- END TOP BAR MENU -->
      </div>
    </div>
  </div>
  <!-- END TOP BAR -->
  <!-- BEGIN HEADER -->
  <div class="header">
    <div class="container">
      <a class="site-logo" href="#">
        <img src="corporate/img/logos/logo.png" alt="Stoic Zeno"> </a>
      <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>
      <!-- BEGIN NAVIGATION -->
      <div class="header-navigation pull-right font-transform-inherit"  style="font-size:11px">
        <ul>
          <li class="dropdown active"> </li>
          <li class="active" >
            <a href="${contextPath}/login" >Login</a>
          </li>
		  <li>
            <a href="${contextPath}/register">Register</a>
          </li>
        </ul>
      </div>
      <!-- END NAVIGATION -->
    </div>
  </div>
  <!-- Header END -->
  <div class="main">
    <div class="container">
      <!-- BEGIN CONTENT -->
      <div class="col-md-12 col-sm-12">
        <div class="front-step front-step1"> </div>
      </div>
      <!-- END CONTENT -->
      <!-- BEGIN STEPS -->
      <div class="row margin-bottom-30 front-steps-wrapper">
        <div class="front-step front-stepv margin-top-20">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 margin-top-10 ">
				<div class="col-lg-12 col-md-12 col-sm-12 margin-top-10 ">
				  <h2 style="font-family:Roboto; font-size:70px">Sign into the<br>thinking<br>network</h2>
				</div>
            </div>
            <div class="col-md-4 col-sm-4 pull-right  " style="font-family:Lato; font-wait:100">
              <div class="form-info">
			  <p style="font-family:Roboto; font-color:#gray; font-size:15px; padding-bottom:5px"> Login </P>
			    <div class="content-form-page">
                  <form:form class="form-horizontal form-without-legend" role="form" action="login" method="post" modelAttribute="user">
                    <div class="form-group"> <label for="email" class="col-lg-12 control-label"> <span class="require"></span></label>
                      <div class="col-lg-12">
                        <form:input path="customer_id" type="text" class="form-control" style=" font-size:11px; font-style:italic" id="email" placeholder="My Stoic ID " /> 
						<label for="email" class="col-lg-12 control-label"><a style="color:#F2F2F2F2; font-size:11px" href="#">I forgot my Stoic ID</a></label>
					  </div>
                    </div>
                    <div class="form-group"> <label for="password" class="col-lg-12 control-label"><span class="require"></span></label>
                      <div class="col-lg-12">
                        <form:input path="password" type="password" class="form-control" id="password" style=" font-size:11px; font-style:italic" placeholder="My Stoic Password " />
						<label for="email" class="col-lg-12 control-label"><a style="color:#F2F2F2F2; font-size:11px" href="#">I forgot my Stoic Password</a></label>
					  </div>
                    </div>
                    <div class="row">
                      <div class="col-lg-12 col-md-offset-1 padding-left-0 padding-top-10">
                        <button type="submit" style=" color:#F2F2F2F2; font-size:14px; font-family:Roboto" class="btn btn-primary ">Login</button>
					  </div>
					  <div class="col-lg-12 col-md-offset-1 padding-left-0 padding-top-10">
                        <input type="checkbox" class= "padding-5">&nbsp <label style="font-family:Roboto; color:#F2F2F2F2; font-size:10px" > Remember me </label>
					  </div>
                    </div>
					<div class="row">
                      <div class="col-lg-10 col-md-offset-1 padding-left-0 padding-right-0 padding-top-10" >
                       <p style="color:gray; font-size:11px; line-height:1">If you are already a stoic customer and don’t have my stoic account, you can<a style="color:#7E548A; font-size:12px; line-height: 1;" href="register.html"> register now</a>. It is prety quick.</p>
                      </div>
                    </div>
					  <div class="row">
                      <div class="col-lg-12 col-md-offset-1 padding-left-0 padding-top-0">
                       <!-- <a style="color:#7E548A;" href="#">Forget Password?</a>-->
                      </div>
                    </div>
					<div class="row">
                      <div class="col-lg-12 col-md-offset-1 padding-left-0 padding-top-0">
                      <!-- <a style="color:#F2F2F2F2; font-size:12px;" href="register.html">Regiser Now</a>-->
                      </div>
                    </div>
                  </form:form>
                </div>
              </div>
            </div>
          </div>
		  <div class="col-lg-12 col-md-12 col-sm-12 margin-top-20 padding-top-70">
			<p style="font-family:Roboto; font-size:12px; " style="font-color:#ffffff"> <a style="color:#ffffff;" href="#">Know your CPE &nbsp</a> | <a style="color:#ffffff;" href="#">&nbsp Know your bill</a></p>
		  </div>
        </div>
      </div>
      <!-- END STEPS -->
    </div>
  </div>
  <!-- END PRE-FOOTER -->
 <!-- BEGIN FOOTER -->
  <div class="footer" style="font-family:Roboto; position: fixed; right: 0; bottom: 0; left: 0;font-size:10px">
    <div class="container">
      <div class="row">
        <!-- BEGIN COPYRIGHT -->
          <div class="col-md-10 col-sm-10 padding-top-0 padding-bottom-10 "> 2017 © Stoic Zeno. ALL Rights Reserved.&nbsp 
		  <a href="javascript:;">Privacy Policy</a> |
          <a href="javascript:;">Terms of Service</a> |
		  <a href="javascript:;">Refund and Cancellation</a> |
		  <a href="javascript:;">Feedback</a> |
		  <a href="javascript:;">Contact Us</a>
        </div>
        <!-- END COPYRIGHT -->
      </div>
    </div>
  </div>
  <!-- END FOOTER -->
  <!-- Load javascripts at bottom, this will reduce page load time -->
  <!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->
  <!--[if lt IE 9]>
    <script src="plugins/respond.min.js"></script>
    <![endif]-->
  <script src="plugins/jquery.min.js" type="text/javascript"></script>
  <script src="plugins/jquery-migrate.min.js" type="text/javascript"></script>
  <script src="plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="corporate/scripts/back-to-top.js" type="text/javascript"></script>
  <!-- END CORE PLUGINS -->
  <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
  <script src="plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script>
  <!-- pop up -->
  <script src="plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script>
  <!-- slider for products -->
  <script src="corporate/scripts/layout.js" type="text/javascript"></script>
 
  <script type="text/javascript">
    jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initFixHeaderWithPreHeader(); /* Switch On Header Fixing (only if you have pre-header) */
            Layout.initNavScrolling();
        });
  </script>
  <!-- END PAGE LEVEL JAVASCRIPTS -->
  <!-- END BODY -->
</body>
>>>>>>> Accounts-Page
</html>