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
                        <table class="tblborder"  >
                            <tr>
                                <th align="center">
                                    <div align="center" style="font-size: 50px; font-family: Roboto; " > Refund <br/> and <br/> cancellation </div>
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
                                        <i class=" fa fa-hand-o-right  "></i> No Refund of fixed duration pack or Cancellation of payment transaction is allowed. Any disputes in regards to payments/ refund of transaction(s) due to technical reasons are subject to arbitration / resolution on a case to case basis.
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

        <jsp:include page="component/footer.jsp"></jsp:include>
        
        <jsp:include page="component/pop-up.jsp"></jsp:include>
            
            <!-- Load javascripts at bottom, this will reduce page load time -->
        <jsp:include page="component/js.jsp"></jsp:include>


        <!-- END PAGE LEVEL JAVASCRIPTS -->
    </body>
    <!-- END BODY -->
</html>