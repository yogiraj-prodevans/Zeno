<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<html>
<head>
<meta charset="utf-8">
<title>ONE8</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta content="ONE8 User Portal" name="description">
<meta content="ONE8 User Portal Keywords" name="keywords">

<!-- link to image for socio -->
<meta property="og:url" content="-CUSTOMER VALUE-">

<!--  include the all css components -->
<jsp:include page="component/css.jsp"></jsp:include>

<style type="text/css">
.submitButton {
	margin-top: 10%;
	margin-bottom: 10%;
	width: 70%;
	height: 5%;
	background-color: #010745;
	color: #FFF;
	border-color: #010745;
}

.rotate {
	display: inline-block;
	filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=3);
	/* -webkit-transform: rotate(270deg); */
	-ms-transform: rotate(270deg);
	transform: rotate(270deg);
	text-align: center;
}

.google-map {
	position: relative;
	margin-top: 10px;
	height: 200px;
}

input[type="text"] {
	height: 40px;
	font-size: 19px;
}
.billButton{
	padding-right: 2%;

padding-left: 2%;
}
</style>

</head>

<body class="corporate">

<!--  include menubar -->
<jsp:include page="component/menubar.jsp"></jsp:include>	


<div class="col-md-12 firstRow pt-20" style="background-image: url('corporate/img/back.png');">
    <h1 class="paddingLeftTop" >Contact</h1>
</div>



	<div class="pt-40">
		<div class="container">
			<div class="col-md-12 pt-40">
				<div class="col-md-4">
					<div>
						<h2>Address</h2>
						<p>
							Novel Tech Park, 3rd Floor,<br> No. 46/4 Garvebhavi Palya
							Hongasandra,<br> Hosur Road, Bengaluru,<br> Karnataka
							560068.
						</p>
					</div>
					<br>
					<div>
						<div>
							<h2>Contact</h2>
							<p>+91 - 99019602602</p>
							<br>
						</div>
						<div>
							<h2>Mail</h2>
							<p>
								<a style="color: black" href="mailto:info@oneeight.co.in">info@oneeight.co.in</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-8">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.9047081333974!2d77.6044091145098!3d12.913845819637745!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae15028bbddb5b%3A0x1abfed521a02d446!2sProDevAns+Technologies!5e0!3m2!1sen!2sin!4v1504167162391"
						width="100%" height="300px" frameborder="0" style="border: 0"
						allowfullscreen></iframe>
				</div>
			</div>

</div>
			<div class="container pt-40">

				<form:form class="row" action="contactusRequestPage" method="post" modelAttribute="contactusDetails">

					<div class="col-md-12 pb-20">
						<div class="col-md-6">
							<form:input type="text" path="name" id="name"  value="${user_details.getFirst_name() }" placeholder="Name" class="font-h2" />
						</div>
						<div class="col-md-6 mb-pt-30">
							<form:input type="text"  path="email_id" id="email_id"  value="${user_details.getEmail() }"  placeholder="Email" class="font-h2" readonly="true" />
						</div>
					</div>
					<div class="col-md-12 pb-40">
						<div class="col-md-12">
							<form:input type="text" path="subject" id="subject"  placeholder="Subject" class="font-h2" />
						</div>
					</div>
					<div class="col-md-12">
						<div class="col-md-12 ">

							<form:textarea path="message" id="message" class="form-control "
								style="height: 30%; width: 100%; border: 0.4px solid #bdc3c7; resize: none; color: black; border-radius: 0.4px; font-size: 30px;"
								placeholder=" Message"></form:textarea>
						</div>
						<div class="col-md-12" style="margin-top:2% ;text-align: right;">
							<button class="btn billButton" type="submit">SEND NOW</button>
						</div>
					</div>

				</form:form>
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