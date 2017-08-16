<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page session="false" %>
<html>
<head>
  <meta charset="utf-8">
  <title>STOIC ZENO</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta content="Stoic Zeno User Portal" name="description">
  <meta content="Stoic Zeno User Portal Keywords" name="keywords">
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
   
  <!-- Page level plugin styles START -->
  <link href="pages/css/animate.css" rel="stylesheet">
  <link href="plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="plugins/owl.carousel/assets/owl.carousel.css" rel="stylesheet">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <!--<link href="pages/css/components.css" rel="stylesheet">-->
  <link href="pages/css/slider.css" rel="stylesheet">
  <link href="corporate/css/styleblue.css" rel="stylesheet">
  <link href="corporate/css/style-responsive.css" rel="stylesheet">
  <link href="corporate/css/themes/blue.css" rel="stylesheet" id="style-color">
  <link href="corporate/css/custom.css" rel="stylesheet">
  <!-- Theme styles END -->
  <style>

  .circle1  {
    border-radius: 50%;
    border: 1px solid #010745;
    padding: 20px; 
    width: 120px;
    height: 120px; 
    margin: 40px;
    text-align: center;
    
}

  .circle2  {
    border-radius: 50%;
    border: 2px solid #010745;
    padding: 20px; 
    width: 120px;
    height: 120px; 
    margin: 40px;
    text-align: center;
    
}

.for3Text{
  margin:10%; 
  line-height:.5;
  color: #010745;
}



  </style>
</head>

<body class="corporate">
  <!-- BEGIN TOP BAR -->
  <div class="pre-header">
    <div class="container">
      <div class="row">
        <!-- BEGIN TOP BAR MENU -->
        <div class="col-md-12 col-sm-12 additional-nav" style=" font-size:12px; font-color:000000">
          <ul class="list-unstyled list-inline pull-right ">
            <li ><i class=" fa fa-phone"></i><span>Lets Talk: +91 9019602602</span></li>
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
      <div class="header-navigation pull-right font-transform-inherit" style="font-size:12px">
        <ul>
        <li class="dropdown active"> </li>
          <li ><a href="dashboard">Home</a></li>
          <li><a href="${pageContext.request.contextPath }/currentplan">Current plan</a></li>  
          <li><a href="${pageContext.request.contextPath }/billingPayment">Make Payment</a></li>  
          <li class="active" ><a href="${pageContext.request.contextPath }/topup">Top up</a></li> 
          <li><a href="#">Service Request</a></li> 
          <li><a href="#">Help</a></li> 
          <li><a href="#">Parental Control</a></li>
          <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
          		Settings      
              </a>
                
              <ul class="dropdown-menu">
                <li><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
                <li><a href="#">Account</a></li>
                <li><a href="#">Logout</a></li>
              </ul>
            </li>
        </ul>
      </div>
      <!-- END NAVIGATION -->
    </div>
  </div>


  <!-- Header END -->
  <div class="main">
    <div class="container">  
      <!-- BEGIN STEPS -->
      <div class="col-md-4">
      </div>
      <div class="col-md-2">
         <div class="circle1">
            <p class="for3Text" style="font-size:16px;">5GB</p><br>
            <p class="for3Text" style="font-size:12px;">₹ 120/</p>
            <p class="for3Text" style="font-size:10px;">512 Kbps</p>
            <p class="for3Text" style="font-size:10px;">post FUP</p>
         </div>   
      </div>    
      <div class="col-md-3">
         <div class="circle2">
            <p class="for3Text" style="font-size:16px;">10GB</p><br>
            <p class="for3Text" style="font-size:12px;">₹ 220/</p>
            <p class="for3Text" style="font-size:10px;">512 Kbps</p>
            <p class="for3Text" style="font-size:10px;">post FUP</p>
         </div>   
      </div>          

    </div>
  </div>


 <!-- BEGIN FOOTER -->
  <div class="footer" style="font-size:10px; line-height:1; margin-top:20%;"><!--style="font-family:Roboto; position: fixed; right: 0; bottom: 0; left: 0;"-->
    <div class="container">
      <div class="row">
        <!-- BEGIN COPYRIGHT -->
          <div class="col-md-10 col-sm-10 padding-bottom-10 " > 2017 �&copy Stoic Zeno. ALL Rights Reserved.&nbsp 
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