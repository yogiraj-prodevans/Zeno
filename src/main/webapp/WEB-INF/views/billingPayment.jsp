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
        </head>
<style type="text/css">

.payNowButton2
{
	width:90%;
	height:25%;
	margin:1%;
	line-height:.5;
	background-color:#010745;
	text-align:center;
	font-size:16px;
	line-height:.5;
	color:#ecf0f1;
	align:center;
	padding-top:12%;
}
.payNowButton2:hover
{
	background-color: #1F3A93;
	color: #ecf0f1;
}
.payNowButton1
{
	width:90%;
	height:6%;
	margin:1%;
	line-height:.5;
	background-color:#f0f0f0;
	text-align:center;
	font-size:16px;
	line-height:.5;
	color:#010745;
	align:center;
	padding-top:12%;
}
.payNowButton1:hover
{
	background-color: #bdc3c7;
	background-color:#010745;
	color: #f0f0f0;
	border: 1px solid #f0f0f0; 
	 
	
}

/* iphone 6 plus*/
@media (max-width: 480px)
{
	.payNowButton1
	{
		width: 40%;
		height: 5%;	
		padding-top: 5%;
	}
	.payNowButton2
	{
		width: 80%;
		height: 15%;
	}
	

}

/* iphone 6*/
@media (max-width: 380px)
{
}
</style>


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
                     <li class="active" ><a href="${pageContext.request.contextPath }/billingPayment">Make Payment</a></li>  
                     <li><a href="${pageContext.request.contextPath }/service">Service Request</a></li> 
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
        
        

<!-- BEGIN STEPS -->

 <div class="row front-steps-wrapper"  style="margin-left: 0.001%;width: 100%;">
     <div class="col-lg-12 col-md-12 col-sm-12 front-step-col">
         <div class="front-step front-stepv">
             <div class="row">
                 <div class="col-lg-12 col-md-12 col-sm-12 margin-top-5 " style="padding-left: 10%;">
                     
                     	<div class="col-md-6">
                     		<h2 style="font-family:Roboto; font-size:30px">Billing Payment</h2>
                     	</div>
                     	<div class="col-md-6">
                     		<div class="col-md-6">
                     		</div>
                     		<div class="col-md-6">
                     		
                     			<div class="row" style="margin-left: 0.2%; ">
		                     		<h2 style="font-family:Roboto; font-size:20px">Current Bill</h2>
		                     		<h2 style="color:#E17C80;font-family:Roboto; font-size:26px">INR ${user_details.getPendingAmount() }/-</h2><br>
		                     	</div>
			                    <div class="row">
			                    	<div class="col-md-6">
			                    		<a href="#">
			                               <div class="payNowButton1">
			                                   View Bill
			                               </div>
					                    </a>
			                    	</div>
			                    	<div class="col-md-6">
					                    <a href="payment">
			                               <div class="payNowButton1">
			                                   Pay Now
			                               </div>
					                    </a>
					                </div>
				                </div>
				                
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
          <!-- BEGIN STEPS -->

                <!--  Start First Row-->
                <div class="col-lg-12 col-md-12 col-sm-12" >
                    <form class="form-horizontal form-without-legend ">
                        <div class="form-group"> 
                            <div class="col-lg-12 col-md-12 col-sm-12 " style=" padding-bottom:16">
                                
                                <div class="col-lg-3 div2">
                                    <p style=" font-size:14px; line-height:.5">Your Current Plan</p><br>
                                    <p style=" font-size:10px; color:gray; line-height:.5">Plan Name : Name of Plan </p>
                                    <p style=" font-size:10px; color:gray; line-height:.5">Basic -  INR 849 
                                        <span style=" font-size:8px; color:gray; line-height:.5">Per Month</span>
                                    </p>

                                    <br><br>

                                    <p style=" font-size:10px; line-height:.5">Plan Content</p><br>
                                    <p style=" font-size:9px; color:gray; line-height:.5">1. 40GB Data</p>
                                    <p style=" font-size:9px; color:gray; line-height:.5">2. 512Kbps Post FUP Speed Data</p>
                                </div>

                                <div class="col-lg-3 div2" >
                                    <p style="font-size:14px; line-height:.5">Marcus</p>
                                    <p style="font-size:10px; line-height:.5">Account No : ${user_details.getActid() }</p>
                                    <p style="font-size:10px; line-height:.5">Bill Period-</p>

                                    <div class="front-skills" style=" padding-top:20%">
                                        <p style=" font-size:10px; color:gray; line-height:1"></strong>Usage <strong style="color:#E17C80"> &nbsp 40GB</strong></p> 

                                        <div class=" progress">
                                            <div role="progressbar" class="progress-bar" style="width: 50%;"></div>
                                        </div>
                                    </div>   
                                </div>

                                <div class="col-lg-3 div2" >
                                    <p style=" font-size:10px; color:gray; line-height:.5">Payment</p>
                                    <p style="font-size:10px; color:gray; line-height:.5">Account No : ${user_details.getActid() }</p>

                                    <div class="front-skills" style=" padding-top:15%"></div>

                                    <p style="font-size:16px; color:gray; line-height:1">INR <strong style="color:#E17C80">${user_details.getPendingAmount() }/- </strong> is due in <strong style="color:#E17C80">5 </strong>days</p>

                                    <div class="front-skills" style=" padding-top:15%"></div>
                                    <p style="font-size:10px; color:gray; line-height:1">Due Date : 02/06/2017</p>

                                </div>
                                
                            </div>
                        </div>
                    </form>
                </div>
                <!--  End First Row-->
  
  
  <!--               
                
                <div class="col-md-12 divBill">
                    <div class="row">

                        <div class="col-md-5">
                            <div class="col-md-8">
                                <p class="for3Text">Current Bill Amount</p><br>
                            </div>
                            <div class="col-md-4">  
                                <div class="divRuppe">
                                    <p style=" font-size:16px; line-height:.5; align:center; ">INR 1000</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="col-md-7">
                                <p class="for3Text">Pending Payment</p><br>
                            </div>
                            <div class="col-md-5">  
                                <div class="divRuppe">
                                    <p style=" font-size:16px; line-height:.5; align:center; ">INR ${pendingAmount } </p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-5">
                            <div class="col-md-8">
                                <p style="color:#010745;" class="for3Text">Total Amount</p><br>
                            </div>
                            <div class="col-md-4">  
                                <div class="divRuppe" style="margin-top:1px;">
                                    <p style=" font-size:16px; line-height:.5; align:center; ">INR 1000</p>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-6">
                            <div class="col-md-1">
                            </div>
                            <div class="col-md-4">
                                <a href="payment">
                                    <div class="payNowButton2">
                                   		<p>Pay Now</p>
                               		</div>
                                </a>
                            </div>
                        </div>

                    </div>
                </div>
      
       -->          

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