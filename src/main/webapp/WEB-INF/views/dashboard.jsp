<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page session="false" %>
<html>
<head>
  <meta charset="utf-8">
  <title>STOIC ZENO</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta content="Metronic Shop UI description" name="description">
  <meta content="Metronic Shop UI keywords" name="keywords">
  <meta content="keenthemes" name="author">
  
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
   
  <!-- Page level plugin styles START -->
  <link href="pages/css/animate.css" rel="stylesheet">
  <link href="plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="plugins/owl.carousel/owl.carousel.css" rel="stylesheet">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="pages/css/components.css" rel="stylesheet">
  <link href="pages/css/slider.css" rel="stylesheet">
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
	.div2 {
    width: 280px;
    height: 180px;    
    padding: 20px;
	margin: 40px;
    border: .5px solid;
	border-color: #D9D9D9;
    outline: 2px solid white;
    outline-offset: 15px;
	
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
      <div class="header-navigation pull-right font-transform-inherit" style="font-size:10px">
        <ul>
        <li class="dropdown active"> </li>
        <li class="active"><a href="dashboard">Home</a></li>
		<li><a href="#">Current plan</a></li>  
		<li><a href="#">Make Payment</a></li>  
		<li><a href="#">Top up</a></li> 
		<li><a href="#">Service Request</a></li> 
		<li><a href="#">Help</a></li> 
		<li><a href="#">Parental Control</a></li>
		<li><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
        </ul>
      </div>
      <!-- END NAVIGATION -->
    </div>
  </div>
  <!-- Header END -->
	<div class="main">
		<div class="container">  
		  <!-- BEGIN STEPS -->
			
					<!-- BEGIN STEPS -->
					<div class="row front-steps-wrapper" >
						<div class="col-lg-12 col-md-12 col-sm-12 front-step-col">
							<div class="front-step front-stepv">
							  <div class="row">
								<div class="col-lg-12 col-md-12 col-sm-12 margin-top-5 ">
									<div class="col-lg-12 col-md-12 col-sm-12 margin-top-5 ">
									  <h2 style="font-family:Roboto; font-size:45px"><strong>Experience  transparency</strong></h2>
									  <h2 style="font-family:Roboto; font-size:30px">Welcome, <strong style="color:#E17C80">${user_details.getFirst_name() } ${user_details.getLast_name() }</strong> to your stoic zeno page</h2>
									</div>
								</div>
							  </div>
							</div>
						</div>
					</div>
				  <!-- END STEPS -->
				
				<div class="col-lg-12 col-md-12 col-sm-12"style="padding-top:10px;  ">
					<form class="form-horizontal form-without-legend ">
						<div class="form-group"> 
							<div class="col-lg-12 col-md-12 col-sm-12 " style=" padding-bottom:16">
								<div class="col-lg-3 div2">
									<p style=" font-size:10px; color:gray; line-height:.5">Zeno</p>
									<p style=" font-size:10px; color:gray; line-height:.5">Account No : ${user_details.getCustomer_id() } </p>
									<p style=" font-size:10px; color:gray; line-height:.5">Current Plan Name : ${SubscriptionDetails.getRatePlan() }</p>
									<!-- BEGIN PROGRESS BAR -->
										
										 <div class="front-skills " style=" padding-top:20%">
										 <p style=" font-size:10px; color:gray; line-height:1">Consumed <strong style="color:#E17C80">40GB</strong> of <strong style="color:#E17C80">100GB</strong></p>
											<div class="progress">
												<div role="progressbar" class="progress-bar" style="width: 40%;"></div>
											</div>
										 </div>                       
									<!-- END PROGRESS BAR -->
								</div>
								<div class="col-lg-3 div2" >
									  <p style="font-size:10px; color:gray; line-height:.5">Payment</p>
									  <p style="font-size:10px; color:gray; line-height:.5">Account No : ${user_details.getCustomer_id() }</p>
									  <p style="font-size:15px; color:gray; line-height:1">Rs 1,000.00 is due in <strong style="color:#E17C80">5 </strong>days</p>
									  
									  <div class="front-skills" style=" padding-top:30%">
									
									  
										<p style="font-size:10px; color:gray; line-height:1">Due Date : ${SubscriptionDetails.getExpirydt() }</p>
									  
									</div>   
								</div>
								<div class="col-lg-3 div2" >
									<p style=" font-size:10px; color:gray; line-height:.5">Service Requests</p>
									<p style="font-size:10px; color:gray; line-height:.5">Account No : ${user_details.getCustomer_id() }</p>
									<!-- BEGIN PROGRESS BAR -->
									<div class="front-skills" style=" padding-top:25%">
									<p style=" font-size:10px; color:gray; line-height:1"><strong style="color:#E17C80"> 5 </strong>Active of<strong style="color:#E17C80"> 10</strong> Total</p>	
									  <div class=" progress">
										<div role="progressbar" class="progress-bar" style="width: 50%;"></div>
									  </div>
									</div>                       
									<!-- END PROGRESS BAR -->
								</div>
							</div>
						</div>
					</form>
				</div>
		</div>
	</div>
 <!-- BEGIN FOOTER -->
  <div class="footer" style="font-size:10px; line-height:1"><!--style="font-family:Roboto; position: fixed; right: 0; bottom: 0; left: 0;"-->
    <div class="container">
      <div class="row">
        <!-- BEGIN COPYRIGHT -->
          <div class="col-md-10 col-sm-10 padding-bottom-10 " > 2017 © Stoic Zeno. ALL Rights Reserved.&nbsp 
		  <a href="#">Privacy Policy</a> |
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
  <script src="pages/scripts/bs-carousel.js" type="text/javascript"></script>
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
</html>