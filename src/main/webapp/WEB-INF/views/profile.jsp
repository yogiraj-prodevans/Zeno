
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
					<li><a
						href="${pageContext.request.contextPath }/parental-control">Parental
							Control</a></li>
					<li class="active"><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
                    <li><a href="${pageContext.request.contextPath }/logout">Logout</a></li>
				</ul>
			</div>
			<!-- END NAVIGATION -->
		</div>
	</div>
	<!-- Header END -->
	

<!-- BEGIN STEPS -->
        <div class="row front-steps-wrapper"  style="margin-left: 0.001%;width: 100%;">
            <div class="col-lg-12 col-md-12 col-sm-12 front-step-col">
                <div class="front-step front-stepv">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 margin-top-5 ">
                            <div class="col-lg-12 col-md-12 col-sm-12 margin-top-5"  style="padding-left: 10%;">

                                <div class="col-md-6">
                                    <h2 style="font-family:Roboto; font-size:30px">Login Contact and Details</h2>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END STEPS -->	
	
	
	
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
									
									<div class="col-md-3">
									</div>
									<div class="col-md-6">
										
										<c:if test="${not empty result}">
											<h5 style="color: #2ecc71;margin: 1%;text-align: center;">
												*Message : 	${result}
											</h5>
										</c:if>
										
									
										<table style="width: 100%; margin-left: 5%;">
											
											<tr style="font-size: 12px; color: gray; line-height: 2">
												<td>Account Number</td>
												<td>${profile.getActid() }</td>
												<td
													style="font-size: 10px; align: left; color: gray; line-height: 2"><i
													class=" fa fa-lock "></i></td>
												
												
											</tr>
											
											<tr style="font-size: 12px; color: gray; line-height: 2">
												<td>Password</td>
												<td><a href="#changePassword" data-toggle="modal">*******</a></td>
												<td style="font-size: 10px; color: gray; line-height: 2">
													<a href="#changePassword" data-toggle="modal"><i class=" fa fa-pencil"></i></a>
												</td>
											</tr>
											<tr style="font-size: 12px; color: gray; line-height: 2">
												<td>Moble</td>
												<td>${profile.getMobileno() }</td>
												
											</tr>
											<tr style="font-size: 12px; color: gray; line-height: 2">
												<td>Email ID</td>
												<td>${profile.getEmail() }</td>
												
											</tr>
											<tr style="font-size: 12px; color: gray; line-height: 2">
												<td>Address</td>
												<td>${profile.getAddress() }</td>
												
											</tr>
											<tr style="font-size: 12px; color: gray; line-height: 2">
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<br>
											
										</table>
									</div>
									<div class="col-md-3">
									</div>



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



	<!-- included pop up -->
	<jsp:include page="component/pop-up.jsp"></jsp:include>
	<!-- END PRE-FOOTER -->
	<!-- BEGIN FOOTER -->
	
	<jsp:include page="component/footer.jsp"></jsp:include>
	
	
	<!-- Load javascripts at bottom, this will reduce page load time -->
	<jsp:include page="component/js.jsp"></jsp:include>
	<!-- END BODY -->
</body>

</html>