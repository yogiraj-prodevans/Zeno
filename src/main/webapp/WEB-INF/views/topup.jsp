<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta charset="utf-8">
<title>STOIC ZENO</title>
<link rel="shortcut icon" href="favicon.ico">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta content="Stoic Zeno User Portal" name="description">
<meta content="Stoic Zeno User Portal Keywords" name="keywords">

<!-- link to image for socio -->
<meta property="og:url" content="-CUSTOMER VALUE-">

<!-- Fonts START -->
<link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet">
	
<!--  include the all css components -->
<jsp:include page="component/css.jsp"></jsp:include>

<style type="text/css">
h1{
	margin:unset;
}
.font-h3
{
	font-size: 20px;
}
.col-md-3
{
	padding: 0px;
}
.col-md-6, col-sm-8
{
	padding-left: 1px;
	padding-right:1px;
}
.mainBlock4
{
	width :310px;
	max-height:260px;
	min-height:260px;
	color:white;
	padding:4%;
	background-color: #FFB819;
	text-align: center;
	-webkit-box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
	-moz-box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
	box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
}
.circle-Font
{
	min-height:90px;
	max-width:90px;
	border: 3px solid white;
	border-radius: 50%;
	font-size: 58px;
	font-weight: bold;
	text-align: center;
	margin-left: 8%;
	
}


@media (max-width : 990px) 
{
	.paddingLeftMobile
	{
		padding-left: 40px;
	}
	.col-md-6
	{
		padding-left: 0px;
		padding-right: 5%;
		margin-left: -5%;
	}
	.fs-44
	{
		font-size: 32px;
	}
	.mainBlock4
	{
		width :310px;
		max-height:260px;
		min-height:260px;
		margin: 2%;
	}
}
</style>

</head>
<body class="corporate" style="font-family: Roboto;">
	
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
					<li><a href="${pageContext.request.contextPath }/dashboard">HOME</a></li>
					<li><a
						href="${pageContext.request.contextPath }/billingPayment">MAKE
							PAYMENT</a></li>
					<li><a href="${pageContext.request.contextPath }/service">SERVICE
							REQUEST</a></li>
					
					<li class="active"><a href="${pageContext.request.contextPath }/profile">PROFILE</a></li>
                    <li><a href="${pageContext.request.contextPath }/logout">LOGOUT</a></li>
				</ul>
			</div>
			<!-- END NAVIGATION -->
		</div>
	</div>
	<!-- Header END -->
	
<div class="col-md-12 firstRow " style="background-image: url('corporate/img/back.png');padding-top:3%">
    <h1 style="margin-left:5%;padding:unset;">Get more out of One8</h1>
</div>    

<div class="container">
		<div class="col-md-1">
		</div>
		<div class="col-md-10 col-xs-12">
			<h1>Get more One8 on demand</h1>
			<h3>Pick an option, pay and browse non stop.</h3>
		</div>
</div>

<div class="col-md-12 col-lg-12 col-xl-12 container">
	<div class="row">
		<div class="col-md-3 col-lg-3 col-xl-3">
		</div>
		<div class="col-md-3 col-xs-6 col-lg-3 col-xl-3">
			<div class="mainBlock4" style="background-color: #2980b9;">
				<div class="row">
					<div class="col-md-4 col-xs-3"></div>
					<div class="col-md-4 col-xs-6">
						<h1 class="circle-Font">
							5
						</h1>
					</div>
					<div class="col-md-4 col-xs-3" style="padding-top: 10%;text-align: left;">
						<h2>GB</h2>
					</div>
				</div>
				<h1>&#8377; 120</h1>
				<h4>512 Kbps * POST FUP</h4>
				<a href="">
					<div class="btn billButton" style="border: 1px solid white;background-color: inherit;">
						BUY NOW
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-3 col-xs-6 col-lg-3 col-xl-3">
			<div class="mainBlock4" style="background-color: #e74c3c;">
				<div class="row">
					<div class="col-md-4 col-xs-3"></div>
					<div class="col-md-4 col-xs-6">
						<h1 class="circle-Font">
							10
						</h1>
					</div>
					<div class="col-md-4 col-xs-3" style="padding-top: 10%;text-align: left;">
						<h2>GB</h2>
					</div>
				</div>
				<h1>&#8377; 220</h1>
				<h4>512 Kbps * POST FUP</h4>
				<a href="">
					<div class="btn billButton" style="border: 1px solid white;">
						BUY NOW
					</div>
				</a>
			</div>
		</div>
		<div class="col-md-3 col-lg-3 col-xl-3">
		</div>
	</div>
</div>






	<jsp:include page="component/pop-up.jsp"></jsp:include>
	<div style="margin:3%;"></div>
	<jsp:include page="component/footer.jsp"></jsp:include>
	
	
	<!-- Load javascripts at bottom, this will reduce page load time -->
	<jsp:include page="component/js.jsp"></jsp:include>
	<!-- END BODY -->
</body>

</html>