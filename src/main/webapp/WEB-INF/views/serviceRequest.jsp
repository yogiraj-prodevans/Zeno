<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<html>
<head>
<meta charset="utf-8">
<title>One8</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta content="ONE8 User Portal" name="description">
<meta content="ONE8 User Portal Keywords" name="keywords">

<!-- link to image for socio -->
<meta property="og:url" content="-CUSTOMER VALUE-">
<link rel="shortcut icon" href="favicon.ico">

<!--  include the all css components -->
<jsp:include page="component/css.jsp"></jsp:include>

<style>

.NameWidth
{
	width: 97%;
}
@media ( max-width : 950px) 
{
	.NameWidth
	{
		width: 100%;
	}
}
@media ( max-width : 750px) 
{
		.plForMobile
	{
		padding-left: 3% !important;
	}
}


select
{
	background-image:url(img/varrow2.png);
	background-size: 29px 29px;
	background-repeat: no-repeat;
	background-position: right top;
	width:195px;
	height: 34px;
	border:none;
	-moz-appearance: none;
	-webkit-appearance: none;
	border-bottom: 2px solid red; 

/*    border: none;
    font-size: 16px;
    width:195px;
    padding-bottom:5px;
    outline: none;
    border-bottom: 2px solid #F44336;
    -webkit-appearance:none;
    -moz-appearance: none;
	background-image:url(img/drop.jpg);    
	*/
}

option:hover {
	background-color: grey;
}
/*
select{
-webkit-appearance:none;
-moz-appearance: none;
text-indent:1px;
text-overflow: '';
width:200px;
background: url("corporate/img/arrow.png") no-repeat right center;
background-repeat: no-repeat;
background-position:right center;
}
*/

</style>

</head>

<body class="corporate" style="font-family: Roboto;">

	<!-- BEGIN HEADER -->
	<div class="header">
		<div class="row">
			<a class="site-logo" href="#"> <img
				src="corporate/img/logos/logo.png" alt="ONE8">
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
					<li class="active"><a href="${pageContext.request.contextPath }/service">SERVICE
							REQUEST</a></li>

					<li><a href="${pageContext.request.contextPath }/profile">PROFILE</a></li>
					<li><a href="${pageContext.request.contextPath }/logout">LOGOUT</a></li>
				</ul>
			</div>
			<!-- END NAVIGATION -->
		</div>
	</div>
	<!-- Header END -->


<div class="col-md-12 firstRow pt-20" style="background-image: url('img/yellow_long.png');">
    <h1 class="paddingLeftTop" >We're at your service</h1>
</div>
    
<div class="container">
    
    <form:form class="col-md-12" action="serviceRequestPage" style="margin-top:5%;" modelAttribute="serviceRequestDetails" method="post" >
        
        <div class="row pb-40">
            <div class="col-md-6">
                <form:input path="name" type="text" id="name" placeholder="Name" value="${user_details.getFirst_name() }" required="true" class="NameWidth" />        
            </div>
            <div class="col-md-6 mb-pt-30">
            	<form:input path="mobile" type="text" id="mobile" placeholder="Mobile" required="true" class="mobileMargin" value="${user_details.getMobileno() }"  />
            </div>
        </div>
        
        
        <div class="row pb-20">
            <div class="col-md-6">
            
            	<div class="col-md-4 col-xs-5 col-sm-4">
            		<h4>Time slot to call</h4>
            	</div>
            	<div class="col-md-8 col-xs-7 col-sm-8">
            		<form:select path="time_slot_to_call" multiple="false" items="${time_slot_to_call}" class="hoverColor">
                    </form:select>
            	</div>
            	<!-- 
                <table class="tableWidth">
                    <tr>
                        <td style="width:37%;">
                            <h4>
                               Time slot to call
                            </h4>
                        </td>
                        <td>
                        	<form:select path="time_slot_to_call" multiple="false" items="${time_slot_to_call}" class="form-control" style="border-radius:1px;border: 0.6px solid #bdc3c7">
                            </form:select>
                        </td>
                    </tr>
                </table>
                -->
            </div>
        </div>
        
        <hr style="height:1px;border:none;color:#333;background-color:#bdc3c7;" />
        
            <!-- Start Request For-->
            <div class="col-md-6">
                <div class="row" style="margin-bottom:2%;">
                    <h3>Request</h3>
                </div>
                <div class="row" style="margin-left:1%;">

					<div class="row">
                        <form:checkboxes items="${requestList}" path="requestCheckboxArray" style="padding-bottom:10px;"/>
                        <br>
                    </div>

					<!-- 
                    <div class="row">
                        <input type="checkbox" id="box-1">
                        <label for="box-1">New Connection</label>
                    </div><br>
					 
                    <div class="row">
                        <input type="checkbox" id="box-2">
                        <label for="box-2">Activation / Deactivation of Services</label>
                    </div><br>

                    <div class="row">
                        <input type="checkbox" id="box-3">
                        <label for="box-3">Duplicate Bill</label>
                    </div><br>

                    <div class="row">
                        <input type="checkbox" id="box-4">
                        <label for="box-4">Change of Location</label>
                    </div><br>

                    <div class="row">
                        <input type="checkbox" id="box-5">
                        <label for="box-5">Restoration of Service</label>
                    </div><br>

                    <div class="row">
                        <input type="checkbox" id="box-6">
                        <label for="box-6">Any Other</label>
                    </div><br>
                    
                    -->
                </div>
            </div>		
            <!-- End Request For-->

            <!-- Start COmplaint For-->
            <div class="col-md-6">
                <div class="row" style="margin-bottom:2%;">
                    <h3>Complaint</h3>
                </div>
                <div class="row" style="margin-left:1%;">

					<div class="row">
                        <form:checkboxes items="${complaintList}" path="complaintCheckboxArray"/>
                    </div><br>

					<!-- 
                    <div class="row">
                        <input type="checkbox" id="box-7">
                        <label for="box-7">Not able to pay online</label>
                    </div><br>

                    <div class="row">
                        <input type="checkbox" id="box-8">
                        <label for="box-8">Activation / Deactivation of Services</label>
                    </div><br>

                    <div class="row">
                        <input type="checkbox" id="box-9">
                        <label for="box-9">Billing Related</label>
                    </div><br>

                    <div class="row">
                        <input type="checkbox" id="box-10">
                        <label for="box-10">Marcus Website</label>
                    </div><br>

                    <div class="row">
                        <input type="checkbox" id="box-11">
                        <label for="box-11">Marcus Customer Care</label>
                    </div><br>

                    <div class="row">
                        <input type="checkbox" id="box-12">
                        <label for="box-12">FUP/Speed</label>
                    </div><br>

                    <div class="row">
                        <input type="checkbox" id="box-13">
                        <label for="box-13">CPE</label>
                    </div><br>

                    <div class="row">
                        <input type="checkbox" id="box-14">
                        <label for="box-14">Zeno Portal</label>
                    </div><br>
                    
                    -->
                </div>
            </div>		
            <!-- End Complaint For-->
        
        <!-- Start Tell More-->
        <div class="row">
        	<h3 style="padding-left: 1%;" class="plForMobile">Tell us more</h3>
            <div class="col-md-12">
            	<form:textarea path="message" id="message" class="form-control" style="height:30%; width:99%; border: 0.4px solid #bdc3c7; resize: none; color:black; border-radius: 0.4px;font-size: 16px;" />
            </div>
            <div class="col-md-12" style="margin-top:3% ;text-align: right;margin-left: -1%;">
				<button id="ssendnow" class="btn billButton" type="submit">SEND NOW</button>
			</div>
        </div>
    
</form:form>    
  </div> 
<h3 style="color:green; text-align: center;"><b>
<c:if test="${ not empty msg}">${msg}</c:if></b></h3>


	<!-- included pop up -->
	<jsp:include page="component/pop-up.jsp"></jsp:include>

	<jsp:include page="component/footer.jsp"></jsp:include>


	<!-- Load javascripts at bottom, this will reduce page load time -->
	<jsp:include page="component/js.jsp"></jsp:include>
	<!-- END BODY -->
</body>
</html>