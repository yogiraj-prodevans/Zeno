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
<jsp:include page="../component/css.jsp"></jsp:include>



<style>

/*    
input[type=text] 
{
    padding: 0;
    height: 30px;
    width: 100%;
    position: relative;
    left: 0;
    outline: none;
    border-left: none;
    border-right: none;
    border-top: none;
    border-bottom: 0.5px solid #bdc3c7;
    background-color: white;
    font-size: 16px;
    font-weight: bold;
}
   */ 
    
 
.submitButton
{
    margin-top:10%;
    margin-bottom:10%;
    font-size: 16px;
    width:60%;
    height: 5%;
    background-color: #2980b9;
    color: #FFF;
    border: 0.1px solid #2980b9;
    text-shadow: 0.2px 0.2px white;
    
}    
</style>

        </head>

        <body class="corporate" style="font-family: Roboto;">
            
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
                        <li><a href="${pageContext.request.contextPath }/parental-control">Parental Control</a></li>
                        <li><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
                        <li><a href="${pageContext.request.contextPath }/logout">Logout</a></li>
                    </ul>
                </div>
                <!-- END NAVIGATION -->
            </div>
        </div>



<div class="col-md-12 firstRow pt-20" style="background-image: url('corporate/img/back.png');">
    <h1 style="margin-left:5%;">Pay bill</h1>
</div>    
    
<div class="container">
    
    <div class="col-md-12" style="margin-top:5%;">
        
        <form:form role="form" action="payBillRequest" method="post" modelAttribute="payBillDetails" >
			
	        <div class="row" style="margin-bottom:2%;">
	            <div class="col-md-6">
	            	<form:input path="account_id" type="text" id="account_id" placeholder="Zeno ID " required="true"/>            
	            </div>
	        </div>
	        <div class="row" style="margin-bottom:2%;">
	            <div class="col-md-6">
	            	<form:input path="email_id" type="text" id="email_id" placeholder="Email ID " required="true"/>            
	            </div>
	        </div>
	        <div class="row" style="margin-bottom:2%;">
	            <div class="col-md-6">
	            	<form:input path="amount" type="text" id="amount" placeholder="Amount "  required="true"/>            
	            </div>
	        </div>
	        <div class="row col-md-2" style="margin-left:%; margin-bottom: 5%;">
	            <button class="submitButton" type="submit">Pay Bill</button>
	        </div>
        
        </form:form>
         
    </div>
    
    
</div>    
    


           
        <jsp:include page="../component/footer.jsp"></jsp:include>   
           
          
            <!-- Load javascripts at bottom, this will reduce page load time -->
        <jsp:include page="../component/js.jsp"></jsp:include>
        <!-- END BODY -->
    </body>
</html>