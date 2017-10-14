<%-- 
    Document   : filter
    Created on : Oct 4, 2017, 12:34:28 PM
    Author     : rajanikant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ page session="true"%>
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



        <title>MY ONE8</title>

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
                    width: 100% !important;
                    padding: 10px;
                    height: 45px;
                    border: 2px solid #bdc3c7;
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

                /*                .nav-tabs>li.active>a, .nav-tabs>li.active>a:hover, .nav-tabs>li.active>a:focus
                                {
                                    background: #2980b9;
                                    color: #fff;
                                    padding: 5px 15px 4px;
                                }*/

                table,th, td {
                    /*  border: 2px solid  black; */
                    align-content: center;

                }
                /** Tab content */
                .tab-content {
                    background: #FAFAFA;
                    padding:unset;
                }
/*                .nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus,
                .nav-tabs > li > a:hover,.nav-tabs > li > a:focus{
                    background: #f9faff00;
                    color: #716868;
                    padding: 5px 15px 4px;
                    border-bottom: 7px red solid !important;

                }*/
                /*icons and background sizes*/
                .nav-tabs > li.active > a#advance-filter {
                    color: #716868;
                    padding: 5px 15px 15px 60px;
                    border-bottom: 7px red solid !important;
                    background-image: url('${pageContext.request.contextPath }/img/icons/Check_red.png') !important;
                    background-size: 50px !important;
                    background-repeat: no-repeat !important;
                    font-size: 26px;
                }
                
                .nav-tabs > li > a#advance-filter {
                    color: #716868;
                    padding: 5px 15px 15px 60px;
                    border-bottom: 7px #fff solid !important;
                    background-image: url('${pageContext.request.contextPath }/img/icons/Check_grey.png') !important;
                    background-size: 50px !important;
                    background-repeat: no-repeat !important;
                    font-size: 26px;
                }
                .nav-tabs > li.active > a#block-filter {
                    color: #716868;
                    padding: 5px 15px 15px 60px;
                    border-bottom: 7px red solid !important;
                    background-image: url('${pageContext.request.contextPath }/img/icons/Blocked_red.png') !important;
                    background-size: 50px !important;
                    background-repeat: no-repeat !important;
                    font-size: 26px;
                }
                
                .nav-tabs > li > a#block-filter {
                    color: #716868;
                    padding: 5px 15px 15px 60px;
                    border-bottom: 7px #fff solid !important;
                    background-image: url('${pageContext.request.contextPath }/img/icons/Blocked_grey.png') !important;
                    background-size: 50px !important;
                    background-repeat: no-repeat !important;
                    font-size: 26px;
                }
                
                .nav-tabs > li.active > a#custom-filter {
                    color: #716868;
                    padding: 5px 15px 15px 60px;
                    border-bottom: 7px red solid !important;
                    background-image: url('${pageContext.request.contextPath }/img/icons/Custom_red.png') !important;
                    background-size: 50px !important;
                    background-repeat: no-repeat !important;
                    font-size: 26px;
                }
                
                .nav-tabs > li > a#custom-filter {
                    color: #716868;
                    padding: 5px 15px 15px 60px;
                    border-bottom: 7px #fff solid !important;
                    background-image: url('${pageContext.request.contextPath }/img/icons/Custom_grey.png') !important;
                    background-size: 50px !important;
                    background-repeat: no-repeat !important;
                    font-size: 26px;
                }
                .nav-tabs > li > a{
                  
                    margin-top: 10px;
                    background: #FFF !important ;
                    color: #716868;
                    padding: 5px 15px 4px;

                }
                .nav-tabs {
                    margin-top: 40px;
                }
                .nav>li {
                    position: relative;
                    display: block;
                    margin-right: 70px;
                    min-width: 250px;
                }
                .border{
                    /*border-bottom: 1px solid #ddd;*/
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
                    padding: 40px;
                    border: 2px solid #bdc3c7;
                    margin-top: -1px;
                    min-height: 350px;

                }
                .custom_box {

                    min-height: 100px;
                    padding-top: 2.7%;
                    border: 2px solid #2980b9;
                    margin-top: -1px;
                    margin-bottom: 20px;
                    /*                    padding-top: 10px;*/
                }
                .btn {
                    margin-top: 20px !important;
                    margin-bottom: 1px;
                    font-size: 22px;
                    padding-left: 20px;
                    padding-right: 20px;
                    padding-top: unset;
                    padding-bottom: unset;

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
                    padding-right: unset;
                }
                .panel-default > .panel-footer{
                    /*background-color: #F44336;*/
                    border-top:2px #F44336 solid;
                    border-radius: unset;
                    padding-right: unset;
                }
                .tab-content , .tab-pane{
                    background: unset;
                }
                .nav-tabs.nav-justified > li > a {
                    border-radius: unset;
                }

                .largeFont
                {
                    font-size: 38px !important;
                }
                
                .scroll {
/*                    //width: 200px;*/
                    height: 268px;
                    background: red;
                    overflow: scroll;
                }
                .scroll::-webkit-scrollbar {
                    width: 12px;
                }

                .scroll::-webkit-scrollbar-track {
                    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
                    border-radius: 10px;
                }

                .scroll::-webkit-scrollbar-thumb {
                    border-radius: 10px;
                    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5); 
                }
                
                @media (max-width: 730px)
				{
					.col-md-7, col-xs-7,.col-md-5, col-xs-5 
					{
						padding-right: unset;
					}
				}
                
                
                
            </style>


        </head>
        <!-- BEGIN HEADER -->
        <div class="header">
            <div class="row">
                <a class="site-logo" href="${pageContext.request.contextPath }/dashboard"> <img
                        src="${pageContext.request.contextPath }/corporate/img/logos/logo.png" alt="ONE8">
            </a> <a href="javascript:void(0);" class="mobi-toggler"><i
                    class="fa fa-bars"></i></a>
            <!-- BEGIN NAVIGATION -->
            <div class="header-navigation pull-right font-transform-inherit"
                 style="font-size: 12px">
                <ul> 

                    <li class="dropdown active"></li>
                    <li><a href="${pageContext.request.contextPath }/dashboard">MY ONE8</a></li>
                    <li><a
                            href="${pageContext.request.contextPath }/billingPayment">PAY YOUR BILL</a></li>
                    <li class="active"><a
                            href="${pageContext.request.contextPath }/control">SURF SAFE</a></li>
                    <li><a href="${pageContext.request.contextPath }/service">SERVICE</a></li>

                    <li><a href="${pageContext.request.contextPath }/profile">PROFILE</a></li>
                    <li><a href="${pageContext.request.contextPath }/logout">LOGOUT</a></li>
                </ul>
            </div>
            <!-- END NAVIGATION -->
        </div>
    </div>

    <div class="row firstRow pt-20"
         style="background-image: url('${pageContext.request.contextPath }/img/red_long.png');" style="clear: both">
        <!--  <h1 class="paddingLeftTop" >Parental Control</h1> <h1 class="paddingRight" >Hi Vamsi </h1>  -->
        <div class="col-md-5 col-sm-5" style="padding-left: 4.9%;">
            <h1>Surf Safe</h1>
        </div>
        <div class="col-md-7 col-sm-7" style="padding-left: 4.9%;margin-bottom: 20px;">
            <h1 style="float: middle">Hi ${uesr_name}</h1>
        </div>

    </div>


    <div class="container" > 
        <h1 class=" pb-10" style=" font-size: 28px;">With Surf Safe, you are in control</h1>

        <h4>
            Your home is your safe space and you deserve to keep it that way. With our Advanced Surf Safe control you can decide what to let in and when. If there are specific websites you want to block, go ahead and add to your Custom setting. 
            <!-- this released in next version of parental control.
            Schedule hourly, daily or date-wise, and we'll ensure your chosen categories and URLs remain blocked when you want them to be. Surf Safe, and ensure everyone on your network does too.-->
        </h4>


        <ul class="nav nav-tabs  margin-top-20">
            <li class=" active"><a id="advance-filter" data-toggle="tab" href="#Allowed">ADVANCED</a></li>
            <li class=" "><a id="block-filter" data-toggle="tab" href="#Blocked"  >BLOCKED</a></li>
            <li class=" "><a id="custom-filter" data-toggle="tab" href="#Custom" >CUSTOM</a></li>

        </ul>


        <div class="tab-content">
            <div id="Allowed" class="tab-pane fade in active row ">
                <form:form action="allow-categories" modelAttribute="CategoryListDetails" method="post" >
                    <div class="category_box">
                        <p class="font-h4">The category listed below are what have been defined by the TRAI, as are the sites that are blocked along with these categories. If you need to block any specific sites please use the Custom settings. </p>
                        <div  style="height:200px ; overflow-x: auto;">   
                            <c:forEach items="${CAT.getAllowded_catogery()}" var="cat" >
                                <div class="col-md-6 col-sm-6 border text-justify">
                                    <input type="checkbox" name="category_allowed" id="${cat}"  value="${cat}"><label for="${cat}"> <c:out value="${cat}"/> </label>	
                                </div>
                            </c:forEach> 
                        </div>
                    </div>
                    <form:hidden path="allowded_catogery" />
                    <form:hidden path="blocked_catogery" />
                    <div class="panel-footer text-right">
                        <button id="advacneBlock" class="btn billButton font-h3" type="submit">BLOCK</button>
                    </div>
                </form:form> 	
            </div>
            <div id="Blocked" class="tab-pane fade row ">
                <form:form action="block-categories" modelAttribute="CategoryListDetails" method="post" >
                    <div class="category_box">
                        <p class="font-h4">The category listed below are what have been defined by the TRAI, as are the sites that are blocked along with these categories. If you need to block any specific sites please use the Custom settings. </p>

                        <div style="height:200px ; overflow-x: auto;">   
                            <c:forEach items="${CAT.getBlocked_catogery()}" var="cat">
                                <div class="col-md-6 col-sm-6 border text-justify">
                                    <input type="checkbox" name="category_block" id="${cat}"  value="${cat}"><label for="${cat}"> <c:out value="${cat}"/> </label>	
                                </div>
                            </c:forEach> 
                        </div>
                    </div>
                    <form:hidden path="allowded_catogery" />
                    <form:hidden path="blocked_catogery" />
                    <div class="panel-footer text-right">
                        <button id="blockedUnblock" class="btn billButton" type="submit">UNBLOCK</button>
                    </div>
                </form:form> 	
            </div>
            <div id="Custom" class="tab-pane fade ">
                <div class="category_box ">
                    <div style="height:268px ; overflow-x: auto;">   

                        <div class="row  ">
                            <form:form  action="update-patterns" modelAttribute="CategoryListDetails" method="post" >
                                <div class=" row" >
                                    <label for="url-block" class="col-md-4 text-justify font-h3" title="Add the URL to be blocked" >Block specific websites.</label>
                                    <div class="col-md-8" style="padding: unset;">
                                        <input id="url_pattern" type="text" class="" style="width:100%; font-size: 24px;" name="url_pattern" placeholder="ex. www.facebook.com" pattern="[([^w]{3})]+([a-zA-Z]*)+[.]" required="required" >
                                    </div>
                                </div>
                                <form:hidden path="filter_pattern" />
                                <form:hidden path="remove_filter_pattern" />
                                <div class="row text-right " >
                                    <button id="customBlock" type="submit" class="btn billButton ">BLOCK</button>
                                </div>
                            </form:form>

                        </div>
                        <div class="row">
                            <form:form action="delete-patterns" modelAttribute="CategoryListDetails" method="post" >
                                <p class="font-h4">To unblock any website, please check the box against the names listed below. </p>
                                <c:forEach items="${CAT.getFilter_pattern()}" var="cat">
                                    <div class="col-md-6 col-sm-6 border text-justify">
                                        <input type="checkbox" name="filter_category" id="${cat}"  value="${cat}"><label for="${cat}">www.<c:out value="${fn:substring(cat, 2, fn:length(cat)-2)}"/>.com </label>	
                                    </div>
                                </c:forEach> 
                                <form:hidden path="filter_pattern" />
                                <form:hidden path="remove_filter_pattern" />



                            </div>
                        </div>
                    </div>
                    <div class="panel-footer text-right">
                        <button id="customUnblock" class="btn billButton" type="submit">UNBLOCK</button>
                    </div>
                </form:form>
            </div>


        </div>
        <c:if test="${not empty error }">
            <h3 style="color: green"><c:out value="${error }"></c:out></h3>
            <c:set var="error" value="" />

        </c:if>
    </div>



    <!-- included pop up -->
    <jsp:include page="component/pop-up.jsp"></jsp:include>

    <jsp:include page="component/footer.jsp"></jsp:include>

        <!-- Load javascripts at bottom, this will reduce page load time -->
    <jsp:include page="component/js.jsp"></jsp:include>



</body>
</html>
