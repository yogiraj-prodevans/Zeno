<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Booster &mdash; A free HTML5 Template by FREEHTML5.CO</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<!-- Google Webfonts -->
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,100,500' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="slider-resource/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="slider-resource/icomoon.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="slider-resource/owl.carousel.min.css">
	<link rel="stylesheet" href="slider-resource/owl.theme.default.min.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="slider-resource/magnific-popup.css">
	<!-- Theme Style -->
	<link rel="stylesheet" href="slider-resource/style.css">
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->


<link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet">
<jsp:include page="component/css.jsp"></jsp:include>


	</head>
	<body>
	
	
	<!-- BEGIN HEADER -->
	<div class="header">
		<div class="container">
			<a class="site-logo" href="#"> <img
				src="corporate/img/logos/logo.png" alt="Stoic Zeno">
			</a> <a href="javascript:void(0);" class="mobi-toggler"><i
				class="fa fa-bars"></i></a>
			<!-- BEGIN NAVIGATION -->
			<div class="header-navigation pull-right font-transform-inherit"
				style="font-size: 12px">
				<ul>
					<li class="dropdown active"></li>
					<li class="active"><a href="${contextPath}/login">Login</a></li>
					<!--  <li>
                    <a href="${contextPath}/register">Register</a>
                  </li>-->
				</ul>
			</div>
			<!-- END NAVIGATION -->
		</div>
	</div>
	<!-- Header END -->
		
	
	<div class="fh5co-slider">
		<div class="owl-carousel owl-carousel-fullwidth">
		    <div class="item" style="background-image:url(slider-resource/slide_1.jpg)">
		    	<div class="fh5co-overlay"></div>
		    	<div class="container">
		    		<div class="row">
		    			<div class="col-md-8 col-md-offset-2">
			    			<div class="fh5co-owl-text-wrap">
							
						    	<div class="fh5co-owl-text">
						    		<h1 class="fh5co-sub-lead">Welcome to the network that stops</h1>
									
						    	</div>
						    </div>
					    </div>
					    <div class="col-md-4 col-sm-4  pt-40 pb-20" style="padding-left: 20px;">
							<div class="form-info">
								<h2 style="font-size: 30px">Login</h2>
								<div class="content-form-page">


									<form class="form-horizontal form-without-legend"
										role="form" action="login" method="post" >
										<div class="form-group">

											<div class="col-lg-12 pb-20">
												<input  type="text" id="mystoicid"
													style="font-size:24px;" placeholder="My One8 ID " />
											</div>
										</div>
										<div class="form-group">

											<div class="col-lg-12 pb-10">
												<input path="password" type="password" id="password"
													style="font-size:24px;" placeholder="My One8 Password " />
											</div>
											<div class="col-md-12">
												<a style="color: #989494;" href="#">I forgot my One8
													Password</a>
											</div>
											<div class="col-md-12">
												<input id="remember" type="checkbox" name="remember"
													value="remember"> &nbsp; <label for="remember"
													class="font-h4"> Remember me </label>
											</div>
										</div>
										<div class="row" style="text-align: right;">
											<!-- added ID for button for testing -->
											<button type="submit" id="submitButton"
												class="btn billButton font-h3 ">LOGIN</button>


										</div>

										<c:if test="${ not empty error}">${error}</c:if>
									</form>
								</div>
							</div>
						</div>
		    		</div>
		    	</div>
		    </div>
		    <div class="item" style="background-image:url(slider-resource/slide_2.jpg)">
		    	<div class="fh5co-overlay"></div>
		    	<div class="container">
		    		<div class="row">
		    			<div class="col-md-8 col-md-offset-2">
			    			<div class="fh5co-owl-text-wrap">
						    	<div class="fh5co-owl-text text-center to-animate">
						    		<h1 class="fh5co-lead">A Digital Studio</h1>
									<h2 class="fh5co-sub-lead">Booster is a free responsive HTML5 template using bootstrap released under Creative Commons 3.0. Lovely crafted by <a href="#">FREEHTML5.co</a></h2>
						    	</div>
						    </div>
					    </div>
		    		</div>
		    	</div>
		    </div>
		    <div class="item" style="background-image:url(slider-resource/slide_3.jpg)">
		    	<div class="fh5co-overlay"></div>
		    	<div class="container">
		    		<div class="row">
		    			<div class="col-md-8 col-md-offset-2">
			    			<div class="fh5co-owl-text-wrap">
						    	<div class="fh5co-owl-text text-center to-animate">
						    		<h1 class="fh5co-lead">Branding, UX under in one roof</h1>
									<h2 class="fh5co-sub-lead">Booster is a free responsive HTML5 template using bootstrap released under Creative Commons 3.0. Lovely crafted by <a href="#">FREEHTML5.co</a></h2>
						    	</div>
						    </div>
					    </div>
		    		</div>
		    	</div>
		    </div>
		    <div class="item" style="background-image:url(slider-resource/slide_4.jpg)">
		    	<div class="fh5co-overlay"></div>
		    	<div class="container">
		    		<div class="row">
		    			<div class="col-md-8 col-md-offset-2">
			    			<div class="fh5co-owl-text-wrap">
						    	<div class="fh5co-owl-text text-center to-animate">
						    		<h1 class="fh5co-lead">Creative Folks</h1>
									<h2 class="fh5co-sub-lead">Booster is a free responsive HTML5 template using bootstrap released under Creative Commons 3.0. Lovely crafted by <a href="#">FREEHTML5.co</a></h2>
						    	</div>
						    </div>
					    </div>
		    		</div>
		    	</div>
		    </div>
			<div class="item" style="background-image:url(slider-resource/slide_5.jpg)">
		    	<div class="fh5co-overlay"></div>
		    	<div class="container">
		    		<div class="row">
		    			<div class="col-md-8 col-md-offset-2">
			    			<div class="fh5co-owl-text-wrap">
						    	<div class="fh5co-owl-text text-center to-animate">
						    		<h1 class="fh5co-lead">Creative Folks</h1>
									<h2 class="fh5co-sub-lead">Booster is a free responsive HTML5 template using bootstrap released under Creative Commons 3.0. Lovely crafted by <a href="#">FREEHTML5.co</a></h2>
						    	</div>
						    </div>
					    </div>
		    		</div>
		    	</div>
		    </div>
		</div>
	</div>	
	
	
	<jsp:include page="component/footerLogin.jsp"></jsp:include>
	<jsp:include page="component/js.jsp"></jsp:include>


	<!-- jQuery -->
	<script src="slider-resource/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="slider-resource/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="slider-resource/bootstrap.min.js"></script>
	<!-- Owl carousel -->
	<script src="slider-resource/owl.carousel.min.js"></script>
	<!-- Waypoints -->
	<script src="slider-resource/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="slider-resource/jquery.magnific-popup.min.js"></script>
	<!-- Main JS -->
	<script src="slider-resource/main.js"></script>

	
	</body>
</html>
