
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

<!-- link to image for socio -->

<!--  include the all css components -->
<jsp:include page="component/css.jsp"></jsp:include>
<style>
canvas {
	-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
}
</style>

  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
  <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
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
            url: "user-session",
            dataType: "json",
            async: false
            }).responseText;
            
        var options = {
          title: 'Data Usage',
          curveType: 'none',
          hAxis: {
              title: "Time in week (${SubscriptionDetails.getStartdt() } - ${SubscriptionDetails.getExpirydt() })",
              ticks: [{v:0, f:'0'},{v:7, f:'week 1'},{v:14, f:'week 2'},{v:21, f:'week 3'},{v:30, f:'week 4'}]
            },
            vAxis: {
              title: 'Data in GigaBytes',
              ticks: [0, 20, 40, 60, 80, 100]
            },
			
           

        };
     
        // Create our data table out of JSON data loaded from server.
        var data = new google.visualization.DataTable(jsonData);
       
        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
    </script>

</head>


<body class="corporate">
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
                 <a class="site-logo" href="#">
                     <img src="corporate/img/logos/logo.png" alt="Stoic Zeno"> </a>
                 <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>
                 <!-- BEGIN NAVIGATION -->
                 <div class="header-navigation pull-right font-transform-inherit" style="font-size:12px">
                     <ul>
                         <li class="dropdown active"> </li>
                         <li class="active" ><a href="${pageContext.request.contextPath }/dashboard">Home</a></li>
                     <li  ><a href="${pageContext.request.contextPath }/billingPayment">Make Payment</a></li>  
                     <li><a href="${pageContext.request.contextPath }/service">Service Request</a></li> 
                     <li><a href="${pageContext.request.contextPath }/parental-control">Parental Control</a></li>
                     <li><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
                     <li><a href="${pageContext.request.contextPath }/logout">Logout</a></li>
                 </ul>
             </div>
             <!-- END NAVIGATION -->
         </div>
     </div>
     <!-- Header END -->

	<!-- BEGIN STEPS -->
	<!-- BEGIN STEPS -->
	<div class="row front-steps-wrapper"
		style="margin-left: 0.001%; width: 100%;">
		<div class="col-lg-12 col-md-12 col-sm-12 front-step-col">
			<div class="front-step front-stepv">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 margin-top-5 ">
						<div class="col-lg-12 col-md-12 col-sm-12 margin-top-5"
							style="padding-left: 10%;">
							<h2 style="font-family: Roboto; font-size: 45px">
								<strong>Experience transparency</strong>
							</h2>
							<h2 style="font-family: Roboto; font-size: 30px">
								Welcome, <strong style="color: #E17C80">${user_details.getFirst_name() }</strong>
								to your stoic zeno page
							</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END STEPS -->

	<div class="main">
		<div class="container">
			<div class="col-lg-12 col-md-12 col-sm-12" style="padding-top: 1%;">
				<form class="form-horizontal form-without-legend ">
					<div class="form-group">
						<div class="col-lg-12 col-md-12 col-sm-12 "
							style="padding-bottom: 16">
							<div class="col-md-6 div2" style="width: 50%">
								<p style="font-size: 10px; color: gray; line-height: .5">Zeno</p>
								<p style="font-size: 10px; color: gray; line-height: .5">Account
									No : ${user_details.getActid() }</p>
								<p style="font-size: 10px; color: gray; line-height: .5">Current
									Plan Name : ${SubscriptionDetails.getRatePlan() }</p>
								<!-- BEGIN PROGRESS BAR -->

								<div class="front-skills " style="padding-top: 5%">
									<p style="font-size: 10px; color: gray; line-height: 1">
										Consumed <strong style="color: #E17C80">${SubscriptionDetails.getDataUsed() } GB</strong> of <strong
											style="color: #E17C80">${SubscriptionDetails.getFUPLimit() } GB</strong>
									</p>
									<div class="progress">
										<div role="progressbar" class="progress-bar"
											style="width: ${SubscriptionDetails.getDataPercent()}%;"></div>
									</div>
								</div>
								<!-- END PROGRESS BAR -->
							</div>
							
							<div class="col-md-6 div2" style="margin-left: 20px;width: 48%; ">
								<p style="font-size: 10px; color: gray; line-height: .5">Payment</p>
								<p style="font-size: 10px; color: gray; line-height: .5">Account
									No : ${user_details.getActid() }</p>
								<p style="font-size: 15px; color: gray; line-height: 1">
									Rs <strong style="color: #E17C80">${invoiceDetails.getAmount() }/-</strong> is due in <strong
										style="color: #E17C80">${invoiceDetails.getRemainingDays() }
									</strong>days
								</p>
								<div class="front-skills" style="padding-top: 13%">
									<p style="font-size: 10px; color: gray; line-height: 1">Due
										Date : ${invoiceDetails.getDuedt() }</p>
								</div>
							</div>
							<div class="col-lg-12 div2"
								style="min-height: 200px; margin-bottom: 100px; margin-top: 20px">
								
<div id="curve_chart"  ></div>


							</div>
						</div>
				</form>
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

