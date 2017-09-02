
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

.mainBlock4
{
	color:black;
	width: 85%;
	margin: 5%;
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
	.mainBlock4
	{
		max-height: 100%;
		min-width: 92%;
		margin-left: 1%;
		margin-top: 5%;
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
	
<div class="col-md-12 firstRow " style="background-image: url('corporate/img/back.png');">
    <h1 style="margin-left:5%;">Login contact and details.</h1>
</div>

<div class="container">
    
    	<div class="col-md-3">
    	</div>
        <div class="col-md-6">
            <div class="mainBlock4">
            	<div class="row">
            		<h3>Account details</h3>
            	</div>
            	<div class="row">
	            	<div class="col-md-4 col-xs-4">
	            		<h4>Account no:</h4>
	            	</div>
	            	
	            	<div class="col-md-8 col-xs-8">
	            		<h4 class="">${profile.getActid() }</h4>
	            	</div>
	            </div>
	            <div class="row">
	            	<div class="col-md-4 col-xs-4">
	            		<h4>Password:</h4>
	            	</div>
	            	
	            	<div class="col-md-8 col-xs-8" style="color:black">
	            		<a href="#changePassword" data-toggle="modal"  >
	            			<strong style="color:black;" class="">***********</strong>
	            		</a>
	            	
	            		<a href="#changePassword" data-toggle="modal" style="color:black;" >
	            			Edit <span class="glyphicon glyphicon-pencil"></span>
	            		</a>
	            	</div>
	            </div>
	            <div class="row">
	            	<div class="col-md-4 col-xs-4">
	            		<h4>Mobile:</h4>
	            	</div>
	            	
	            	<div class="col-md-8 col-xs-8">
	            		<h4 class="">${profile.getMobileno() }</h4>
	            	</div>
	            </div>
	            <div class="row">
	            	<div class="col-md-4 col-xs-4">
	            		<h4>Email ID:</h4>
	            	</div>
	            	
	            	<div class="col-md-8 col-xs-8">
	            		<h4 class="">${profile.getEmail() }</h4>
	            	</div>
	            </div>
	            <div class="row">
	            	<div class="col-md-4 col-xs-4">
	            		<h4>Address:</h4>
	            	</div>
	            	
	            	<div class="col-md-8 col-xs-8">
	            		<h4 class="">${profile.getAddress() }</h4>
	            	</div>
	            </div>
			
            </div>
        </div>
        <div class="col-md-3">
    	</div>
</div>

	

<!-- Modal Code for Change Password -->
<div id="changePassword" class="modal fade" style="margin-top:5%;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color:#FFF">&times;</button>
                <h4 class="modal-title">Change Password</h4>
            </div>

            <div class="modal-body" style="margin-bottom:20%">
              <div class="col-md-12 col-sm-12" style="margin-top:3%">

					<form:form role="form" action="profile/change-pass" method="post" modelAttribute="change_pass">
						<form:input type="hidden"  style="margin-bottom:40px;" path="actid" readonly="true" />
						<form:input path="password" type="password" style="margin-bottom:30px;" placeholder="Enter Password" required="true"/>
						<form:input path="confirm_password" type="password" style="margin-bottom:30px;" placeholder="Confirm Password" required="true"/>
						<button type="submit" class="btn billButton">Update Password</button>
					</form:form>
					
                 
              </div><!-- Col-md-12 -->
            </div><!-- Modal Body -->
        </div>
    </div>
</div>



	
	
	<jsp:include page="component/pop-up.jsp"></jsp:include>
	<div style="margin:5%;"></div>
	<jsp:include page="component/footer.jsp"></jsp:include>
	
	
	<!-- Load javascripts at bottom, this will reduce page load time -->
	<jsp:include page="component/js.jsp"></jsp:include>
	<!-- END BODY -->
</body>

</html>