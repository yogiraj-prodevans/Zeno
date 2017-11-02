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
                input[type="url"]#url_pattern {
                    width: 100% !important;
                    padding: 10px;
                    height: 45px;
                    border: 1px solid #bdc3c7;
                    padding-bottom: 8px ! important;
                    padding-top: 8px ! important;
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
                background-size: 43px !important;
                background-repeat: no-repeat !important;
                font-size: 20px;
            }

            .nav-tabs > li > a#advance-filter {
                color: #716868;
                padding: 5px 15px 15px 60px;
                border-bottom: 7px #fff solid !important;
                background-image: url('${pageContext.request.contextPath }/img/icons/Check_grey.png') !important;
                background-size: 43px !important;
                background-repeat: no-repeat !important;
                font-size: 20px;
            }
            .nav-tabs > li.active > a#block-filter {
                color: #716868;
                padding: 5px 15px 15px 60px;
                border-bottom: 7px red solid !important;
                background-image: url('${pageContext.request.contextPath }/img/icons/Blocked_red.png') !important;
                background-size: 43px !important;
                background-repeat: no-repeat !important;
                font-size: 20px;
            }

            .nav-tabs > li > a#block-filter {
                color: #716868;
                padding: 5px 15px 15px 60px;
                border-bottom: 7px #fff solid !important;
                background-image: url('${pageContext.request.contextPath }/img/icons/Blocked_grey.png') !important;
                background-size: 43px !important;
                background-repeat: no-repeat !important;
                font-size: 20px;
            }

            .nav-tabs > li.active > a#custom-filter {
                color: #716868;
                padding: 5px 15px 15px 60px;
                border-bottom: 7px red solid !important;
                background-image: url('${pageContext.request.contextPath }/img/icons/Custom_red.png') !important;
                background-size: 43px !important;
                background-repeat: no-repeat !important;
                font-size: 20px;
            }

            .nav-tabs > li > a#custom-filter {
                color: #716868;
                padding: 5px 15px 15px 60px;
                border-bottom: 7px #fff solid !important;
                background-image: url('${pageContext.request.contextPath }/img/icons/Custom_grey.png') !important;
                background-size: 43px !important;
                background-repeat: no-repeat !important;
                font-size: 20px;
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
                padding: unset ! important;
                font-size: 17px ! important;
            }
            input[type="checkbox"] + label {
                display: block;
                position: relative;
                padding-left: 35px;
                margin-bottom: 1px;
                font: 12px/14px;
                color: #010745;
                cursor: pointer;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                padding-bottom: 20px;
                text-align: left;
                padding-top: unset;
            }
            .ScrollStyle {

                overflow-y: scroll;
                max-height: 350px;
            }
            .category_box {

                min-height: 100px;
                padding: 40px;
                border: 1px solid #bdc3c7;
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
                .category_box
                {
                    padding: 15px !important;
                }
                .border
                {
                    padding: 0px !important;
                }
            }



            .scroll::-webkit-scrollbar-thumb {
                border-radius: 10px;
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5); 
            }
            #myAlert{
                color: #db3236;
                position: fixed;
                bottom: 30px;
                left: 30px;
                background-color: #fff;
                border: 1px #db3236 solid;
            }
            @media (max-width: 730px)
            {
                .col-md-7, col-xs-7,.col-md-5, col-xs-5 
                {
                    padding-right: unset;
                }
            }


            .col-md-2
            {
                width: 12.666667% !important;
                padding-right: unset !important;
                padding-left: unset !important;
            }
            .col-md-4
            {
                width: 37.333333% !important;
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
            Your home is your safe space and you deserve to keep it that way. With our Advanced Surf Safe controls you can decide what content categories to keep out of your network. If there are specific websites you want to block, go ahead and add to your Custom setting. Surf Safe, and ensure every-one on your network does too!
        </h4>


        <ul class="nav nav-tabs  margin-top-20">
            <c:choose>
                <c:when test="${not empty advanced_error }">
                    <li class=" active"><a id="advance-filter" data-toggle="tab" href="#Allowed">ADVANCED</a></li>
                    <li class=" "><a id="block-filter" data-toggle="tab" href="#Blocked"  >BLOCKED</a></li>
                    <li class=" "><a id="custom-filter" data-toggle="tab" href="#Custom" >CUSTOM</a></li>
                    <c:set var="default" value="active"></c:set>
                    </c:when>
                    <c:when test="${not empty blocked_error }">
                    <li class=" "><a id="advance-filter" data-toggle="tab" href="#Allowed">ADVANCED</a></li>
                    <li class=" active"><a id="block-filter" data-toggle="tab" href="#Blocked"  >BLOCKED</a></li>
                    <li class=" "><a id="custom-filter" data-toggle="tab" href="#Custom" >CUSTOM</a></li>
                       
                    </c:when>
                    <c:when test="${not empty update_url_error ||  not empty custom_error }">
                    <li class=" "><a id="advance-filter" data-toggle="tab" href="#Allowed">ADVANCED</a></li>
                    <li class=" "><a id="block-filter" data-toggle="tab" href="#Blocked"  >BLOCKED</a></li>
                    <li class="active "><a id="custom-filter" data-toggle="tab" href="#Custom" >CUSTOM</a></li>
                       
                    </c:when>
                    <c:otherwise>
                    <li class=" active"><a id="advance-filter" data-toggle="tab" href="#Allowed">ADVANCED</a></li>
                    <li class=" "><a id="block-filter" data-toggle="tab" href="#Blocked"  >BLOCKED</a></li>
                    <li class=" "><a id="custom-filter" data-toggle="tab" href="#Custom" >CUSTOM</a></li>
                        <c:set var="default"  value="active"></c:set>
                    </c:otherwise>
                </c:choose>



        </ul>


        <div class="tab-content">
            <div id="Allowed" class="tab-pane fade  <c:if test="${ empty blocked_error && empty update_url_error && empty custom_error  }"> in active </c:if> row ">
                <form:form action="allow-categories" modelAttribute="CategoryListDetails" method="post" >
                    <div class="category_box">

                        <div  style="height:250px ; overflow-x: auto;">   
                            <p class="font-h4" style="padding-bottom: 15px;">Choose content categories that you don’t want to view on your network and hit BLOCK to keep related websites out.</p>
                            <c:forEach items="${CAT.getAllowded_catogery()}" var="cat" >
                                <div class="col-md-6 col-sm-6 border text-justify">
                                    <input type="checkbox" name="category_allowed" id="${cat}"  value="${cat}"><label for="${cat}"> <c:out value="${cat}"/> </label>	
                                </div>
                            </c:forEach> 
                        </div>
                    </div>
                    <form:hidden path="allowded_catogery" />
                    <form:hidden path="blocked_catogery" />

                    <div class="panel-footer">

                        <div class="col-md-6"></div>
                        <div class="col-md-4 text-right">
                            <c:if test="${not empty advanced_error }">
                                <h4 style="color:red;margin-top: 5%;">
                                    <span class="glyphicon glyphicon-alert"></span>
                                    <c:out value="${advanced_error }"></c:out>
                                    </h4>
                            </c:if>
                        </div>
                        <div class="col-md-2 text-right">
                            <button id="advacneBlock" class="btn billButton font-h3" type="submit">BLOCK</button>
                        </div>
                    </div>
                </form:form> 	
            </div>
            <div id="Blocked" class="tab-pane fade row <c:if test="${not empty blocked_error }"> in active</c:if>">
                <form:form action="block-categories" modelAttribute="CategoryListDetails" method="post" >
                    <div class="category_box">


                        <div style="height:250px ; overflow-x: auto;"> 
                            <p class="font-h4" style="padding-bottom: 15px;">View and edit your list of blocked categories. To allow a category from this list, check the box next to it and hit UNBLOCK </p>
                            <c:forEach items="${CAT.getBlocked_catogery()}" var="cat">
                                <div class="col-md-6 col-sm-6 border text-justify">
                                    <input type="checkbox" name="category_block" id="${cat}"  value="${cat}"><label for="${cat}"> <c:out value="${cat}"/> </label>	
                                </div>
                            </c:forEach> 
                        </div>
                    </div>
                    <form:hidden path="allowded_catogery" />
                    <form:hidden path="blocked_catogery" />
                    <div class="panel-footer ">

                        <div class="col-md-3"></div>
                        <div class="col-md-5 text-right">
                            <c:if test="${not empty blocked_error }">
                                <h4 style="color:red;margin-top: 5%;">
                                    <span class="glyphicon glyphicon-alert"></span>
                                    <c:out value="${blocked_error }"></c:out>
                                    </h4>
                            </c:if>
                        </div>
                        <div class="col-md-2 text-right">
                            <button id="blockedUnblock" class="btn billButton" type="submit">UNBLOCK</button>
                        </div>
                        
                        </form:form> 	
                        
                        
                        <div class="col-md-2 text-right">
                        	<form:form action="block-all-categories" modelAttribute="CategoryListDetails" method="post" >
                        		
                        		<form:hidden path="all_blocked_list" />
                            	<button id="blockedUnblock" class="btn billButton" type="submit">UNBLOCK ALL</button>
                            </form:form>
                        </div>
                        
                        
                    </div>
                
            </div>
            <div id="Custom" class="tab-pane fade row <c:if test="${not empty update_url_error || not empty custom_error }"> in active</c:if>">
                    <div class="category_box ">


                        <div class="row  ">
                        <form:form  action="update-patterns" modelAttribute="CategoryListDetails" method="post" >
                            <div class=" row" >
                                <label for="url-block" class="col-md-5 text-justify font-h3" style="margin-right: -87px "title="Add the URL to be blocked" >Block specific websites.</label>
                                <div class="col-md-8" style="padding: unset;">
                                    <input id="url_pattern" type="url" class="" style="width:100%; margin-top: 6px; font-size: 24px;" name="url_pattern" placeholder="www.example.com" pattern="[h]{0,1}[ftw][tw][pw][s]{0,1}[.:/]{1,3}[\w\W]*" required="required" >
                                </div>
                            </div>
                            <form:hidden path="filter_pattern" />
                            <form:hidden path="remove_filter_pattern" />
                            <div class="row " >

                                <div class="col-md-6"></div>
                                <div class="col-md-4 text-right">
                                    <c:if test="${not empty update_url_error }">
                                        <h4 style="color:red;margin-top: 5%;">
                                            <span class="glyphicon glyphicon-alert"></span>
                                            <c:out value="${update_url_error }"></c:out>
                                            <c:set var="uodateURLError" value="" />
                                        </h4>
                                    </c:if>
                                </div>
                                <div class="col-md-2 text-right">
                                    <button id="customBlock" type="submit" class="btn billButton ">BLOCK</button>
                                </div>
                            </div>
                        </form:form>

                    </div>
                    <div style="height:200px ; overflow-x: auto;">  
                        <form:form action="delete-patterns" modelAttribute="CategoryListDetails" method="post" >

                            <div class="row">
                                <p class="font-h4 " style="padding-bottom: 15px">Key in specific URLs you want to block to curate your network.  </p>
                                <c:forEach items="${CAT.getFilter_pattern()}" var="cat">
                                    <div class="col-md-6 col-sm-6 border text-justify">

                                        <input type="checkbox" name="filter_category" id="${cat}"  value="${cat}"><label for="${cat}"><c:out value="${fn:substring(cat, 2, fn:length(cat)-2)}"/> </label>	

                                    </div>
                                </c:forEach> 
                                <form:hidden path="filter_pattern" />
                                <form:hidden path="remove_filter_pattern" />
                            </div>
                        </div>
                    </div>
                    <div class="panel-footer ">

                        <div class="col-md-6"></div>
                        <div class="col-md-4 text-right">
                            <c:if test="${not empty custom_error }">
                                <h4 style="color:red;margin-top: 5%;">
                                    <span class="glyphicon glyphicon-alert"></span>
                                    <c:out value="${custom_error }"></c:out>
                                    </h4>
                            </c:if>
                        </div>
                        <div class="col-md-2 text-right">
                            <button id="customUnblock" class="btn billButton" type="submit">UNBLOCK</button>
                        </div>
                    </div>
                </form:form>

            </div>


        </div>

        <jsp:include page="parental-control.jsp"/>

        <!--  
        <c:if test="${not empty error }">
            <div id="myAlert" class="alert alert-danger">
                <a href="#" class="close">&times;</a>
            <c:out value="${error }"></c:out>
            </div>

                <!--<h3 style="color: green"></h3>-->
            <%--<c:set var="error" value="" />--%>
            <!-- 
        </c:if>
        <c:if test="${not empty msg }">
            <div id="myAlert" class="alert alert-danger">
                <a href="#" class="close">&times;</a>
            <c:out value="${msg }"></c:out>
            </div>
        </c:if>
        -->

    </div>



    <!-- included pop up -->
    <jsp:include page="component/pop-up.jsp"></jsp:include>

    <jsp:include page="component/footer.jsp"></jsp:include>

        <!-- Load javascripts at bottom, this will reduce page load time -->
    <jsp:include page="component/js.jsp"></jsp:include>
    <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery.min.js" charset="UTF-8"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var schedule_counter = 1;
            <c:if test="${not empty day_msg || not empty date_msg || not empty time_msg}">
                  if (schedule_counter == 1) {
                    $("#schedule_images").removeClass("plus_image");
                    $("#schedule_images").addClass("minus_image");
//                    $('html, body').stop().animate({
//                    scrollTop: $("#div1").offset().top
//                }, 2000);
                    location.href = "#schedule_images";
                    schedule_counter = 2;
                }  
    
            </c:if>
            
            $(".close").click(function () {
                $("#myAlert").slideUp();
            });
            $("#schedule_images").click(function () {
                if (schedule_counter == 0) {
                    $("#schedule_images").removeClass("plus_image");
                    $("#schedule_images").addClass("minus_image");
                    schedule_counter = 2;
                } else if (schedule_counter == 1) {
                    $("#schedule_images").removeClass("plus_image");
                    $("#schedule_images").addClass("minus_image");
                    $("#collapse1").toggle();
                    schedule_counter = 2;
                } else {
                    $("#schedule_images").removeClass("minus_image");
                    $("#schedule_images").addClass("plus_image");
                    $("#collapse1").toggle();
                    schedule_counter = 1;
                }
            });
        });
        
        
   $(document).ready(function () {
    $("#url_pattern").change(function() {
   
        if (this.value.indexOf("www.")!=-1){
          if (this.value.indexOf("http://") ==-1) {
              if (this.value.indexOf("https://") ==-1 ){
                  if (this.value.indexOf("ftp://") ==-1 )
                  {
                   this.value = "http://" + this.value;
                  }
              }
          
          }}else  if (this.value.indexOf(".")>=2){		 
                    if (this.value.indexOf("http://") ==-1) {
                      if (this.value.indexOf("https://") ==-1 ){
                          if (this.value.indexOf("ftp://") ==-1 )
                            {
                             this.value = "http://" + this.value;
                            }}}}
    });
});




    </script>


</body>
</html>
