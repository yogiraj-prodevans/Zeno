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

<link href="https://fonts.googleapis.com/css?family=Roboto:300"
	rel="stylesheet">

<jsp:include page="component/css.jsp"></jsp:include>

</head>
<style>

</style>
<body class="corporate">
 
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
    <div class="row">
        <div class="col-md-4 firstRow billPaymentImage">
            <h1 style="color: white; margin-left: 15%;" class="pt-40">Bill payment</h1>
        </div>
        <div class="col-md-8 firstRow" style="background-color: #ecf0f1;">
            <div class="col-md-10 col-sm-10">
                <h1 style="color: black;" class="currentBillFontforiPhone5 pt-40">
                	Your transaction was successful.
                </h1>
            </div>
            <div class="col-md-2 col-sm-2">
               <img class="paymentImageSize pt-20" alt="Check Image" src="corporate/img/check.png">
            </div>
        </div>
    </div>
    
	<div class="container">
	    <div class="row col-md-12">
	        <div class="col-md-4">
	        </div>
	        <div class="col-md-8">
	            <div class="mainBlock3" style="background-color: #2980b9;">
	                <h3 class="pb-40">Payment Summary</h3>
	                <h2 class="pb-40">Your payment of &#8377;. 60/- was successful.</h2>
	                <h5>TRANSACTION ID</h5>
	                <h3>123456789 </h3>
		            
		            <form action="viewReceipt" method="post">
		            	<input type="hidden" value="<%=43 %>" name="trans_id">
		            	<button class="btn billButton" type="submit">VIEW RECEIPT</button>
		            </form>
	            </div>
	        </div>
	    </div>
	</div>
<%
}
else
{
%>
  <div class="row">
        <div class="col-md-4 firstRow billPaymentImage">
            <h1 style="color: white; margin-left: 15%;" class="pt-40">Bill payment</h1>
        </div>
        <div class="col-md-8 firstRow" style="background-color: #ecf0f1;">
            <div class="col-md-10 col-sm-10">
                <h1 style="color: black;" class="currentBillFontforiPhone5 pt-40">
                	Your transaction was unsuccessful.
                </h1>
            </div>
            <div class="col-md-2 col-sm-2">
               <img class="paymentImageSize pt-20" alt="Check Image" src="corporate/img/cross1.png">
            </div>
        </div>
    </div>
    
	<div class="container">
	    <div class="row col-md-12">
	        <div class="col-md-4">
	        </div>
	        <div class="col-md-8">
	            <div class="mainBlock3" style="background-color: #2980b9;">
	                <h3 class="pb-40">Payment Summary</h3>
	                <h2 class="pb-40">Your payment of &#8377;. 60/- was unsuccessful.</h2>
	                <h5>REASON</h5>
	                <h3>123456789 </h3>
	            </div>
	        </div>
	    </div>
	</div>
<%
}
%>
	
	
 <!-- included pop up -->
        <jsp:include page="component/pop-up.jsp"></jsp:include>
        
        <jsp:include page="component/footer.jsp"></jsp:include>   
           
           
            <!-- Load javascripts at bottom, this will reduce page load time -->
        <jsp:include page="component/js.jsp"></jsp:include>
        <!-- END BODY -->
    </body>
</html>