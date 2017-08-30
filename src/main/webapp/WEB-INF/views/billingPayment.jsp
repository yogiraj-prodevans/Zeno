<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>
<head>
<meta charset="utf-8">
<title>STOIC ZENO</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">


<!-- link to image for socio -->
<meta property="og:url" content="-CUSTOMER VALUE-">
<link rel="shortcut icon" href="favicon.ico">


<!--  include the all css components -->
<jsp:include page="component/css.jsp"></jsp:include>

</head>





<body class="corporate" style="font-family: Roboto;">


	<!-- BEGIN TOP BAR -->
	<div class="pre-header">
		<div class="container">
			<div class="row">
				<!-- BEGIN TOP BAR MENU -->
				<div class="col-md-12 col-sm-12 additional-nav"
					style="font-size: 12px; font-color: 000000">
					<ul class="list-unstyled list-inline pull-right ">
						<li><i class=" fa fa-phone"></i><span>Lets Talk: +91
								9019602602</span></li>
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
			<a class="site-logo" href="#"> <img
				src="corporate/img/logos/logo.png" alt="Stoic Zeno">
			</a> <a href="javascript:void(0);" class="mobi-toggler"><i
				class="fa fa-bars"></i></a>
			<!-- BEGIN NAVIGATION -->
			<div class="header-navigation pull-right font-transform-inherit"
				style="font-size: 12px">
				<ul>
					<li class="dropdown active"></li>
					<li><a href="${pageContext.request.contextPath }/dashboard">Home</a></li>
					<li class="active"><a
						href="${pageContext.request.contextPath }/billingPayment">Make
							Payment</a></li>
					<li><a href="${pageContext.request.contextPath }/service">Service
							Request</a></li>
					<li><a
						href="${pageContext.request.contextPath }/parental-control">Parental
							Control</a></li>
					<li><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
					<li><a href="${pageContext.request.contextPath }/logout">Logout</a></li>
				</ul>
			</div>
			<!-- END NAVIGATION -->
		</div>
	</div>
	<!-- Header END -->



	<!-- BEGIN STEPS -->

	<div class="row">
		<div class="col-md-4 col-sm-12  firstRowBackImage " >
			<h1 style="color: white; margin-left: 15%; ">Bill payment</h1>
		</div>
		<div class="col-md-8 col-sm-12 firstRow"
			style="background-color: #ecf0f1;">
			<div class="col-md-6 col-sm-12">
				<h2 style="text-shadow: 0.2px 0.2px black; margin-top:6%"
					class="currentBillFontforiPhone5">Current bill INR
					${invoiceDetails.getAmount() }</h2>
			</div>
			<div class=" col-md-6 col-sm-12" style="margin-top: 1%;">
				<div class="col-md-12 col-xs-12">
					<a href="viewBill" class="btn billButton"> VIEW BILL </a>
				
					<a href="payment" class="btn billButton"> PAY BILL </a>
				</div>

			</div>

		</div>
	</div>



	<div class="container" style="padding-left: 5%;padding-right: 5%">
		<div  style="margin-bottom:4%;">

			<div class="col-md-4 col-sm-6">
				<div class="mainBlock4 " style="background-color: #2980b9;">
					<h3 class="whiteShadow">Your current plan</h3>
					<h5 class="whiteShadow" style="margin-top: 8%;">Plan Name:
						${SubscriptionDetails.getRatePlan() }</h5>
					<h5 class="whiteShadow">Basic- INR 849 per Month</h5>
					<br>

					<h4 class="whiteShadow">Plan Content</h4>
					<h5 class="whiteShadow">1. ${SubscriptionDetails.getFUPLimit() }GB
						Data</h5>
					<h5 class="whiteShadow">2. 512Kbps Post FUP Speed Data</h5>
					<br>
				</div>
			</div>

			<div class="col-md-4 col-sm-6">
				<div class="mainBlock4 " style="background-color: #ffbb19;">
					<h3 class="whiteShadow">Your One8 account</h3>
					<h5 style="color: black; margin-top: 8%;" class="blackShadow">Account
						no: ${user_details.getActid() }</h5>
					<h5 style="color: black;" class="blackShadow">Bill period-
						${SubscriptionDetails.getStartdt() } -
						${SubscriptionDetails.getExpirydt() }</h5>
					<br>

					
								<span class="blackShadow" style="color: black; margin-top: 67%;"><h4>Usage</h4></span>
								<span class="blackShadow" style="color: black; ">
									<h2><strong>${SubscriptionDetails.getDataUsed() }GB</strong>
								</h2></span>
					<div class=" progress">
						<div class="progressbarColor"
							style="width: ${SubscriptionDetails.getDataPercent()}%;"></div>
					</div>
				</div>
			</div>

			<div class="col-md-4 col-sm-6">
				<div class="mainBlock4 " style="background-color: #e74c3c;">
					<h3 class="whiteShadow">Payment</h3>
					<h5 class="whiteShadow" style="margin-top: 8%;">Account no:
						${user_details.getActid() }</h5>
					<h3 class="whiteShadow">INR ${invoiceDetails.getAmount() }</h3>
					<h3 class="whiteShadow" style="margin-top: 10px;">Due in
						${invoiceDetails.getRemainingDays() } Days</h3>
					<br>
					<h5 class="whiteShadow">Due Date: ${invoiceDetails.getDuedt() }</h5>
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