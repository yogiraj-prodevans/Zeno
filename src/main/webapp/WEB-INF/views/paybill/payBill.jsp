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

.billPayment
{
    color: white; 
}
.greyBlock
{
    background-color: #bdc3c7;
}
    
/* 3 blocks start here */  
.col-md-4
{
    padding-left: 1px;
    padding-right: 1px;
}
.mainBlock3
{
    max-width: 92%;
    color: white;
    margin-top: 5%;
    padding-top: 1%;
    padding-left: 4%;
}
/* 3 blocks End here */
    
.firstRow
{
    min-height: 70px;
    padding-left: 5%;
    color: white;
}
        
/*START*/
.boxes {
    margin: auto;
    padding: 50px;
    background: #484848;
}

.tableWidth
{
    width: 40%;
}
/* input text*/
    
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
    
    
/*Checkboxes styles*/
input[type="checkbox"] { display: none; }

input[type="checkbox"] + label {
    display: block;
    position: relative;
    padding-left: 35px;
    margin-bottom: 1px;
    font: 12px/14px;
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
    
    
/* iphone 6 plus*/
@media (max-width: 480px)
{
    .firstRow
    {
        padding-left: 5%;
        padding-top: 1%;
    }
    .mobileMargin
    {
        margin-top: 6%;
        margin-bottom: 6%;
    }
    .tableWidth
    {
        width: 100%;
    }
    
}    
    
</style>

        </head>

        <body class="corporate" style="font-family: Roboto;">
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
                        <li><a href="${pageContext.request.contextPath }/parental-control">Parental Control</a></li>
                        <li><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
                        <li><a href="${pageContext.request.contextPath }/logout">Logout</a></li>
                    </ul>
                </div>
                <!-- END NAVIGATION -->
            </div>
        </div>



<div class="col-md-12 firstRow" style="background-color:#ffbb19;">
    <h3 style="text-shadow: 0.2px 0.2px white;">Pay Bill</h3>
</div>    
    
<div class="container">
    
    <div class="col-md-12" style="margin-top:5%;">
        
        <form:form role="form" action="payBillRequest" method="post" modelAttribute="payBillDetails" >
			
	        <div class="row" style="margin-bottom:2%;">
	            <div class="col-md-6">
	            	<form:input path="account_id" type="text" id="account_id" placeholder="Zeno ID " />            
	            </div>
	        </div>
	        <div class="row" style="margin-bottom:2%;">
	            <div class="col-md-6">
	            	<form:input path="email_id" type="text" id="email_id" placeholder="Email ID " />            
	            </div>
	        </div>
	        <div class="row" style="margin-bottom:2%;">
	            <div class="col-md-6">
	            	<form:input path="amount" type="text" id="amount" placeholder="Amount " />            
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