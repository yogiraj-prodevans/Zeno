<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page session="false" %>

<html>
    <head>
        <meta charset="utf-8">
        <title>STOIC ZENO</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta content="Stoic Zeno User Portal" name="description">
        <meta content="Stoic Zeno User Portal Keywords" name="keywords">
        <meta content="vikram" name="author">

        <!-- link to image for socio -->
        <meta property="og:url" content="-CUSTOMER VALUE-">
        <link rel="shortcut icon" href="favicon.ico">


        <!--  include the all css components -->
        <jsp:include page="component/css.jsp"></jsp:include>


        </head>

        <body class="corporate">

            <!-- BEGIN HEADER -->
            <div class="header">
                <div class="container">
                    <a class="site-logo" href="#">
                        <img src="corporate/img/logos/logo.png" alt="Stoic Zeno"> </a>
                    <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>
                    <!-- BEGIN NAVIGATION -->
                    <div class="header-navigation pull-right font-transform-inherit" style="font-size:12px">
                        <ul>
                            <li class="dropdown active"> </li>
                            <li ><a href="${pageContext.request.contextPath }/dashboard">Home</a></li>
                        <li><a href="${pageContext.request.contextPath }/billingPayment">Make Payment</a></li>  
                        <li><a href="${pageContext.request.contextPath }/service">Service Request</a></li> 
                        <li><a href="${pageContext.request.contextPath }/parental-control">Parental Control</a></li>
                        <li><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
                        <li><a href="${pageContext.request.contextPath }/logout">Logout</a></li>
                    </ul>
                </div>
                <!-- END NAVIGATION -->
            </div>
        </div>



<div class="col-md-12 firstRow pt-20" style="background-image: url('img/red_long.png');">
    <h1 style="margin-left:5%;">Feedback</h1>
</div>    



<div class="container">
    
    <div class="col-md-12">
        
        <h1 class="pb-10 pt-40" style="font-size:40px;">We're listening</h1>
        <h3 class="pb-20">Tell us how we can make your One8 experience better.</h3>
        
        <form:form role="form" action="feedbackRequest" method="post" modelAttribute="feedbackDetails" >
		        <div class="row pb-40">
		            <div class="col-md-6">
		            	<form:input path="name" type="text" id="name" placeholder="Name" required="true"/>
		            </div>
		            <div class="col-md-6 mb-pt-30">
		            	<form:input path="mobile" type="text" id="mobile" placeholder="Mobile" required="true" class="mobileMargin"/>
		            </div>
		        </div>
		        
		        <div class="row pb-40">
		            <div class="col-md-6">
		            	<form:input path="account_id" type="text" id="account_id" placeholder="One8 ID" required="true" />
		            </div>
		        </div>
		        
		        <div class="row pb-40">
		            <div class="col-md-12">
		                <form:input path="subject" type="text" id="subject" placeholder="Subject" required="true" />
		            </div>
		        </div>
		                   
		        
		        <!-- Start Tell More-->
		        <div class="row">
		        	<h3 style="padding-left: 1%;">Comment</h3>
		            <div class="col-md-12">
		                <form:textarea path="message" id="message" class="form-control" style="height:30%; width:100%; border: 0.4px solid #bdc3c7; resize: none; color:black; border-radius: 0.4px;font-size: 16px;" />
		            </div>
		        </div>
		        <div class="col-md-10" style=" margin-bottom: 5%;">
		        </div>
		        <div class="col-md-2 pull-right">
		        	<button class="btn billButton " style="width: 120px;%;height: 30px;margin-left:50px;" type="submit">SUBMIT</button>
		        </div>
		        
		</form:form>        
		     
    </div>
    
    
</div>    

           
        <jsp:include page="component/footer.jsp"></jsp:include>   
           
          
            <!-- Load javascripts at bottom, this will reduce page load time -->
        <jsp:include page="component/js.jsp"></jsp:include>
        <!-- END BODY -->
    </body>
</html>