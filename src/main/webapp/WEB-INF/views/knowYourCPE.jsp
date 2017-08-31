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
<link rel="shortcut icon" href="favicon.ico">

<!--  include the all css components -->
<jsp:include page="component/css.jsp"></jsp:include>

<style>
.leftSidePanelIMG
{
	width: 95%;
	height: 25%;
}
.backPanelIMG
{
	width: 95%;
	height: 48%;
}
@media (max-width : 750px) 
{
	.leftSidePanelIMG
	{
		height: 20%;
		padding-bottom: 50px;	
	}
	.backPanelIMG
	{
		width: 95%;
		height: 25%;
	}
}
</style>


</head>

<body class="corporate" style="font-family: Roboto;">

            <!-- BEGIN HEADER -->
            <div class="header">
                <div class="container">
                    <a class="site-logo" href="#">
                        <img src="corporate/img/logos/logo.png" alt="Stoic Zeno"> </a>
                    <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>
                    <!-- BEGIN NAVIGATION -->
                    <div class="header-navigation pull-right font-transform-inherit" style="font-size:12px">
                        <ul>
					<li class="dropdown active"></li>
					<li><a href="${pageContext.request.contextPath }/dashboard">HOME</a></li>
					<li><a href="${pageContext.request.contextPath }/billingPayment">MAKE PAYMENT</a></li>
					<li><a href="${pageContext.request.contextPath }/service">SERVICE REQUEST</a></li>
					<li><a href="${pageContext.request.contextPath }/profile">PROFILE</a></li>
					<li><a href="${pageContext.request.contextPath }/logout">LOGOUT</a></li>
				</ul>
                </div>
                <!-- END NAVIGATION -->
            </div>
        </div>



<div class="col-md-12 firstRow pt-20" style="background-image: url('corporate/img/back.png');">
    <h1 style="margin-left:5%;">Know your CPE</h1>
</div>    
    
<div class="container">
	<div class="row">
		<div class="col-md-12 col-sm-12 pt-40">

			<div class="col-md-6 col-sm-6">
				<div class="row pb-20" >
					<div class="col-md-12">
						<h3 style="font-size:22px;text-align: center;">LEFT SIDE PANEL</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<img class="leftSidePanelIMG" alt="Left Side Panel" src="corporate/img/leftPanel1.JPG" >
					</div>
				</div>
			</div>
			
			<div class="col-md-6 col-sm-6">
				<div class="row pb-20" >
					<div class="col-md-12">
						<h3 style="font-size:22px;text-align: center;">BACK PANEL</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12 col-sm-12">
						<img class="backPanelIMG" alt="Back Panel" src="corporate/img/backSide1.JPG" >
					</div>
				</div>
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