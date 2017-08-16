<%@page import="com.prodevans.zeno.dao.impl.PaymentResponseDAOImpl"%>
<%@page import="com.prodevans.zeno.dao.impl.PaymentDAOImpl"%>
<%@page import="com.prodevans.zeno.pojo.PaymentDetails"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URL"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.io.*,java.util.*,com.ccavenue.security.*" %>
<html>
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
.confirmPayment
{
	width:160px;
	height:40px;
	padding:6%;
	margin-top:2%;
	line-height:.5;
	background-color:#010745;
	text-align:center;
	font-size:16px;
	line-height:.5;
	color:#FFF;
	align:center;
	border: none;
}
.confirmPayment:hover
{
	background-color: #FFF;
	color: #010745;
	border: 1px solid #010745; !important;
}
/* iphone 6 plus*/
@media (max-width: 480px)
{
	.confirmPayment
	{
		text-align: center;
		padding-left: 10px;
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
                        <li class="active"><a href="${pageContext.request.contextPath }/billingPayment">Make Payment</a></li>  
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
        
<%
boolean success=true;
if(success)
{
%>
		
 <div class="container">
 	<div class="col-md-6">
 		<div style="margin-left: 10%;margin-top: 10%;margin-bottom: 10%;">
 			
 			<img alt="thick" src="corporate/img/logos/yes.png" style="height: 10%;width: 10%;">
	 		
	 		<h2 style="font-family:Roboto; font-size:56px; color: #2ecc71;">
	 		Thank You!
	 		</h2><br>
	 		<h2 style="font-size:44px; color: #2c3e50;margin-left: 2%;margin-bottom: 0px;">Payment was</h2><br>
	 		<h2 style="font-size:44px; color: #2c3e50;margin-left: 2%;">successful.</h2>
	 	</div>
 	</div>
 	<div class="col-md-6">
 		<div style="background-color:#010745; margin-top: 1%;padding-bottom: 2%;">
	 		<div class="row" style="margin-left: 5%; padding-top: 5%;">
	 			<h2 style="font-family:Roboto; font-size:24px; color: #FFF;">Payment Summary</h2><br>
	 		</div>
	 		<div class="row" style="margin-left: 5%;">
	 			<div class="row">
	 				<h2 style="font-family:Roboto; font-size:12px; color: #FFF;margin-left: 3%;">Your payment of INR 988.00/- on 10-Aug-2017.</h2><br>
	 			</div>
	 			<div class="row" style="margin-left: 1%;">
	 				<div class="col-md-4">
	 					<div class="row">
		 					<h2 style="font-family:Roboto; font-size:10px; color: #FFF;">TRANSACTION NUMBER</h2>
		 				</div>
		 				<div class="row">
		 					<h2 style="font-family:Roboto; font-size:16px; color: #FFF;">123456789</h2>
		 				</div>
		 			</div>
		 			<div class="col-md-4">
	 					<div class="row">
		 					<h2 style="font-family:Roboto; font-size:10px; color: #FFF;">EMAIL ID</h2>
		 				</div>
		 				<div class="row">
		 					<h2 style="font-family:Roboto; font-size:16px; color: #FFF;">abc@prodevans.com</h2>
		 				</div>
		 			</div>
		 		</div>
	 		</div>

	 	</div>
	 	
	 	<div class="row">
	 		<div class="col-md-6">
	 			<a href="#">
	 			<div class="confirmPayment">
	 				Download Invoice
	 			</div>
	 			</a>
			 </div>
	 	</div>
	 	
	 	
 	</div>
 </div>
<%
}
else
{
%>
<div class="container">
 	<div class="col-md-6">
 		<h2 style="font-family:Roboto; font-size:48px; color: #c0392b;">Transaction Aborted!</h2><br>
 		<h2 style="font-family:Roboto; font-size:32px; color: #2c3e50;">Payment was</h2><br>
 		<h2 style="font-family:Roboto; font-size:32px; color: #2c3e50;">unsuccessful.</h2>
 	</div>
 	<div class="col-md-6" style="background-color:#010745;  ">
 		<div class="row">
 			<h2 style="font-family:Roboto; font-size:24px; color: #FFF;">Payment summary</h2><br>
 		</div>
 		<div class="row">
 			<h2 style="font-family:Roboto; font-size:12px; color: #FFF;">Reason :</h2>
 			<h2 style="font-family:Roboto; font-size:24px; color: #FFF;"></h2>
 			<br>
 		</div>
 	</div>
 </div>
<%
}
%>
	
	
 <!-- included pop up -->
        <jsp:include page="component/pop-up.jsp"></jsp:include>
            <!-- BEGIN FOOTER -->
            <div class="footer" style="font-size:10px; line-height:1">
                <div class="container">
                    <div class="row">
                        <!-- BEGIN COPYRIGHT -->
                        <div class="col-md-10 col-sm-10 padding-bottom-10 " > 2017 &copy Stoic Zeno. ALL Rights Reserved.&nbsp 
                            <a href="#">Privacy Policy</a> |
                            <a href="${pageContext.request.contextPath }/terms">Terms of Service</a> |
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