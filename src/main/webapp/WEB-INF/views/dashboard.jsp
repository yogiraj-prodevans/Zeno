
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page session="true" %>
<html>
    <head>
        <meta charset="utf-8">
        <title>STOIC ZENO</title>
        <link rel="shortcut icon" href="favicon.ico">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta content="Metronic Shop UI description" name="description">
        <meta content="Metronic Shop UI keywords" name="keywords">
        <meta content="vikram" name="author">
        <!-- link to image for socio -->
        <meta property="og:url" content="-CUSTOMER VALUE-">
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
                        <li class="active"><a href="${pageContext.request.contextPath }/dashboard">Home</a></li>
                        <li><a href="${pageContext.request.contextPath }/billingPayment">Make Payment</a></li>  
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
                <!-- BEGIN STEPS -->
                <div class="row front-steps-wrapper"  style="margin-left: 0.001%;width: 100%;">
                    <div class="col-lg-12 col-md-12 col-sm-12 front-step-col">
                        <div class="front-step front-stepv">
                            <div class="row">
                                <div class="col-lg-12 col-md-12 col-sm-12 margin-top-5 ">
                                    <div class="col-lg-12 col-md-12 col-sm-12 margin-top-5"  style="padding-left: 10%;">
                                        <h2 style="font-family:Roboto; font-size:45px"><strong>Experience  transparency</strong></h2>
                                        <h2 style="font-family:Roboto; font-size:30px">Welcome, <strong style="color:#E17C80">${user_details.getFirst_name() }</strong> to your stoic zeno page</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END STEPS -->
                
        <div class="main">
            <div class="container">  
                <div class="col-lg-12 col-md-12 col-sm-12"style="padding-top:1%;  ">
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

