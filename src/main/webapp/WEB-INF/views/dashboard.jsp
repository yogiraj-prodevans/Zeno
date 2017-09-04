<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="true"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
<title>STOIC ZENO</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta content="Stoic Zeno User Portal" name="description">
<meta content="Stoic Zeno User Portal Keywords" name="keywords">

<!--  include the all css components -->
<jsp:include page="component/css.jsp"></jsp:include>



<style>
canvas {
	-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
}

.mainBlock4{
	max-width: unset;
	margin-top: 5%;
}

.firstRow{
		background-image: url('corporate/img/back.png');
		padding-left: 5%;
}
.div2{
	min-height:300px;
}
</style>

<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript"
	src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'corechart', 'line' ]
	});
	google.charts.setOnLoadCallback(drawChart);

	function drawChart() {
		/* var data = google.visualization.arrayToDataTable([
		   ['Year', 'Sales', 'Expenses', 'other'],
		   ['2004',  1000,      400, 500],
		   ['2005',  1170,      460, 300],
		   ['2006',  660,       1120, 200],
		   ['2007',  1030,      540, 100]
		 ]);*/
		var jsonData = $.ajax({
			url : "user-session",
			dataType : "json",
			async : false
		}).responseText;

		var options = {
			title : 'Data Usage',
			curveType : 'none',
			height : 300,
			colors: ['#ff6f00', '#00c853', '#2196f3'],
			hAxis : {
				title : "Time in week (${SubscriptionDetails.getStartdt() } - ${SubscriptionDetails.getExpirydt() })",
				ticks : [ {
					v : 0,
					f : ''
				},  {
					v : 30,
					f : ''
				} ]
			},
			vAxis : {
				title : 'Data in GigaBytes',
				ticks : [ 0 ]
			},
			pointSize : 5,
			

		};

		// Create our data table out of JSON data loaded from server.
		var data = new google.visualization.DataTable(jsonData);

		var chart = new google.visualization.LineChart(document
				.getElementById('curve_chart'));

		chart.draw(data, options);
	}
</script>




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
					<li class="active"><a
						href="${pageContext.request.contextPath }/dashboard">HOME</a></li>
					<li><a
						href="${pageContext.request.contextPath }/billingPayment">MAKE
							PAYMENT</a></li>
					<li><a href="${pageContext.request.contextPath }/service">SERVICE
							REQUEST</a></li>

					<li><a href="${pageContext.request.contextPath }/profile">PROFILE</a></li>
					<li><a href="${pageContext.request.contextPath }/logout">LOGOUT</a></li>
				</ul>
			</div>
			<!-- END NAVIGATION -->
		</div>
	</div>
	<!-- Header END -->

	<div class="col-md-12 firstRow pt-20" style="background-image: url('img/red_long.png');">
		<h3 style="color: white;">Experience transparency</h3>
		<h2 style="font-family: Roboto; font-size: 30px; color: white;">
			Welcome, <strong style="color: #ffbb19">${user_details.getFirst_name() }</strong>
			to your stoic zeno page
		</h2>
	</div>


	<div class="container">
		<div class="row col-md-12" style="margin-bottom: 4%;">

			<div class="col-md-6 ">
				
					<div class="mainBlock4" style="background-color: #2980b9;">
						<h3 class="pb-20">Your current plan</h3>
						<h4>Plan Name: ${SubscriptionDetails.getRatePlan() }</h4>
						<h4 class="pb-30">Basic- INR 849 per Month</h4>
						<h4>Plan Content</h4>
						<h4>1. ${SubscriptionDetails.getFUPLimit() }GB Data</h4>
						<h4>2. 512Kbps Post FUP Speed Data</h4>


				</div>
			</div>
			<div class="col-md-6 ">
				<div>
					<div class="mainBlock4" style="background-color: #ffbb19;">
						<h3 class="pb-20">Your One8 account</h3>
						<h4 style="color: black;">Account Id :
							${user_details.getActid() }</h4>
						<h4 style="color: black;" class="pb-40">Bill period-
							${SubscriptionDetails.getStartdt() } -
							${SubscriptionDetails.getExpirydt() }</h4>

						<div style="margin-bottom: 10px;">
							<span class="blackShadow font-h4"
								style="color: black; margin-right: 10px;">Usage</span> <span
								class="blackShadow font-h2" style="color: black;">
								${SubscriptionDetails.getDataUsed() }GB</span>

						</div>


						<div class=" progress">
							<div class="progressbarColor"
								style="width: ${SubscriptionDetails.getDataPercent()}%;"></div>
						</div>
					</div>
				</div>

			</div>

			<div class="col-md-12 " style="margin-top: 20px; min-height: 90%;">

				<div class="div2" id="curve_chart"></div>

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

