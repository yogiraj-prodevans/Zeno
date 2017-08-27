
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
<!-- <jsp:include page="component/css.jsp"></jsp:include> -->
<jsp:include page="component/Fixedblock_PopUp.jsp"></jsp:include>

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
      google.charts.load('current', {'packages':['corechart','line']});
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
            pointSize: 5, 
           

        };
     
        // Create our data table out of JSON data loaded from server.
        var data = new google.visualization.DataTable(jsonData);
       
        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
    </script>


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
	margin-top: 4%;
	padding-top: 2%;
	padding-left: 7%;
	padding-bottom: 2%;
}
/* 3 blocks End here */
.firstRow {
	min-height: 90px;
	padding-top: 10px;
}

.firstRowBackImage {
	background-image: url('corporate/img/back.png');
	background-repeat: no-repeat, no-repeat, x-repeat;
	min-height: 90px;
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

<div class="col-md-12 firstRow" style="background-color:#ffbb19;padding-left:5%;padding-bottom:0.5%;">
    <h3 style="color:white;">Experience transparency</h3>
    <h2 style="font-family: Roboto; font-size: 30px;color:white;">
		Welcome, <strong style="color: #e74c3c">${user_details.getFirst_name() }</strong>
		to your stoic zeno page
	</h2>
</div>


	<div class="container">
		<div class="row col-md-12" style="margin-bottom:4%;">

			<div class="col-md-4 ">
				<div class="mainBlock3" style="background-color: #2980b9;">
					<h3 class="whiteShadow">Your One8 account</h3>
					<h5 class="whiteShadow" style="margin-top: 8%;">Account
						no: ${user_details.getActid() }</h5>
					<h5 class="whiteShadow">Plan Name:
						${SubscriptionDetails.getRatePlan() }</h5>
					<table style="margin: 0%;">
						<tr>
							<td>
								<h4 class="blackShadow" style="color: black; margin-top: 67%;">Usage</h4>
							</td>
							<td>
								<h2 class="blackShadow" style="color: black; margin-left: 20%;">
									<strong>${SubscriptionDetails.getDataUsed() }GB</strong>
								</h2>
							</td>
						</tr>
					</table>
					<div class=" progress">
						<div class="progressbarColor" style="width: ${SubscriptionDetails.getDataPercent()}%;">
						</div>
					</div>	
					<h3 class="whiteShadow">INR ${invoiceDetails.getAmount() } Due in
						${invoiceDetails.getRemainingDays() } Days
					</h3>
					<h5 class="whiteShadow">Due Date: ${invoiceDetails.getDuedt() }</h5>
				</div>
			</div>

			<div class="col-md-8">
				<div class="col-lg-12 div2" style="margin-top: 20px;min-height:90%;">
					<div id="curve_chart">
					</div>
				</div>
			</div>

		</div>
	</div>





	<!-- included pop up -->
	<jsp:include page="component/pop-up.jsp"></jsp:include>
	<!-- included pop up -->
        <jsp:include page="component/pop-up.jsp"></jsp:include>
            
        <jsp:include page="component/footer.jsp"></jsp:include>    
            
            <!-- Load javascripts at bottom, this will reduce page load time -->
        <jsp:include page="component/js.jsp"></jsp:include>
        <!-- END BODY -->
    </body>

</html>

