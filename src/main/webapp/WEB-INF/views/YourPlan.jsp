<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
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
.col-md-4
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
	width :100%;
	max-height:230px;
	color:white;
	padding:4%;
	background-color: #FFB819;
	text-align: center;
	-webkit-box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
	-moz-box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
	box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
}
.mainBlock4_1
{
	width :unset;
	min-height:unset;
	color:white;
	margin-left:15%;
	margin-right:3%;
	margin-top:5%;
	padding:4%;
	background-color: #FFB819;
	text-align: center;
	-webkit-box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
	-moz-box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
	box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
}
.mainBlock4_2
{
	width :unset;
	min-height:unset;
	color:white;
	margin-right:15%;
	margin-left:3%;
	margin-top:5%;
	padding:4%;
	background-color: #e74c3c;
	text-align: center;
	-webkit-box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
	-moz-box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
	box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
}
.fs-44
{
	font-size: 44px;
}
@media (max-width : 680px) 
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
		min-height: 230px;
		max-height:23px;
		min-width: 94%;
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
	<div class="col-md-12">
		<h1>Your plan</h1>
	</div>
</div>

<div class="container">
	<div class="col-md-12">
		<div class="col-md-2 col-xs-1">
		</div>
		<div class="col-md-4 col-xs-5">
			<div class="mainBlock4">
				<h1 class="pb-40">Basic</h1>
				<h1 class="fs-44">INR 849/-</h1>
				<h3 class="pb-10">per month</h3>
			</div>
		</div>
		<div class="col-md-4 col-xs-5">
			<div class="mainBlock4">
				<h1 class="fs-44">40 GB</h1>
				<h4 class="pb-40">data</h4>
				<h3>512 Kbps</h3>
				<h3>Post FUP speed</h3>
			</div>
		</div>
		<div class="col-md-2 col-xs-1">
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