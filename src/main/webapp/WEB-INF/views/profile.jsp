
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

.mainBlock3 .row{
	margin-bottom: 10px;
}

.firstRow{
		background-image: url('corporate/img/back.png');
		padding-left: 5%;
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
	
<div class="col-md-12 firstRow " >
    <h1 class="pt-40" style="color: white; margin-left: 5%;">Login Contact and Details</h1>
</div>    

<div class="container">
    
        <div class="col-md-6 col-md-offset-3">
            <div class="mainBlock3" style="background-color: #2980b9;">
            	<div class="row">
	            	<div class="col-md-4">
	            		<h4 class="whiteShadow">Account no:</h4>
	            	</div>
	            	<div class="col-md-8">
	            		<h4 class="whiteShadow">${profile.getActid() }</h4>
	            	</div>
	            </div>
	            <div class="row">
	            	<div class="col-md-4">
	            		<h4 class="whiteShadow">Password:</h4>
	            	</div>
	            	<div class="col-md-8">
	            		
	            			<a href="#changePassword" data-toggle="modal" class="font-h4 whiteShadow " >
	            				*******
	            			
	            				<span class="glyphicon glyphicon-pencil font-h4 whiteShadow" >(CHANGE PASSWORD)</span>
	            			</a>
	            		
	            	</div>
	            </div>
	            <div class="row">
	            	<div class="col-md-6">
	            		<h4 class="whiteShadow">Mobile:</h4>
	            	</div>
	            	<div class="col-md-6">
	            		<h4 class="whiteShadow">${profile.getMobileno() }</h4>
	            	</div>
	            </div>
	            <div class="row">
	            	<div class="col-md-6">
	            		<h4 class="whiteShadow">Email ID:</h4>
	            	</div>
	            	<div class="col-md-6">
	            		<h4 class="whiteShadow">${profile.getEmail() }</h4>
	            	</div>
	            </div>
	            <div class="row">
	            	<div class="col-md-6">
	            		<h4 class="whiteShadow">Address:</h4>
	            	</div>
	            	<div class="col-md-6">
	            		<h4 class="whiteShadow">${profile.getAddress() }</h4>
	            	</div>
	            </div>
			
            </div>
        </div>
        
       
    </div>

	

<!-- Modal Code for Change Password -->
<div id="changePassword" class="modal fade" style="margin-top:10%;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color:#FFF">&times;</button>
                <h4 class="modal-title">Change Password</h4>
            </div>

            <div class="modal-body" style="margin-bottom:20%">
              <div class="col-md-12 col-sm-12" style="margin-top:3%">

					<form:form role="form" action="profile/change-pass" method="post" modelAttribute="change_pass">
						<form:input type="hidden" path="actid" readonly="true" />
						<strong>Password :</strong> 
						<form:input path="password" type="password" class="form-control" placeholder="Enter Password" required="true"/>
						<br>
						<strong>Confirm Password :</strong> 
						<form:input path="confirm_password" type="password" class="form-control" placeholder="Confirm Password" required="true"/>
						<br>
						<button type="submit" class="btn btn-primary">Update Password</button>
					</form:form>
					
                 
              </div><!-- Col-md-12 -->
            </div><!-- Modal Body -->
        </div>
    </div>
</div>



	
	
	<jsp:include page="component/pop-up.jsp"></jsp:include>
	
	<div style="padding: 7%"></div>
	<jsp:include page="component/footer.jsp"></jsp:include>
	
	
	<!-- Load javascripts at bottom, this will reduce page load time -->
	<jsp:include page="component/js.jsp"></jsp:include>
	<!-- END BODY -->
</body>

</html>