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

 <style type="text/css">

     .submitButton
     {
         margin-top:10%;
         margin-bottom:10%;
         width:70%;
         height: 5%;
         background-color: #010745;
         color: #FFF;
         border-color: #010745;
     }

	.rotate
	{
		display: inline-block;
    	filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=3);
    /* -webkit-transform: rotate(270deg); */
    	-ms-transform: rotate(270deg);
    	transform: rotate(270deg);
    	text-align: center;
	}
	.google-map
	{
		position: relative;
    margin-top: 10px;
    height: 200px;
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
                        <li><a href="${pageContext.request.contextPath }/billingPayment">Make Payment</a></li>  
                        <li><a href="${pageContext.request.contextPath }/service">Service Request</a></li> 
                        <li><a href="${pageContext.request.contextPath }/parental-control">Parental Control</a></li>
                        <li><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
                        <li><a href="${pageContext.request.contextPath }/logout">Logout</a></li>
                    </ul>
                </div>
                <!-- END NAVIGATION -->
            </div>
        </div>


<!-- BEGIN STEPS -->
        <div class="row front-steps-wrapper"  style="margin-left: 0.001%;width: 100%;">
            <div class="col-lg-12 col-md-12 col-sm-12 front-step-col">
                <div class="front-step front-stepv">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 margin-top-5 ">
                            <div class="col-lg-12 col-md-12 col-sm-12 margin-top-5"  style="padding-left: 10%;">

                                <div class="col-md-6">
                                    <h2 style="font-family:Roboto; font-size:30px">Contact Us.</h2>
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
                <div class="row" style="margin-left:4%;margin-top:4%">
                    <div class="col-md-6">
                        <form action="#">
                            
                            <div class="row" style="margin-left:4%">
                                <div class="col-md-2">
                                    Name:
                                </div>
                                <div class="col-md-6">
                                    <input type="text" class="form-control">
                                </div>          
                            </div><br>
                            
                            <div class="row" style="margin-left:4%">
                                <div class="col-md-2">
                                    Email:
                                </div>
                                <div class="col-md-6">
                                    <input type="text" class="form-control">
                                </div>          
                            </div><br>

                            <div class="row" style="margin-left:4%">
                                <div class="col-md-2">
                                    Subject:
                                </div>
                                <div class="col-md-6">
                                    <input type="text" class="form-control">
                                </div>          
                            </div><br>
                            <div class="row" style="margin-left:4%">
                                <div class="col-md-6">
                                    Message:
                                    <textarea class="form-control" style="height:20%; font-size:12px; font-style:italic;  box-shadow: none; border: none; border-bottom: .1px solid;"></textarea>
                                </div>          
                            </div><br>


                            <div class="row col-md-6" style="margin-left:6%; margin-bottom: 8%;">
                                <button class="submitButton" type="submit">Submit</button>
                            </div>

                        </form>
                    </div>
                    <div class="col-md-6">
	                    <div class="row">
							<div class="col-lg-6 col-md-6 col-sm-6">
								<h2>Address</h2><br>
								<p>Novel Tech Park, 3rd Floor,<br>
								No. 46/4 Garvebhavi Palya Hongasandra,<br>
								Hosur Road, Bengaluru,<br>
								Karnataka 560068.</p>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6">
								<div class="row">
									<h2>Contact</h2><br>
									<p>+91 - 99019602602</p><br>
								</div>
								<div class="row">
									<h2>Mail</h2><br>
									<p><a  "href="mailto:info@oneeight.co.in">info@oneeight.co.in</a></p>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="google-map" data-latitude="12.9024492" data-longitude="77.6318219"></div>
						</div>
					</div>
                </div>
            </div>
        </div>


        <!-- included pop up -->
        <jsp:include page="component/pop-up.jsp"></jsp:include>
           
        <jsp:include page="component/footer.jsp"></jsp:include>   
           
          
            <!-- Load javascripts at bottom, this will reduce page load time -->
        <jsp:include page="component/js.jsp"></jsp:include>
        <!-- END BODY -->
    </body>
</html>