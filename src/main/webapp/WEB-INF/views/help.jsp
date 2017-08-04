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
                        <li ><a href="${pageContext.request.contextPath }/dashboard">Home</a></li>
                        <li><a href="${pageContext.request.contextPath }/billingPayment">Make Payment</a></li>  
                        <li><a href="${pageContext.request.contextPath }/service">Service Request</a></li> 
                        <li class="active"><a href="${pageContext.request.contextPath }/help">Help</a></li> 
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
                                    <div style="font-size: 50px; font-family: Roboto" >Frequently Asked Question </div>
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
                                            1. How is this different from current plans?
                                        </a>
                                    </h4>
                                </div>
                                <div id="accordion1_1" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <i class=" fa fa-hand-o-right  "></i> Earlier plan</br>
                                        &nbsp; <i class=" fa  fa-dot-circle-o "></i> Speed is capped based on the monthly rental</br>
                                        &nbsp; <i class=" fa  fa-dot-circle-o "></i> So applications like video streaming, video conferencing do not give you best performance </br>
                                        &nbsp; <i class=" fa  fa-dot-circle-o "></i> When more than one user is active, bandwidth is shared, so both users get less bandwidth </br>
                                        <i class=" fa fa-hand-o-right  "></i> New Plan </br>
                                        &nbsp; <i class=" fa  fa-dot-circle-o "></i> Plans based on data usage o Speeds given based on application being used</br>
                                        &nbsp; <i class=" fa  fa-dot-circle-o "></i> Smart Android Router/CPE to be placed in the residence to allow for up to 8 users simultaneously </br>

                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_2">
                                            2. What are the new Plans?
                                        </a>
                                    </h4>
                                </div>
                                <div id="accordion1_2" class="panel-collapse collapse  " >
                                    <div class="panel-body">
                                        <i class=" fa fa-hand-o-right  "></i> How about paying only for the data and not for speed? </br>
                                        &nbsp; <i class=" fa  fa-dot-circle-o "></i> Plans are based on data being consumed and speed </br>
                                        <i class=" fa fa-hand-o-right  "></i> Advantage <br/>
                                        &nbsp; <i class=" fa  fa-dot-circle-o "></i> Pay for what data is used <br/>
                                        &nbsp; <i class=" fa  fa-dot-circle-o "></i> Add on packs available more data as required<br/> 
                                        &nbsp; <i class=" fa  fa-dot-circle-o"></i> Speeds are given based on the application being used
                                        &nbsp; <table  padding="8px" border="1">
                                            <tr><th>Data</th> <th>Price in Rs.</th><th>Post FUP Speed</th></tr>
                                            <tr><td>5GB</td> <td>120*</td><td>512Kbps</td></tr>
                                            <tr><td>10GB</td> <td>220* </td><td>512Kbps</td></tr>
                                            <tr><td>40GB</td> <td>849*</td><td>512Kbps </td></tr>
                                            <tr><td>60GB</td> <td>1140*</td><td>512Kbps </td></tr>
                                            <tr><td>100GB</td> <td>1875*</td><td>2Mbps</td></tr>

                                        </table><br/>
                                        *Goods and Services Tax applicable 
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_3">
                                            3. How does this new plan work?
                                        </a>
                                    </h4>
                                </div>
                                <div id="accordion1_3" class="panel-collapse collapse">
                                    <div class="panel-body">
                                       <i class=" fa  fa-dot-circle-o "></i> The entire network has been configured to understand the usage of the end customer </br>
                                       <i class=" fa  fa-dot-circle-o "></i> Central intelligence in The Cloud holds algorithms that are triggered when user logs in and starts an application, say YouTube. </br>
                                       <i class=" fa  fa-dot-circle-o "></i> The network releases bandwidth required for the application to perform at 100% </br>
                                       <i class=" fa  fa-dot-circle-o "></i> If another user in the same house starts using YouTube, the network increases the bandwidth being sent to the Customer Premises Equipment (CPE) placed in your residence</br> 
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_4">
                                            4. What is the Customer Premises Equipment (CPE)/Smart Android Router?
                                        </a>
                                    </h4>
                                </div>
                                <div id="accordion1_4" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <i class=" fa  fa-dot-circle-o "></i>  The CPE is substitute for a WIFI router which also works as an interface for a Television. </br>
                                        <i class=" fa  fa-dot-circle-o "></i> The CPE comes loaded with apps like Music Player, Video Player, YouTube, Internet Brower which allows you to use all these features on the television screen like any smart TV </br>
                                        <i class=" fa  fa-dot-circle-o "></i> The CPE can handle allocation of bandwidth to 8 devices simultaneously and does it based on the application each device is using (Smart WIFI) </br>
                                        <i class=" fa  fa-dot-circle-o "></i> CPE has 2 USB ports which allows you to connect an external hard disk, wireless mouse, keyboard </br>
                                        <i class=" fa  fa-dot-circle-o "></i> CPE also comes with Bluetooth connectivity to link more devices to it </br>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default" >
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_5">
                                            5. How do I get the new plan?
                                        </a>
                                    </h4>
                                </div>
                                <div id="accordion1_5" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <p style="color:black">
                                            <i class=" fa fa-hand-o-right  "></i> New Connection</br>
                                            <i class=" fa  fa-dot-circle-o "></i> Customer will pay Rs 1000/- as a security deposit. </br>
                                            <i class=" fa  fa-dot-circle-o "></i> The Stoic Zeno CPE will be installed as per the plan the customer
                                        <table border="1">
                                            <tr><th>Data</th><th>Price in Rs.</th><th>Post FUP Speed</th></tr>
                                            <tr><td>5GB</td><td>120*</td><td>512Kbps</td></tr>
                                            <tr><td>10GB</td><td>220* </td><td>512Kbps</td></tr>
                                            <tr><td>40GB</td><td>849*</td><td>512Kbps </td></tr>
                                            <tr><td>60GB</td><td>1140*</td><td>512Kbps </td></tr>
                                            <tr><td>100GB</td><td>1875*</td><td>2Mbps</td></tr>
                                        </table>
                                        <br/>
                                        </p>
                                        <p style="color:black">
                                            <i class=" fa  fa-dot-circle-o "></i> The customer will be allowed to use the plan till the end of the billing cycle  <br/>
                                            <i class=" fa  fa-dot-circle-o "></i> If the customer chooses not to continue with the Stoic Zeno plan, the security deposit will be returned to the customer on safe return of the CPE, payment of monthly rental, and will be transitioned to an Airwire plan of his choosing <br/> 
                                            <i class=" fa  fa-dot-circle-o "></i> If the customer chooses to continue with the existing plan, the customer is required to make the plan payment (pro rata payment may apply) by the 7th of consecutive month  <br/>
                                            <i class=" fa  fa-dot-circle-o "></i> The customer is required to make a payment of Rs 2500/- towards purchase of CPE post completion of 2nd month of Promo offer, if they choose to continue further with the Stoic Zeno plan  <br/>
                                            <i class=" fa  fa-dot-circle-o "></i> If the customer does not wish to continue, the customer needs to pay monthly rental, clear all due and return CPE. Post which the security deposit will be returned in full and customer will be transitioned to an Airwire plan  <br/>
                                            <br/>
                                            <i class=" fa fa-hand-o-right  "></i> Existing Customer  <br/> 
                                            <i class=" fa  fa-dot-circle-o "></i> Existing customer will pay Rs 1000/- as a security deposit.  <br/>
                                            <i class=" fa  fa-dot-circle-o "></i> The Stoic Zeno CPE will be installed as per the below plans
                                        </p>
                                        <table border="1">
                                            <tr><th>Data</th><th>Price in Rs.</th><th>Post FUP Speed</th></tr>
                                            <tr><td>5GB</td><td>120*</td><td>512Kbps</td></tr>
                                            <tr><td>10GB</td><td>220* </td><td>512Kbps</td></tr>
                                            <tr><td>40GB</td><td>849*</td><td>512Kbps </td></tr>
                                            <tr><td>60GB</td><td>1140*</td><td>512Kbps </td></tr>
                                            <tr><td>100GB</td><td>1875*</td><td>2Mbps</td></tr>
                                        </table><br/>
                                        <p style="color:black">
                                            <i class=" fa  fa-dot-circle-o "></i> The customer will be allowed to use the plan till the end of the billing cycle<br/> 
                                            <i class=" fa  fa-dot-circle-o "></i> If the customer chooses not to continue with the Stoic Zeno plan, the security deposit will be returned to the customer on safe return of the CPE, payment of monthly rental, and will be transitioned to an Airwire plan of his choosing <br/>
                                            <i class=" fa  fa-dot-circle-o "></i> If the customer chooses to continue with the existing plan, the customer is required to make the plan payment (pro rata payment may apply) by the 7th of consecutive month <br/>
                                            <i class=" fa  fa-dot-circle-o "></i> The customer is required to make a payment of Rs 2500/- towards purchase of CPE post completion of 2nd month of Promo offer, if they choose to continue further with the Stoic Zeno plan <br/>
                                            <i class=" fa  fa-dot-circle-o "></i> If the customer does not wish to continue, the customer needs to pay monthly rental, clear all dues and return CPE. Post which the security deposit will be returned in full and customer will be transitioned to an Airwire plan if they chose to do so<br/> 
                                        </p>   
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


        <!-- END PAGE LEVEL JAVASCRIPTS -->
    </body>
    <!-- END BODY -->
</html>