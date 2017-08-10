<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

    <!-- Head BEGIN -->
    <head>
      <head>
        <meta charset="utf-8">
        <title>STOIC ZENO</title>
        <link rel="shortcut icon" href="favicon.ico">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta content="Stoic Zeno User Portal" name="description">
        <meta content="Stoic Zeno User Portal Keywords" name="keywords">
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
                        <li ><a href="${pageContext.request.contextPath }/dashboard">Home</a></li>
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
        

        <div class="main" >
            <div class="container">

                <!-- BEGIN SIDEBAR & CONTENT -->
                <div class="row margin-bottom-0">
                    <!-- BEGIN SIDEBAR -->
                    <div class="col-md-3 col-sm-3">
                        <table class="tblborder">
                            <tr>
                                <th>
                                    <div style="font-size: 50px; font-family: Roboto" >Terms and Condition </div>
                                </th>
                            </tr>
                        </table>
                    </div>
                    <!-- END SIDEBAR -->

                    <!-- BEGIN CONTENT -->
                    <div class="col-md-8 col-sm-8">

                        <div class="faq-page" style="line-height: 2">
                            
                            <div class="panel panel-default">
                                <div id="accordion1_1" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <i class=" fa fa-hand-o-right  "></i> The Terms and Conditions (T&C) contained along with the Privacy Policy and Terms of Use, form an Agreement regulating the relationship with regard to the use of Stoic-Marcus<sup>Tm</sup> Technologies (STOIC-MARCUS<sup>Tm</sup>) products and services by Stoic-Marcus<sup>Tm</sup> Technologies to you. 
                                        <br/><i class=" fa fa-hand-o-right  "></i> Visitors to this website are subject to the below terms and conditions ("Terms") so kindly read carefully before using the site.
                                        <br/><i class=" fa fa-hand-o-right  "></i> Changes and updates to the website may be made at any time. Packages, prices and service offerings are liable to change at the instance. Your use of a Site after any amendment to the Terms of Use shall constitute your acceptance of these terms and you also agree to be bound by any such changes/revisions.

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div id="accordion1_1" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <i class=" fa  fa-dot-circle-o "></i><strong> Definitions:</strong>
                                        <br/><i class=" fa fa-hand-o-right  "></i> "Agreement" is the Terms and Conditions (T&C) contained herein along with the Privacy Policy and Terms of Use including other T&C at other portals of STOIC-MARCUS<sup>Tm</sup>. It will also include references to this Agreement as and when amended or replaced. 
                                        <br/><i class=" fa fa-hand-o-right  "></i> "Portal/Site" means the STOIC-MARCUS<sup>Tm</sup> platform owned and operated by STOIC-MARCUS<sup>Tm</sup>. 
                                        <br/><i class=" fa fa-hand-o-right  "></i> "User/You" means and includes any Customer / Users / You (the person or any legal entity) who uses the services offered by STOIC-MARCUS<sup>Tm</sup> through its Portal.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END CONTENT -->
                </div>
                <!-- END SIDEBAR & CONTENT -->
            </div>
        </div>
        <div style="padding-top: 2%">
        </div>


        <jsp:include page="component/pop-up.jsp"></jsp:include>
            <!-- BEGIN FOOTER -->
            <div class="footer" style="font-size:10px; width:100%; position:fixed; bottom:0;line-height:1"> <!--style="font-family:Roboto; position: fixed; right: 0; bottom: 0; left: 0;"-->
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


        <!-- END PAGE LEVEL JAVASCRIPTS -->
    </body>
    <!-- END BODY -->
</html>