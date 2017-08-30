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

<link href="https://fonts.googleapis.com/css?family=Roboto:300"
	rel="stylesheet">

<jsp:include page="component/css.jsp"></jsp:include>


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


	<div class="row">
		<div class="col-md-4 col-sm-12  firstRow billPaymentImage ">
			<h1 style="color: white; margin-left: 15%;">Bill payment</h1>
		</div>
		<div class="col-md-8 col-sm-12 firstRow"
			style="background-color: #ecf0f1;">
			<div class="col-md-6 col-sm-12">

				<h1 style="color: black;" class="currentBillFontforiPhone5">Current
					bill INR ${invoiceDetails.getAmount() }</h1>

			</div>
			<div class=" col-md-6 col-sm-12" style="margin-top: 2%;">
				
					<a href="viewBill" class="btn billButton"> VIEW BILL </a> <a
						href="payment" class="btn billButton"> PAY BILL </a>
				

			</div>

		</div>
	</div>



	<div class="container" style="">
		<div style="margin-bottom: 4%;">


			<div class="col-md-4  col-sm-6">
				<div class="mainBlock4" style="background-color: #2980b9;">
					<h3 class="pb-20">Your current plan</h3>
					<h4>Plan Name: ${SubscriptionDetails.getRatePlan() }</h4>
					<h4 class="pb-30">Basic- INR 849 per Month</h4>
					<h4>Plan Content</h4>
					<h4>1. ${SubscriptionDetails.getFUPLimit() }GB Data</h4>
					<h4>2. 512Kbps Post FUP Speed Data</h4>

					
				</div>
			</div>


			<div class="col-md-4 col-sm-6">
				<div class="mainBlock4" style="background-color: #ffbb19;">
					<h3 class="pb-20">Your One8 account</h3>
					<h4 style="color: black;">Account id:
						${user_details.getActid() }</h4>
					<h4 style="color: black;" class="pb-30">Bill period-
						${SubscriptionDetails.getStartdt() } -
						${SubscriptionDetails.getExpirydt() }</h4>
					
								<h4 class="blackShadow" style="color: black; ">Usage</h4>
							
								<h3 class="blackShadow" style="color: black; ">
									${SubscriptionDetails.getDataUsed() }GB</h3>
							

					<div class=" progress">
						<div class="progressbarColor"
							style="width: ${SubscriptionDetails.getDataPercent()}%;"></div>
					</div>
				</div>
			</div>


			<div class="col-md-4 col-sm-6">
				<div class="mainBlock4" style="background-color: #e74c3c;">
					<h3 class="pb-20">Payment</h3>
					<h4 class="pb-20">Account id: ${user_details.getActid() }</h4>
					<h2>INR ${invoiceDetails.getAmount() }</h2>
					<h2 class="pb-20">Due in ${invoiceDetails.getRemainingDays() }
						days</h2>
					<h4>Due Date: ${invoiceDetails.getDuedt() }</h4>

				</div>
			</div>
		</div>
	</div>





	<!-- included pop up -->
	<jsp:include page="component/pop-up.jsp"></jsp:include>

	<div style="padding: 3%"></div>
	<jsp:include page="component/footer.jsp"></jsp:include>


	<!-- Load javascripts at bottom, this will reduce page load time -->
	<jsp:include page="component/js.jsp"></jsp:include>
	<!-- END BODY -->
</body>
</html>