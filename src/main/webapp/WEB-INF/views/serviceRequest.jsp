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
    margin-bottom: 5px;
    padding-bottom: 5px;
    border: .5px solid;
    border-color: #D9D9D9;
    outline: 2px solid white;
    outline-offset: 15px;

  }
  .divBill {
    width: 88%;
    height: 25%;    
    margin-left: 50px;
    margin-top: 5px;
    border: .5px solid;
    border-color: #D9D9D9;
    outline: 2px solid white;
    outline-offset: 5px;  
    margin-bottom: 2%;
}
.divRuppe {
    width: 120px;
    height: 40px;    
    padding: 20px;
    margin: 10%;
    border: .5px solid;
    border-color: #D9D9D9;
    outline: 2px solid white;
    outline-offset: 15px;
  }
.for3Text{
  font-size:16px; 
  margin:10%; 
  line-height:.5;
  margin-left: 2%;
}


/* iphone 6 plus*/
@media (max-width: 480px){
  .divBill {
    width:75%;
    height: 60%;
  }
  .divRuppe{
    margin: 2%;
    margin-left: 10%;
    margin-bottom: 10%;
  }
  .for3Text{
    margin: 10%;
    margin-bottom: 1%;
  }
}

/* iphone 6*/
@media (max-width: 380px){
  .divBill {
    width:82%;
    height: 65%;
  }
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
        <li class="active"><a href="accounts.html">Home</a></li>
    <li><a href="#">Current plan</a></li>  
    <li><a href="#">Make Payment</a></li>  
    <li><a href="#">Top up</a></li> 
    <li><a href="#">Service Request</a></li> 
    <li><a href="#">Help</a></li> 
    <li><a href="#">Parental Control</a></li>
    <li><a href="#">Logout</a></li>
        </ul>
      </div>
      <!-- END NAVIGATION -->
    </div>
  </div>
 

  <!-- Header END -->
<div class="main">
  <div class="container">  
  

      <!-- BEGIN STEPS -->
    

                <div class="row">
                  <p style="font-family:Segoe UI Light; font-size:48px; margin-left:5%;">
                    Let us get it done.
                  </p>
                </div>
                
                <div class="row" style="margin-left:4%;margin-top:4%">
                  <p style="font-size:14px;">How can we help you today?</p><hr>
                </div>


    <div class="row">
      <div class="col-md-12">

        <form>
          
          <div class="row" style="margin-left:4%">
            <div class="col-md-2">
                You Are:
            </div>
            <div class="col-md-6">
              <select class="form-control">
                <option>Marcus Customer</option>
                <option>Non Marcus Customer</option>
              </select>
            </div><br>
          </div><br>

          <div class="row" style="margin-left:4%">
            <div class="col-md-2">
               Name:
            </div>
            <div class="col-md-6">
              <input type="text" class="form-control">
            </div>          
          </div><br>

          <div class="row" style="margin-left:4%">
            <div class="col-md-2">
               Mobile:
            </div>
            <div class="col-md-6">
              <input type="text" class="form-control">
            </div>          
          </div><br>

          <div class="row" style="margin-left:4%">
            <div class="col-md-2">
               Prefered time to call you:
            </div>
            <div class="col-md-6">
              <select class="form-control">
                <option>9AM to 12PM</option>
                <option>12PM to 3PM</option>
                <option>3PM to 6PM</option>
              </select>
            </div>          
          </div><br><br>

          <!-- Start Request For-->
          <div class="col-md-6">
            <div class="row" style="margin-left:8%">
              <p style="font-size:14px;">Request For</p><hr>
            </div>
            <div class="row" style="margin-left:10%">
              <div class="checkbox">
                <label><input type="checkbox" value="">New Connection</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="">Activation / Deactivation of Services</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="">Duplicate Bill</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="">Change of Location</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="">Restoration of Service</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="">Any Other</label>
              </div>
            </div>
          </div>
          <!-- End Request For-->

          <!-- Start Complaint About-->
          <div class="col-md-6">
            <div class="row" style="margin-left:8%">
              <p style="font-size:14px;">Complaint About</p><hr>
            </div>
            <div class="row" style="margin-left:10%">
              <div class="checkbox">
                <label><input type="checkbox" value="">Not able to pay online</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="">Activation / Deactivation of Services</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="">Billing Related</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="">Marcus Website</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="">Marcus Customer Care</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="">FUP/Speed</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="">CPE</label>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" value="">Zeno Portal</label>
              </div>
            </div>
          </div>
          <!-- End Complaint About-->

          <!-- Start Tell More-->
          <div class="row" style="margin-left:6%">
            Tell us more about your requests or complaints
          </div><br>
          <div class="row" style="margin-left:5%">
            <div class="col-md-6">
              <textarea class="form-control" style="height:20%"></textarea>
            </div>
          </div><br>
          <div class="row" style="margin-left:6%">
            <a href="#">
                  <div style="width:150px; height:40px; margin:1px; line-height:.5; background-color:#010745; text-align:center">
                    <p style=" font-size:16px; line-height:.5; color:#ecf0f1; align:center; padding-top:15px;">Submit</p>
                  </div>
            </a>
          </div>
          <!-- End Tell More-->

        </form>
      </div>
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