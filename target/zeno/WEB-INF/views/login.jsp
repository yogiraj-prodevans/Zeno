<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<!DOCTYPE html >
<html>
<head>
<title>Stoic Zeno</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Open Sans"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!-- Custom style sheet and css -->
<!--  
<spring:url value="/resources/css/style.css" var="coreCss" />
<spring:url value="/resources/js/index.js" var="coreJs" />
<spring:url value="/resources/img" var="coreImg" />-->

<script src="js/index.js"></script>
<link rel="stylesheet" href="css/style.css">


</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="#myPage"><img height="65px"
					width="50px" src="img/stoic_zeno.png"></a>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<br />
					<br />
					<li><a href="#">Pay bill | Support</a></li>
					<hr>
				</ul>
			</div>
		</div>
	</nav>

	<div class="jumbotron ">

		<div class="row">
			<div class="col-sm-6 text-left">
				<h1>
					Sign into the<br> cognitive<br> network
				</h1>
			</div>
			<div class="col-sm-6">
				<c:if test="${not empty error}">
					<div>${error}</div>
				</c:if>
				<c:if test="${not empty message}">
					<div>${message}</div>
				</c:if>

				<div class="col-sm-12">
					<form:form action="login" method="post" modelAttribute="user"
						style="background-color: white; padding: 10px">

						<div class="control" style="padding: 20px">
							<form:input path="customer_id" type="text"
								class="form-control border22 logind" placeholder="My Stoic ID"
								name="username" />
							<div align="right" style="padding: 10px">
								<a class="h22" href="#">I forgot my Stoic ID</a>
							</div>
						</div>

						<div class="control" style="padding: 20px">
							<form:input path="password" type="password"
								class="form-control border22 logind "
								placeholder="My Stoic Password" name="password" />
							<div align="right" style="padding: 10px">
								<a class="h22" href="#">I forgot my Stoic Password</a>
							</div>
						</div>

						<div class="control" style="padding: 10px">
							<div class="col-md-6 col-xs-6 ">
								<button type="submit" class="button">Login</button>
							</div>
						</div>
						<div class="control" style="padding: 5px; align: right">
							<div class="col-md-6 col-xs-6 vs ">
								&nbsp; <input type="checkbox"> Remember me
							</div>
						</div>
						<div class="control" style="padding: 10px"></div>
						<div class="control" style="padding: 10px">
							<div class="col-md-6 col-xs-6 ">
								<a class="h22" href="#"> Register now</a>
							</div>
						</div>
						<br>
					</form:form>

				</div>
			</div>

		</div>
		<section id="v07" class="demo">
			<a href="#questions"><span></span><span></span><span></span></a>
		</section>

	</div>


	<!-- Questions Section -->
	<div id="questions" name="questions" class="container-fluid">
		<div class="row">
			<div class="col-sm-12">
				<div class="col-sm-8">
					<p class="h22 h222">You have questions. We have answers.</p>
					<h4>
						<a class="h22" href="#">Know your CPE</a><br> <a class="h22"
							href="#">Know your bill</a><br> <a class="h22" href="#">Get
							the best out of your data plan</a><br> <a class="h22" href="#">More
							solutions..</a><br> <br>

					</h4>
				</div>
				<div class="col-sm-2">
					<span class="glyphicon glyphicon-signal logo"></span>
				</div>
			</div>
		</div>
		<a class="h22" href="#">Stoic Community | Service plans | Moving ?</a>

		<br>
	</div>

	<!-- Google Maps -->
	<div class="container-fluid bg-grey">
		<div class="row">
			<div class="col-sm-6">
				<div id="googleMap" style="height: 300px; width: 100%;"></div>
				<script>
					function myMap() {
						var myCenter = new google.maps.LatLng(12.9715987,
								77.5945627);
						var mapProp = {
							center : myCenter,
							zoom : 12,
							scrollwheel : false,
							draggable : false,
							mapTypeId : google.maps.MapTypeId.ROADMAP
						};
						var map = new google.maps.Map(document
								.getElementById("googleMap"), mapProp);
						var marker = new google.maps.Marker({
							position : myCenter
						});
						marker.setMap(map);
					}
				</script>
				<script
					src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDcmGV7WD8fW8aQzdcKMaFKaHGuKRZc6d8&callback=myMap"></script>
			</div>
			<div class="col-sm-3">
				<p class="h22 h222">
					Free Stoic Wifi<br>Hotspots<br>around Bengaluru
				</p>
				<br> <input type="text" class="form-control border22"
					placeholder="Hotspots Name" />
			</div>
		</div>
	</div>

	<!-- Container (Trending Section) -->
	<div id="trending" class="container-fluid text-center">
		<p class="h22 h222 text-left">Trending</p>
		<br>
		<div class="col-sm-12 bg-gray">
			<div class="row slideanim">
				<div class="col-sm-12">
					<div class="col-sm-9">
						<div class="col-sm-4">
							<img src="img/vvv.jpg" class="img-responsive" alt="#">
							<h4>1</h4>
							<p>stoic Zeno...</p>
						</div>
						<div class="col-sm-4">
							<img src="img/vvv.jpg" class="img-responsive" alt="#">
							<h4>2</h4>
							<p>stoic Zeno...</p>
						</div>
						<div class="col-sm-4">
							<img src="img/vvv.jpg" class="img-responsive" alt="#">
							<h4>3</h4>
							<p>stoic Zeno...</p>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="col-sm-12" style="background-color: #F2F2F2;">
							<h4 class="h22 h222">Local weather</h4>
							<p class="h22 h222">
								28º C <br>Partly Sunny <span
									class="glyphicon glyphicon-cloud logo-small"></span>
							<p>
								<a class="clo" href="#"><u>Forecast</u></a>
							</p>
						</div>

					</div>
				</div>
				<br> <br>
				<div class="row slideanim">
					<div class="col-sm-12">
						<div class="col-sm-9">
							<div class="col-sm-4">
								<img src="img/vvv.jpg" class="img-responsive" alt="#">
								<h4>4</h4>
								<p>stoic Zeno...</p>
							</div>
							<div class="col-sm-4">
								<img src="img/vvv.jpg" class="img-responsive" alt="#">
								<h4>5</h4>
								<p>stoic Zeno...</p>
							</div>
							<div class="col-sm-4">
								<img src="img/vvv.jpg" class="img-responsive" alt="#">
								<h4>6</h4>
								<p>stoic Zeno...</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="container-fluid text-center bg-grey">
		<a href="#myPage" title="To Top"> <span
			class="glyphicon glyphicon-chevron-up text-center"></span>
		</a>
		<p>
			<a href="#" class="h22">&copy; Stoic Zeno Inc. All rights
				reserved. <br>Privacy | Terms of use | Feedback | Help |
				Contact Us
			</a>
		</p>
	</footer>
</body>
</html>