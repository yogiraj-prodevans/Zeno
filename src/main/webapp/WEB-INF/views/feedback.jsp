<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page session="false" %>

<html>
    <head>
        <meta charset="utf-8">
        <title>ONE8</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta content="ONE8 User Portal" name="description">
        <meta content="ONE8 User Portal Keywords" name="keywords">
        <meta content="vikram" name="author">

        <!-- link to image for socio -->
        <meta property="og:url" content="-CUSTOMER VALUE-">
        <link rel="shortcut icon" href="favicon.ico">


        <!--  include the all css components -->
        <jsp:include page="component/css.jsp"></jsp:include>


        </head>

<style>
@media ( max-width : 750px) 
{
	.plForMobile
	{
		padding-left: 3% !important;
	}
}
</style>

<body class="corporate">

<!--  include menubar -->
<jsp:include page="component/menubar.jsp"></jsp:include>	


<div class="col-md-12 firstRow pt-20" style="background-image: url('img/red_long.png');">
    <h1 style="margin-left: 3.8%;">Feedback</h1>
</div>    



<div class="container">
    
    <div class="col-md-12">
        
        <h1 class="pb-10 pt-40" style="font-size:40px;">We're listening</h1>
        <h3 class="pb-20">Tell us how we can make your One8 experience better.</h3>
        
        <form:form role="form" action="feedbackRequestPage" method="post" modelAttribute="feedbackDetails" >
		        <div class="row pb-40">
		            <div class="col-md-6">
		            	<form:input path="name" type="text" id="name" placeholder="Name" value="${user_details.getFirst_name() }" required="true"/>
		            </div>
		            <div class="col-md-6 mb-pt-30">
		            	<form:input path="mobile" type="text" id="mobile" placeholder="Mobile" required="true" value="${user_details.getMobileno() }" class="mobileMargin"/>
		            </div>
		        </div>
		        
		        <div class="row pb-40">
		            <div class="col-md-6">
		            	<form:input path="account_id" type="text" id="account_id" placeholder="One8 ID" value="${user_details.getActid() }" readonly="true" />
		            </div>
		        </div>
		        
		        <div class="row pb-40">
		            <div class="col-md-12">
		                <form:input path="subject" type="text" id="subject" placeholder="Subject" required="true" />
		            </div>
		        </div>
		                   
		        
		        <!-- Start Tell More-->
		        <div class="row">
		        	<h3 style="padding-left: 1%;" class="plForMobile">Comment</h3>
		            <div class="col-md-12">
		                <form:textarea path="message" id="message" class="form-control" style="height:30%; width:100%; border: 0.4px solid #bdc3c7; resize: none; color:black; border-radius: 0.4px;font-size: 16px;" />
		            </div>
		             <div class="col-md-12" style="margin-top:2% ;text-align: right;">
						<button class="btn billButton" type="submit">SEND NOW</button>
					</div>
		        </div>
		        
		</form:form>        
		     
    </div>
    
    
</div>    

		<jsp:include page="component/pop-up.jsp"></jsp:include>
           
        <jsp:include page="component/footer.jsp"></jsp:include>   
           
          
            <!-- Load javascripts at bottom, this will reduce page load time -->
        <jsp:include page="component/js.jsp"></jsp:include>
        <!-- END BODY -->
    </body>
</html>