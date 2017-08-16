
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
<meta content="vikram" name="author">

<!-- link to image for socio -->
<meta property="og:url" content="-CUSTOMER VALUE-">


<!--  include the all css components -->
<jsp:include page="component/css.jsp"></jsp:include>

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
					<li><a
						href="${pageContext.request.contextPath }/billingPayment">Make
							Payment</a></li>
					<li><a href="${pageContext.request.contextPath }/service">Service
							Request</a></li>
					<li><a href="${pageContext.request.contextPath }/help">Help</a></li>
					<li><a
						href="${pageContext.request.contextPath }/parental-control">Parental
							Control</a></li>
					<li class="dropdown"><a class="active dropdown-toggle"
						data-toggle="dropdown" data-target="#" href="javascript:;">
							Settings </a>
						<ul class="dropdown-menu">
							<li><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
							<li><a href="${pageContext.request.contextPath }/logout">Logout</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- END NAVIGATION -->
		</div>
	</div>
	<!-- Header END -->
	<div class="main">
		<div class="container">
			<!-- BEGIN CONTENT -->
			<div class="col-md-12 col-sm-12">
				<div class="front-step front-step1"></div>
			</div>
			<!-- END CONTENT -->
			<!-- BEGIN STEPS -->
			<div class="row margin-bottom-30 front-steps-wrapper">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 margin-top-10 ">
						<div class="content-form-page">
							<div class="form-horizontal form-without-legend" role="form">
								<div class="form-group">
									<label for="email" class="col-lg-12 control-label"> <span
										class="require"></span></label>
									<div class="col-lg-12">
										<table style="width: 100%">
											<tr>
												<th style="font-size: 18px; color: gray; line-height: 2"
													colspan="4">Login Contact and Details</th>
											</tr>
											<tr style="font-size: 12px; color: gray; line-height: 2">
												<td>Account Number</td>
												<td>${profile.getActid() }</td>
												<td
													style="font-size: 10px; align: left; color: gray; line-height: 2"><i
													class=" fa fa-lock "></i></td>
												<td>Address</td>
												<td>${profile.getAddress() }</i></td>
												<td><i class=" fa fa-pencil"></i></td>
											</tr>
											<tr style="font-size: 12px; color: gray; line-height: 2">
												<td>Password</td>
												<td>*******</td>
												<td style="font-size: 10px; color: gray; line-height: 2"><i
													class=" fa fa-pencil"></i></td>
											</tr>
											<tr style="font-size: 12px; color: gray; line-height: 2">
												<td>Moble Number</td>
												<td>${profile.getMobileno() }</td>
												<td style="font-size: 10px; color: gray; line-height: 2"><i
													class=" fa fa-pencil"></i></td>
											</tr>
											<tr style="font-size: 12px; color: gray; line-height: 2">
												<td>Email ID</td>
												<td>${profile.getEmail() }</td>
												<td style="font-size: 10px; color: gray; line-height: 2"><i
													class=" fa fa-pencil"></i></td>
											</tr>
											<tr style="font-size: 12px; color: gray; line-height: 2">
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<br>
											<tr style="font-size: 12px; color: gray; line-height: 2">
												<td></td>
												<td></td>
												<td><a style="color: #F2F2F2F2; font-size: 11px"
													href="#">
														<button type="submit"
															style="color: #F2F2F2F2; font-size: 14px; font-family: Roboto; border-radius: 0px;"
															class="btn btn-primary ">update</button>
												</a></td>
											</tr>
										</table>


										<form:form role="form" action="profile/change-pass"
											method="post" modelAttribute="change_pass">
											Act id : <form:input path="actid" readonly="true" />
											<br>
											Password : <form:input path="password" type="password" />
											<br>
											confirm password : <form:input path="confirm_password" type="password" />
											<br>
											<button type="submit">change</button>
										</form:form>
										<c:if test="${not empty result}">
											${result}
										</c:if>


										<!--  
                                            
                                             <p style="font-size:18px; color:gray; line-height:2">Login Contact and Details</p>
                                                                      <p style="font-size:10px; color:gray; line-height:2">Account Number : ROL000007 </p>
                                                                      <p style="font-size:10px; color:gray; line-height:2">Password : *******</p>
                                                                      <p style="font-size:10px; color:gray; line-height:2">Moble Number :7411082345</p>
                                                                      <p style="font-size:10px; color:gray; line-height:2">Email ID : vamsi@oneeight.com</p>
                                            <!--  <div style=" padding-top:10%">
                                                    <p style="font-size:15px; color:gray; line-height:2">Plan Content</p>
                                                    <p style="font-size:10px; color:gray; line-height:1.5">1. 40GB Data <br/>2. 512Kbps Post FUP Speed</p>  
                                            </div> 
                                            <label for="update" class="col-lg-12 control-label" style="padding-top:10%"><a style="color:#F2F2F2F2; font-size:11px" href="#"><button type="submit" style=" color:#F2F2F2F2; font-size:14px; font-family:Roboto" class="btn btn-primary ">update</button></a></label>-->
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--<div class="col-lg-6 col-md-6 col-sm-6 margin-top-20 ">
                                             <div class="content-form-page" >
                               <form class="form-horizontal form-without-legend" role="form">
                                 <div class="form-group"> <label for="email" class="col-lg-12 control-label"> <span class="require"></span></label>
                                   <div class="col-lg-12 margin-top-10 ">
                                     <p style="font-size:10px; color:gray; line-height:2">Address : BTM mico layout </p>
                                                                                     
                                                       </div>
                                 </div>
                               </form>
                             </div>
                         </div>-->
				</div>
				<div class="col-lg-12 col-md-12 col-sm-12  "></div>
			</div>
			<!-- END STEPS -->
		</div>
	</div>

	<!-- included pop up -->
	<jsp:include page="component/pop-up.jsp"></jsp:include>
	<!-- END PRE-FOOTER -->
	<!-- BEGIN FOOTER -->
	<div class="footer"
		style="font-family: Roboto; right: 0; bottom: 0; left: 0; font-size: 10px">
		<div class="container">
			<div class="row">
				<!-- BEGIN COPYRIGHT -->
				<div class="col-md-10 col-sm-10 padding-top-0 padding-bottom-10 ">
					2017 &copy Stoic Zeno. ALL Rights Reserved.&nbsp <a
						href="javascript:;">Privacy Policy</a> | <a href="javascript:;">Terms
						of Service</a> | <a href="javascript:;">Refund and Cancellation</a> |
					<a href="javascript:;">Feedback</a> | <a href="javascript:;">Contact
						Us</a>
				</div>
				<!-- END COPYRIGHT -->

			</div>
		</div>
	</div>
	<!-- END FOOTER -->

	<!-- Load javascripts at bottom, this will reduce page load time -->
	<jsp:include page="component/js.jsp"></jsp:include>
	<!-- END BODY -->
</body>

</html>