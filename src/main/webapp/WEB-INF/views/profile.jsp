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
	padding-top:30px;
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
	color:black;
	margin: 5%;
	padding-left:5%;
	max-height:unset;
	-webkit-box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
	-moz-box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
	box-shadow: 2px 4px 8px 0px rgba(127,140,141,1);
}
@media (max-width : 650px) 
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
	.mainBlock4
	{
		max-height: 100%;
		min-width: 100%;
		margin-top: 5%;
	}
}
</style>

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
	
<div class="col-md-12 firstRow " style="background-image: url('corporate/img/back.png');">
    <h1 style="margin-left: 4%;">Login contact and details</h1>
</div>

<div class="container" style="margin-bottom: 5%;">
	<div class="col-md-121">
		<div class="col-md-6 col-sm-8">
			<div class="mainBlock4" style="background-color: #ffb81c">
				<h2 class="pb-20 pt-20">Account details</h2>
				
				<div class="pb-10">
					<div class="col-md-4 col-xs-4">
						<h3 class="font-h3">Account ID:</h3>
					</div>
					<div class="col-md-7 col-xs-8">
						<h3 class="font-h3">${profile.getActid() }</h3>
					</div>
				</div>
				<div class="pb-10">
					<div class="col-md-4 col-xs-4">
						<h3 class="font-h3">Password:</h3>
					</div>
					<div class="col-md-7 col-xs-8">
						<h3 class="font-h3">&#9679; &#9679; &#9679; &#9679; &#9679; &#9679; &#9679; &#9679;</h3>
					</div>
				</div>
				<div class="pb-10">
					<div class="col-md-7 col-xs-5">
					</div>
					<div class="col-md-5 col-xs-7  pt-10">
						<a href="#changePassword" data-toggle="modal"  style="color:black;">
							<h4>Edit password &nbsp &nbsp <img alt="pencil" src="img/pencil.png" style="width:30px;height: 30px;margin-bottom: 10%;"></h4>
						</a>
					</div>
				</div>
			</div>
		</div>
		
		<div class="col-md-6 col-sm-8">
			<div class="mainBlock4" style="background-color: #ffb81c">
				
				<div class="pb-10 pt-30">
					<div class="col-md-4 col-xs-4">
						<h3 class="font-h3">Mobile:</h3>
					</div>
					<div class="col-md-7 col-xs-8">
						<h3 class="font-h3">${profile.getMobileno() }</h3>
					</div>
				</div>
				<div class="pb-10">
					<div class="col-md-4 col-xs-4">
						<h3 class="font-h3">Email ID:</h3>
					</div>
					<div class="col-md-7 col-xs-8">
						<h3 class="font-h3">${profile.getEmail() }</h3>
					</div>
				</div>
				<div class="pb-10">
					<div class="col-md-4 col-xs-4">
						<h3 class="font-h3">Address:</h3>
					</div>
					<div class="col-md-7 col-xs-8">
						<h3 class="font-h3">${profile.getAddress() }</h3>
					</div>
				</div>
			</div>
		</div>
		
	</div>
</div>


<!-- Modal Code for Change Password -->
<div id="changePassword" class="modal fade" style="margin-top:5%;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color:#FFF">
                	<img alt="" src="img/close.png" style="height: 25px;width: 25px;">
                </button>
                <h4 class="modal-title" style="color:white;background-color: #2980b9;padding-left: 5%;">Change Password</h4>
            </div>

            <div class="modal-body" style="margin-bottom:20%">
              <div class="col-md-12 col-sm-12" style="margin-top:3%">

					<form:form role="form" action="profile/change-pass" method="post" modelAttribute="change_pass">
						<form:input type="hidden"  style="margin-bottom:40px;" path="actid" readonly="true" />
						<form:input path="password" type="password" style="margin-bottom:30px;" placeholder="Enter Password" required="true" value=""/>
						<form:input path="confirm_password" type="password" style="margin-bottom:20px;" placeholder="Confirm Password" required="true" value=""/>
						<button type="submit" class="btn billButton pull-right" style="">UPDATE PASSWORD</button>
					</form:form>
					
                 
              </div><!-- Col-md-12 -->
            </div><!-- Modal Body -->
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