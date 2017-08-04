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


<!--  include the all css components -->
  <jsp:include page="component/css.jsp"></jsp:include>
  
 <style type="text/css">
 
 /*START*/
 .boxes {
  margin: auto;
  padding: 50px;
  background: #484848;
}

/*Checkboxes styles*/
input[type="checkbox"] { display: none; }

input[type="checkbox"] + label {
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 15px;
  font: 12px/14px 'Open Sans', Arial, sans-serif;
  color: #010745;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
}

input[type="checkbox"] + label:last-child { margin-bottom: 0; }

input[type="checkbox"] + label:before {
  content: '';
  display: block;
  width: 20px;
  height: 20px;
  border: 1.2px solid #010745;
  position: absolute;
  left: 0;
  top: 0;
  opacity: .6;
  -webkit-transition: all .12s, border-color .08s;
  transition: all .12s, border-color .08s;
}

input[type="checkbox"]:checked + label:before {
  width: 10px;
  top: -5px;
  left: 5px;
  border-radius: 0;
  opacity: 1;
  border-top-color: transparent;
  border-left-color: transparent;
  -webkit-transform: rotate(45deg);
  transform: rotate(45deg);
}
 
 /*end*/
 
 

 
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
 


 <!-- BEGIN STEPS -->
    <div class="row front-steps-wrapper"  style="margin-left: 0.001%;width: 100%;">
        <div class="col-lg-12 col-md-12 col-sm-12 front-step-col">
            <div class="front-step front-stepv">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 margin-top-5 ">
                        <div class="col-lg-12 col-md-12 col-sm-12 margin-top-5"  style="padding-left: 10%;">
                            
                            <div class="col-md-6">
                     			<h2 style="font-family:Roboto; font-size:30px">Let us get it done.</h2>
                     		</div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- END STEPS -->
 
    

 
               


<div class="main">
  <div class="container">  
	
	 
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
            <div class="row" style="margin-left:15%;">
            
            	<div class="row">
				  <input type="checkbox" id="box-1">
				  <label for="box-1">New Connection</label>
				</div><br>
				
				<div class="row">
				  <input type="checkbox" id="box-2">
				  <label for="box-2">Activation / Deactivation of Services</label>
				</div><br>
				
				<div class="row">
				  <input type="checkbox" id="box-3">
				  <label for="box-3">Duplicate Bill</label>
				</div><br>
				
				<div class="row">
				  <input type="checkbox" id="box-4">
				  <label for="box-4">Change of Location</label>
				</div><br>
				
				<div class="row">
				  <input type="checkbox" id="box-5">
				  <label for="box-5">Restoration of Service</label>
				</div><br>
				
				<div class="row">
				  <input type="checkbox" id="box-6">
				  <label for="box-6">Any Other</label>
				</div><br>
				
			</div>
        		
          </div>		
          <!-- End Request For-->

		<!-- Start COmplaint For-->
          <div class="col-md-6">
            <div class="row" style="margin-left:8%">
              <p style="font-size:14px;">Complaint About</p><hr>
            </div>
            <div class="row" style="margin-left:15%;">
            
            	<div class="row">
				  <input type="checkbox" id="box-7">
				  <label for="box-7">Not able to pay online</label>
				</div><br>
				
				<div class="row">
				  <input type="checkbox" id="box-8">
				  <label for="box-8">Activation / Deactivation of Services</label>
				</div><br>
				
				<div class="row">
				  <input type="checkbox" id="box-9">
				  <label for="box-9">Billing Related</label>
				</div><br>
				
				<div class="row">
				  <input type="checkbox" id="box-10">
				  <label for="box-10">Marcus Website</label>
				</div><br>
				
				<div class="row">
				  <input type="checkbox" id="box-11">
				  <label for="box-11">Marcus Customer Care</label>
				</div><br>
				
				<div class="row">
				  <input type="checkbox" id="box-12">
				  <label for="box-12">FUP/Speed</label>
				</div><br>
				
				<div class="row">
				  <input type="checkbox" id="box-13">
				  <label for="box-13">CPE</label>
				</div><br>
				
				<div class="row">
				  <input type="checkbox" id="box-14">
				  <label for="box-14">Zeno Portal</label>
				</div><br>
				
			</div>
        		
          </div>		
          <!-- End Complaint For-->

          <!-- Start Tell More-->
          <div class="row" style="margin-left:6%">
            Tell us more about your requests or complaints
          </div><br>
          <div class="row" style="margin-left:5%">
            <div class="col-md-6">
              <textarea class="form-control" style="height:20%"></textarea>
            </div>
 	      </div>
		
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