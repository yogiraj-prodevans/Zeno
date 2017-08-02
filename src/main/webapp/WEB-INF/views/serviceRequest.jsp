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


<!--  include the all css components -->
  <jsp:include page="component/css.jsp"></jsp:include>
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
        <li ><a href="${pageContext.request.contextPath }/dashboard">Home</a></li>
		<li><a href="${pageContext.request.contextPath }/billingPayment">Make Payment</a></li>  
		<li class="active" ><a href="${pageContext.request.contextPath }/service">Service Request</a></li> 
		<li><a href="${pageContext.request.contextPath }/help">Help</a></li> 
		<li><a href="${pageContext.request.contextPath }/parental-control">Parental Control</a></li>
		<li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
          		Settings      
              </a>
                
              <ul class="dropdown-menu">
                <li><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
                <li><a href="${pageContext.request.contextPath }/logout">Logout</a></li>
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
    

                <div class="row">
                  <p style="font-family:Segoe UI Light; font-size:48px; margin-left:5%;">
                    Let us get it done.
                  </p>
                </div>
                
                <div class="row" style="margin-left:4%;margin-top:4%">
                  <p style="font-size:16px;">How can we help you today?</p><hr>
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


<!-- included pop up -->
<jsp:include page="component/pop-up.jsp"></jsp:include>


 <!-- BEGIN FOOTER -->
  <div class="footer" style="font-size:10px; line-height:1"><!--style="font-family:Roboto; position: fixed; right: 0; bottom: 0; left: 0;"-->
    <div class="container">
      <div class="row">
        <!-- BEGIN COPYRIGHT -->
          <div class="col-md-10 col-sm-10 padding-bottom-10 " > 2017 &copy Stoic Zeno. ALL Rights Reserved.&nbsp 
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
 <jsp:include page="component/js.jsp"></jsp:include>
  <!-- END BODY -->
</body>
</html>