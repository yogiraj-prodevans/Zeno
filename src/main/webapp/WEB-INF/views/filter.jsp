<%-- 
    Document   : filter
    Created on : Oct 4, 2017, 12:34:28 PM
    Author     : rajanikant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

        <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery.min.js"
        charset="UTF-8"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery.min.js"
        charset="UTF-8"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">



        <title>ADVANCE</title>

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
                input[type="text"] {
                    width: 98% !important;
                   
                }

               

                select {
                    background-image: url(img/varrow2.png);
                    background-size: 29px 29px;
                    background-repeat: no-repeat;
                    background-position: right top;
                    width: 195px;
                    height: 34px;
                    border: none;
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

                .nav-tabs>li.active>a, .nav-tabs>li.active>a:hover, .nav-tabs>li.active>a:focus
                {
                    background: #2980b9;
                    color: #fff;
                    padding: 5px 15px 4px;
                }

                table,th, td {
                    /*  border: 2px solid  black; */
                    align-content: center;

                }

                    
                .tab-content {
                    background: #FAFAFA;
                    padding:unset;
                }
                .border{
                    border-bottom: 1px solid #ddd;
                    padding: 15px;
                    font-size: 24px;
                }
                input[type="checkbox"] + label{
                    padding-bottom: unset;
                }
                .ScrollStyle {

                    overflow-y: scroll;
                    max-height: 350px;
                }
                .category_box {

                    min-height: 100px;
                    padding-top: 20px;
                    border: 2px solid #2980b9;
                    margin-top: -1px;
                    height: 350px;
                    overflow-x: auto;
                }
                .custom_box {

                    min-height: 100px;
                    padding-top: 2.7%;
                    border: 2px solid #2980b9;
                    margin-top: -1px;
                    margin-bottom: 20px;
/*                    padding-top: 10px;*/
                }
                .btn{
                    margin-top: 0px !important;
                    margin-bottom: 1px;

                }
                .row{
                    margin-right: unset;
                    margin-left: unset;
                }
                .panel {
                    border: 2px solid #F44336;
                    border-radius: unset;
                    margin-bottom: unset;
                }
                .panel-default > .panel-body{
                    height: 200px;
                    overflow-x: auto;
                }
                .panel-default > .panel-heading {
                    color: white;
                    background-color: #F44336;
                    border-color: #F44336;
                    border-radius: unset;
                    font-size: 24px;
                }
                .panel-footer{
                    /*border: 2px solid #2980b9;*/
                    background: unset;
                }
                .panel-default > .panel-footer{
                    /*background-color: #F44336;*/
                    border-top:2px #F44336 solid;
                    border-radius: unset;
                }
                .tab-content , .tab-pane{
                    background: unset;
                }
                .nav-tabs.nav-justified > li > a {
                    border-radius: unset;
                }
            </style>


        </head>
        <!-- BEGIN HEADER -->
        <div class="header">
            <div class="row">
                <a class="site-logo" href="#"> <img
                        src="${pageContext.request.contextPath }/corporate/img/logos/logo.png" alt="ONE8">
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
                    <li class="active"><a
                            href="${pageContext.request.contextPath }/control">SURF SAFE</a></li>
                    <li><a href="${pageContext.request.contextPath }/service">SERVICE
                            REQUEST</a></li>

                    <li><a href="${pageContext.request.contextPath }/profile">PROFILE</a></li>
                    <li><a href="${pageContext.request.contextPath }/logout">LOGOUT</a></li>
                </ul>
            </div>
            <!-- END NAVIGATION -->
        </div>
    </div>

    <div class="col-md-12 firstRow pt-20"
         style="background-image: url('${pageContext.request.contextPath }/img/red_long.png');" style="clear: both">
        <!--  <h1 class="paddingLeftTop" >Parental Control</h1> <h1 class="paddingRight" >Hi Vamsi </h1>  -->
        <div class="col-md-5" style="padding-left: 3.8%;">
            <h1>Parental Control</h1>
        </div>
        <div class="col-md-7">
            <h1 style="float: middle">Hi ${uesr_name}</h1>
        </div>

    </div>
    <div class="col-md-12"><br></div>


    <div class="container"> 

        <ul class="nav nav-tabs nav-justified">
            <li class="active"><a data-toggle="tab" href="#Allowed" style="font-size:24px;height: 50px" >Allowed</a></li>
            <li ><a data-toggle="tab" href="#Blocked" style="font-size:24px; height: 50px " >Blocked</a></li>
            <li><a data-toggle="tab" href="#Custom" style="font-size:24px; height: 50px ">Custom</a></li>

        </ul>


        <div class="tab-content">
            <div id="Allowed" class="tab-pane fade in active row ">
                <form:form action="allow-categories" modelAttribute="CategoryListDetails" method="post" >
                    <div class="category_box">
                    <c:forEach items="${CAT.getAllowded_catogery()}" var="cat" >
                        <div class="col-md-4 col-sm-6 border text-justify">
                            <input type="checkbox" name="category_allowed" id="${cat}"  value="${cat}"><label for="${cat}"> <c:out value="${cat}"/> </label>	
                        </div>
                    </c:forEach> 
                    </div>
                    <form:hidden path="allowded_catogery" />
                    <form:hidden path="blocked_catogery" />
                    <div class="panel-footer text-right">
                    <button id="block" class="btn billButton" type="submit">BLOCK</button>
                    </div>
                </form:form> 	
            </div>
            <div id="Blocked" class="tab-pane fade row ">
                <form:form action="block-categories" modelAttribute="CategoryListDetails" method="post" >
                    <div class="category_box">
                        <c:forEach items="${CAT.getBlocked_catogery()}" var="cat">
                            <div class="col-md-4 col-sm-6 border text-justify">
                                <input type="checkbox" name="category_block" id="${cat}"  value="${cat}"><label for="${cat}"> <c:out value="${cat}"/> </label>	
                            </div>
                        </c:forEach> 
                    </div>
                    <form:hidden path="allowded_catogery" />
                    <form:hidden path="blocked_catogery" />
                    <div class="panel-footer text-right">
                        <button id="block" class="btn billButton" type="submit">ALLOW</button>
                    </div>
                </form:form> 	
            </div>
            <div id="Custom" class="tab-pane fade">
                <div class="row custom_box " style="" >
                    <form class="form-inline" >
                        <div class="form-group col-md-6 col-md-offset-2" >
                            <label for="url-block" class="col-md-2 text-right" title="Add the URL to be blocked" >URL:</label>
                            <div class="col-md-10">
                                <input id="url-block" type="text" class="" style="width:100%" id="url-block" placeholder="ex. www.facebook.com" name="url-block" >
                            </div>
                        </div>

                        <button type="submit" class="btn billButton col-md-2 ">SUBMIT</button>
                    </form>

                </div>
                
                <!--                <div class="col-md-12" style="background-color: #F44336; height: 50px; ">
                                    <h3>Blocked URL's</h3>
                                </div>-->
                <div class="row">
					<form:form action="delete-patterns" modelAttribute="CategoryListDetails" method="post" >
	                    <div class="panel panel-default ">
	                        <div class="panel-heading">Blocked URL's</div>
	                        <div class="panel-body">
		                        <c:forEach items="${CAT.getFilter_pattern()}" var="cat">
		                            <div class="col-md-4 col-sm-6 border text-justify">
		                                <input type="checkbox" name="filter_category" id="${cat}"  value="${cat}"><label for="${cat}"> <c:out value="${cat}"/> </label>	
		                            </div>
		                        </c:forEach> 
								<form:hidden path="filter_pattern" />
								<form:hidden path="remove_filter_pattern" />
								
                          	</div>
                         </div>
                         <div class="panel-footer text-right">
                            <button id="block" class="btn billButton" type="submit">DELETE PATTERN</button>
                         </div>
                    </form:form>
                </div>
              
            </div>

        </div>
    </div>
<c:if test="${not empty error }">
<c:out value="${error }"></c:out>

</c:if>


    <!-- included pop up -->
    <jsp:include page="component/pop-up.jsp"></jsp:include>

    <jsp:include page="component/footer.jsp"></jsp:include>

        <!-- Load javascripts at bottom, this will reduce page load time -->
    <jsp:include page="component/js.jsp"></jsp:include>



</body>
</html>
