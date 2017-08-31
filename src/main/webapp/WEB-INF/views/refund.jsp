<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<!-- Head BEGIN -->
<head>
<head>
<meta charset="utf-8">
<title>STOIC ZENO</title>

<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta content="Stoic Zeno User Portal" name="description">
<meta content="Stoic Zeno User Portal Keywords" name="keywords">

<!-- link to image for socio -->
<meta property="og:url" content="-CUSTOMER VALUE-">
<!--  include the all css components -->
<jsp:include page="component/css.jsp"></jsp:include>

</head>
<body class="corporate">

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
					<li><a href="${pageContext.request.contextPath }/dashboard">HOME</a></li>
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

<div class="row firstRow pt-20" style="background-image: url('corporate/img/back.png');">
    <h1 style="margin-left:5%;">REFUND  AND  CANCELLATION</h1>
</div> 
	<div class="row pt-20">
		<div class="container">

			

				<!-- BEGIN CONTENT -->
				<div class="">

					<div class="faq-page" style="line-height: 2">

						<div class="panel panel-default">
							<div id="accordion1_1" class="panel-collapse collapse in">
								<div class="panel-body">
									<i class=" fa fa-hand-o-right  "></i> No Refund of fixed
									duration pack or Cancellation of payment transaction is
									allowed. Any disputes in regards to payments/ refund of
									transaction(s) due to technical reasons are subject to
									arbitration / resolution on a case to case basis.
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END CONTENT -->
			</div>
			<!-- END SIDEBAR & CONTENT -->
		</div>
	</div>
	<div style="padding-top: 18%"></div>

	<jsp:include page="component/footer.jsp"></jsp:include>

	<jsp:include page="component/pop-up.jsp"></jsp:include>

	<!-- Load javascripts at bottom, this will reduce page load time -->
	<jsp:include page="component/js.jsp"></jsp:include>


	<!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>