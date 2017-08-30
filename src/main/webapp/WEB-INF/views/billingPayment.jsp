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

<link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet">

<!--  include the all css components -->
<jsp:include page="component/css.jsp"></jsp:include>
<jsp:include page="component/Fixedblock_PopUp.jsp"></jsp:include>
<jsp:include page="component/ExternalCSS.jsp"></jsp:include>

</head>


<style>
.billPayment {
	color: white;
}

.greyBlock {
	background-color: #bdc3c7;
}

/* 3 blocks start here */
.col-md-4 {
	padding-left: 1px;
	padding-right: 1px;
}

.mainBlock3 {
	max-width: 92%;
	min-height: 45%;
	color: white;
	margin-top: 10%;
	padding-top: 2%;
	padding-left: 7%;
	padding-bottom: 2%;
}
/* 3 blocks End here */

.firstRowBackImage {
	background-image: url('corporate/img/back.png');
	background-repeat: no-repeat, no-repeat, x-repeat;
	min-height: 90px;
}

.billButtonBlock1 {
	width: 180%;
	margin: 20%;
	margin-top: 10%;
}

.billButtonBlock2 {
	width: 180%;
	margin: 20%;
	margin-left: 110%;
}

.billButton {
	background-color: #e74c3c;
	color: #ecf0f1;
	min-height: 25px;
	text-align: center;
	padding: 2%;
	margin-top: 10px;
	margin-bottom: 10px;
	font-size: 20px;
	border-radius: unset;
}

.progress {
	height: 25px;
	width: 90%;
	margin-bottom: 20px;
	overflow: hidden;
	border-radius: 1px;
	background-color: #f5f5f5;
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
}

.progressbarColor {
	background-color: #7f8c8d;
	height: 100%;
}

.whiteShadow {
	/*text-shadow: 0.2px 0.2px white;*/
	
}

.blackShadow {
	text-shadow: 0.2px 0.2px black;
}

/* iphone 6 plus*/
@media ( max-width : 530px) {
	.mainBlock3 {
		width: 88%;
		min-height: 40%;
		margin: 5%;
	}
	.billButton {
		margin-top: 5%;
	}
	.billButtonBlock1 {
		margin-left: 5%;
	}
	.billButtonBlock2 {
		margin-top: 5%;
	}
	.firstRow {
		min-width: 100%;
		height:120px;
		
	}
}

/* iphone 5*/
@media ( max-width : 320px) {
	.currentBillFontforiPhone5 {
		font-size: 26px;
		margin-left: 4px;
	}
	.mainBlock3 {
		width: 88%;
		min-height: 45%;
		margin: 5%;
	}
	.billButton {
		margin-top: 5%;
		max-width: 120px;
	}
	.billButtonBlock1 {
		margin-left: 5%;
	}
	.billButtonBlock2 {
		margin-top: 5%;
		margin-left: 60px;
	}
}

/* iPad*/
@media ( max-width : 768px) {
	.firstRow {
		min-width: 100%;
		height:150px;
		
	}
	
	
	.mainBlock3 {
		width: 88%;
		min-height: 30%;
		margin: 5%;
	}
	.billButton {
		margin-top: 5%;
		max-width: 120px;
	}
	.billButtonBlock1 {
		margin-left: 5%;
	}
	.billButtonBlock2 {
		margin-top: 5%;
		margin-left: 60%;
	}
}

</style>



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



	<!-- BEGIN STEPS -->

	<div class="row">
		<div class="col-md-4 col-sm-12  firstRowBackImage">
			<h1 style="color:white;">Bill payment</h1>
		</div>
		<div class="col-md-8 col-sm-12 firstRow"
			style="background-color: #ecf0f1;">
			<div class="col-md-6 col-sm-12">
				<h1 style="color:black;" class="currentBillFontforiPhone5">Current bill INR
					${invoiceDetails.getAmount() }</h1>
			</div>
			<div class=" col-md-6 col-sm-12">
				<div class="col-md-12 col-xs-12">
					<a href="viewBill" class="btn billButton"> VIEW BILL </a>
				
					<a href="payment" class="btn billButton"> PAY BILL </a>
				</div>

			</div>

		</div>
	</div>



	<div class="container">
		<div class="row col-md-12" style="margin-bottom:4%;">

			<div class="col-md-4 ">
				<div class="mainBlock3" style="background-color: #2980b9;">
					<h3 class="pb-20">Your current plan</h3>
					<h4>Plan Name: ${SubscriptionDetails.getRatePlan() }</h4>
					<h4 class="pb-30">Basic- INR 849 per Month</h4>
					<h4>Plan Content</h4>
					<h4>1. ${SubscriptionDetails.getFUPLimit() }GB Data</h4>
					<h4>2. 512Kbps Post FUP Speed Data</h4>
					<br>
				</div>
			</div>

			<div class="col-md-4">
				<div class="mainBlock3" style="background-color: #ffbb19;">
					<h3 class="pb-20">Your One8 account</h3>
					<h4 style="color: black;">Account no: ${user_details.getActid() }</h4>
					<h4 style="color: black;" class="pb-30">Bill period-
						${SubscriptionDetails.getStartdt() } -
						${SubscriptionDetails.getExpirydt() }</h4>
					<table style="margin: 0%;">
						<tr>
							<td>
								<h4 class="blackShadow" style="color: black; margin-top: 67%;">Usage</h4>
							</td>
							<td>
								<h3 class="blackShadow" style="color: black; margin-left: 20%;">
									${SubscriptionDetails.getDataUsed() }GB
								</h3>
							</td>
						</tr>
					</table>
					<div class=" progress">
						<div class="progressbarColor"
							style="width: ${SubscriptionDetails.getDataPercent()}%;"></div>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="mainBlock3" style="background-color: #e74c3c;">
					<h3 class="pb-20">Payment</h3>
					<h4 class="pb-20">Account no: ${user_details.getActid() }</h4>
					<h2>INR ${invoiceDetails.getAmount() }</h2>
					<h2 class="pb-20">Due in ${invoiceDetails.getRemainingDays() } days</h2>
					<h4>Due Date: ${invoiceDetails.getDuedt() }</h4>
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