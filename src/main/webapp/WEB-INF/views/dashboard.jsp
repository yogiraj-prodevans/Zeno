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
                margin-top: 10%;
                max-width: 95%;
            }

            .firstRow{
                background-image: url('corporate/img/back.png');
                padding-left: 5%;
            }
            .div2{
                max-width : unset;
                margin-top:7.5%;
                min-height:260px;
                border : none;

                padding: unset;
                -webkit-box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
                -moz-box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
                box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
            }
            .firstRow{
                background-image: url('img/red_small.png');
                background-size: cover;
            }
        </style>

        <script type="text/javascript"
        src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript"
        src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

        <script type="text/javascript">
            google.charts.load('current', {
                'packages': ['corechart', 'line']
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
                    url: "user-session",
                    dataType: "json",
                    async: false
                }).responseText;

                var options = {
                    title: 'Data Usage',
                    curveType: 'none',

                    colors: ['#ff6f00', '#00c853', '#2196f3'],
                    hAxis: {
                        title: "Time in week (${SubscriptionDetails.getStartdt() } - ${SubscriptionDetails.getExpirydt() })",
                        ticks: [{
                                v: 0,
                                f: ''
                            }, {
                                v: 30,
                                f: ''
                            }]
                    },
                    vAxis: {
                        title: 'Data in GigaBytes',
                        ticks: [0]
                    },
                    pointSize: 5,

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
        <div class="row">
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


<div class="container1">
<div class="col-md-4 col-sm-12  firstRow pt-40" style="">
	<h2 style="color: white; ">Manage your network</h2>
</div>
<div class="col-md-8 col-sm-12  pt-40"
	style="background-color: #ecf0f1;min-height: 116px;">
	<div class="col-md-12 col-sm-12">
            <h2 style="color: black;" class="currentBillFontforiPhone5">Welcome ${user_details.getFirst_name() }, to your One8 page</h2>
        </div>
    </div>
</div>


    <div class="container">
        <div class="row col-md-12" style="margin-bottom: 4%;">

            <div class="col-md-4 ">

                <div class="mainBlock4" style="background-color: #F44336;">
                    <h3 class="pb-10">Your One8 account</h3>
                    <h4 >Account Id :
                        ${user_details.getActid() }</h4>
                    <h4>Plan Name: ${SubscriptionDetails.getRatePlan() }</h4>

                    <div class="pt-20 pb-10">
                        <span class="blackShadow font-h4"
                              style="margin-right: 10px;">Usage</span> <span
                              class="blackShadow font-h2" ">
                            ${SubscriptionDetails.getDataUsed() }GB</span>

                    </div>


                    <div class=" progress ">
                        <div class="progressbarColor"
                             style="width: ${SubscriptionDetails.getDataPercent()}%;"></div>
                    </div>
                    <h2 class="pt-20">&#8377; ${invoiceDetails.getAmount() }</h2>
                    <h4 >Due in ${invoiceDetails.getRemainingDays() }
                        days</h4>



                </div>
            </div>
            <div class="col-md-8 " style="padding:unset;">
                <div class="">
                    <div class="div2" id="curve_chart"></div>
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

