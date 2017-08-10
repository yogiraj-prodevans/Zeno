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
                                <th align="center">
                                    <div align="center" style="font-size: 50px; font-family: Roboto" >Privacy<br/>Policy</div>
                                </th>
                            </tr>
                        </table>
                    </div>
                    <!-- END SIDEBAR -->

                    <!-- BEGIN CONTENT -->
                    <div class="col-md-8 col-sm-8">

                        <div class="faq-page" style="line-height: 2">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_1">
                                            1. What this privacy policy covers?
                                        </a>
                                    </h4>
                                </div>
                                <div id="accordion1_1" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <i class=" fa fa-hand-o-right  "></i> This policy covers how Stoic-Marcus<sup>TM</sup> Technologies ("Company") treats personal information that the Company collects and receives, including information related to your past use of the Company's products and services. Personal information is information about you that is personally identifiable like your name, address, email address, or phone number etc. </br>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_2">
                                            2. Information Collection and Use
                                        </a>
                                    </h4>
                                </div>
                                <div id="accordion1_2" class="panel-collapse collapse  " >
                                    <div class="panel-body">
                                        <i class=" fa fa-hand-o-right  "></i> General </br>
                                        &nbsp; <i class=" fa  fa-dot-circle-o "></i> The company has the right to combine information about you that it has, with information from partner business and has the right to pass on the same to business associates, franchisees without referring the same to the user.  </br>
                                        &nbsp; <i class=" fa  fa-dot-circle-o "></i> We store personal information that you give us, for a specific purpose. This includes details such as your name, address, telephone, VC number, account number and/ or e-mail address. This Privacy Policy is applicable all the personal information that you give us ("User Information") via this website. <br/>
                                        <br/><i class=" fa fa-hand-o-right  "></i> We make use of User Information for the following: <br/>
                                        &nbsp; <i class=" fa  fa-dot-circle-o "></i> Market research, including statistical analysis of user behaviour which we may disclose to third parties in aggregated form. <br/>
                                        &nbsp; <i class=" fa  fa-dot-circle-o "></i> In compliance with any requirement of law.<br/> 
                                        &nbsp; <i class=" fa  fa-dot-circle-o"></i> Send you periodic communications about our features, products, services, events and special offers.
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_3">
                                            3. Information Sharing and Disclosure
                                        </a>
                                    </h4>
                                </div>
                                <div id="accordion1_3" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <i class=" fa  fa-dot-circle-o "></i> STOIC-MARCUS<sup>TM</sup> and its authorized third parties will collect information pertaining to your identity, demographics, and related evidentiary documentation.  </br>
                                        <i class=" fa  fa-dot-circle-o "></i> STOIC-MARCUS<sup>TM</sup> may at its discretion employ, contract or include third external to itself for strategic, tactical and operational purposes. Such agencies though external to STOIC-MARCUS<sup>TM</sup>, will always be entities which are covered by non-disclosure agreements.  </br>
                                        <i class=" fa  fa-dot-circle-o "></i> We may also share your personal information with Government agencies or other authorized law enforcement agencies (LEAs) mandated under law to obtain such information for the purpose of verification of identity or for prevention, detection, investigation including but not limited to cyber incidents, prosecution, and punishment of offences. </br>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_4">
                                            4. Changes to this Privacy Policy
                                        </a>
                                    </h4>
                                </div>
                                <div id="accordion1_4" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <i class=" fa  fa-dot-circle-o "></i> The Company may update this policy and display the same in their website without notice to you and such posting will be deemed to have been read by you. </br>
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
        <jsp:include page="component/footer.jsp"></jsp:include>

            <!-- Load javascripts at bottom, this will reduce page load time -->
        <jsp:include page="component/js.jsp"></jsp:include>


        <!-- END PAGE LEVEL JAVASCRIPTS -->
    </body>
    <!-- END BODY -->
</html>