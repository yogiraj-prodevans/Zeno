<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<html>
<head>
<meta charset="utf-8">
<title>STOIC ZENO</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta content="Stoic Zeno User Portal" name="description">
<meta content="Stoic Zeno User Portal Keywords" name="keywords">

<!-- link to image for socio -->
<meta property="og:url" content="-CUSTOMER VALUE-">

<!--  include the all css components -->
<jsp:include page="component/css.jsp"></jsp:include>

<style type="text/css">
.submitButton {
	margin-top: 10%;
	margin-bottom: 10%;
	width: 70%;
	height: 5%;
	background-color: #010745;
	color: #FFF;
	border-color: #010745;
}

.rotate {
	display: inline-block;
	filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=3);
	/* -webkit-transform: rotate(270deg); */
	-ms-transform: rotate(270deg);
	transform: rotate(270deg);
	text-align: center;
}

.google-map {
	position: relative;
	margin-top: 10px;
	height: 200px;
}

input[type="text"] {
	height: 40px;
	font-size: 30px;
}
.billButton{
	padding-right: 2%;

padding-left: 2%;
}
</style>

</head>

<body class="corporate">

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
					<li><a href="${pageContext.request.contextPath }/dashboard">HOME</a></li>
					<li><a href="${pageContext.request.contextPath }/billingPayment">MAKE PAYMENT</a></li>
					<li ><a href="${pageContext.request.contextPath }/service">SERVICE REQUEST</a></li>
					<li><a href="${pageContext.request.contextPath }/profile">PROFILE</a></li>
					<li><a href="${pageContext.request.contextPath }/logout">LOGOUT</a></li>
				</ul>
			</div>
			<!-- END NAVIGATION -->
		</div>
	</div>

	<div class="row firstRow pt-20"
		style="background-image: url('corporate/img/back.png');">
		<h1 style="margin-left: 5%;">Contact</h1>
	</div>



	<div class="row pt-40">
		<div class="container">
			<div class="col-md-12">
				<div class="col-md-4">
					<div>
						<h2>Address</h2>
						<p>
							Novel Tech Park, 3rd Floor,<br> No. 46/4 Garvebhavi Palya
							Hongasandra,<br> Hosur Road, Bengaluru,<br> Karnataka
							560068.
						</p>
					</div>
					<br>
					<div>
						<div>
							<h2>Contact</h2>
							<p>+91 - 99019602602</p>
							<br>
						</div>
						<div>
							<h2>Mail</h2>
							<p>
								<a style="color: black" href="mailto:info@oneeight.co.in">info@oneeight.co.in</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-8">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.9047081333974!2d77.6044091145098!3d12.913845819637745!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae15028bbddb5b%3A0x1abfed521a02d446!2sProDevAns+Technologies!5e0!3m2!1sen!2sin!4v1504167162391"
						width="100%" height="300px" frameborder="0" style="border: 0"
						allowfullscreen></iframe>
				</div>
			</div>

</div>
			<div class="container pt-40">

				<form class="row" action="#">

					<div class="col-md-12 pb-20">
						<div class="col-md-6">
							<input type="text" placeholder="Name" class="font-h2" />
						</div>
						<div class="col-md-6 mb-pt-30">
							<input type="text" placeholder="Email" class="font-h2" />
						</div>
					</div>
					<div class="col-md-12 pb-40">
						<div class="col-md-12">
							<input type="text" placeholder="Subject" class="font-h2" />
						</div>
					</div>
					<div class="col-md-12">
						<div class="col-md-12 ">

							<textarea class="form-control "
								style="height: 30%; width: 100%; border: 0.4px solid #bdc3c7; resize: none; color: black; border-radius: 0.4px; font-size: 30px;"
								placeholder=" Message"></textarea>
						</div>
					</div>

					<div class="col-md-12"
						style="margin-bottom: 8%; text-align: right;">
						<button class="btn billButton" type="submit">SEND NOW</button>
					</div>
				</form>
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