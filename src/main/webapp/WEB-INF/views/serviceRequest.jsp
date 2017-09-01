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
					<li class="active"><a href="${pageContext.request.contextPath }/service">SERVICE REQUEST</a></li>
					<li><a href="${pageContext.request.contextPath }/profile">PROFILE</a></li>
					<li><a href="${pageContext.request.contextPath }/logout">LOGOUT</a></li>
				</ul>
                </div>
                <!-- END NAVIGATION -->
            </div>
        </div>



<div class="col-md-12 firstRow pt-20" style="background-image: url('img/yellow_long.png');">
    <h1 style="margin-left:5%;">We're at your service</h1>
</div>    
    
<div class="container">
    
    <div class="col-md-12" style="margin-top:5%;">
        
        <div class="row pb-40">
            <div class="col-md-6">
                <input type="text" placeholder="Name"/>        
            </div>
            <div class="col-md-6 mb-pt-30">
                <input type="text" placeholder="Mobile" class="mobileMargin"/>        
            </div>
        </div>
        
        
        <div class="row pb-20">
            <div class="col-md-12">
                <table class="tableWidth">
                    <tr>
                        <td style="width:28%;">
                            <h4>
                               Time slot to call
                            </h4>
                        </td>
                        <td>
                            <select class="form-control" style="border-radius:1px;border: 0.6px solid #bdc3c7">
                                <option>9AM - 12PM</option>
                                <option>12PM - 3PM</option>
                                <option>3PM - 6PM</option>
                            </select>
                        </td>
                    </tr>
                </table>
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
                </div>
            </div>		
            <!-- End Complaint For-->
        
        <!-- Start Tell More-->
        <div class="row">
        	<h3 style="padding-left: 1%;">Tell us more</h3>
            <div class="col-md-12">
                <textarea class="form-control" style="height:30%; width:90%; border: 0.4px solid #bdc3c7; resize: none; color:black; border-radius: 0.4px;font-size: 16px;">
                </textarea>
            </div>
        </div>
        <div class="row col-md-2" style="margin-left:%; margin-bottom: 5%;">
            <button class="submitButton" type="submit">Submit</button>
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