<%-- 
    Document   : control-category-list
    Created on : Sep 27, 2017, 6:14:38 PM
    Author     : rajanikant
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Control-Category</title>
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

                @media ( max-width : 950px) {
                    .NameWidth {
                        max-width: 98 !important;
                    }
                }

                @media ( max-width : 750px) {
                    .plForMobile {
                        padding-left: 3% !important;
                    }
                }

                @media ( max-width : 380px) {
                    select {
                        width: 98% !important;
                    }
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

                /*  Added by ABhinish */
                select {
                    width: 100%;
                }

                .button-category {
                    background-color: Blue;
                    color: White;
                    padding: 2%;
                    padding-left: 11%;
                    height: 35px;
                    font-size:24px;
                    width: 100%;
                }
                .button-category a {
                    color:white;
                    font-size:24px;
                }
                .row {
                    /*  margin:unset; */

                }

                .box-category-red-left {
                    background-color: #F44336;
                    color: White;
                    padding-top: 4%;
                    padding-right: 1%;
                    padding-bottom: 2%;
                    padding-left: 7%;
                    height: 300px;
                    width:100%;
                }
                .box-category-yellow-right {
                    background-color: #ffb81c;
                    color: black;
                    padding-top: 4%;
                    padding-right: 1%;
                    padding-bottom: 2%;
                    padding-left: 7%;
                    height: 300px;
                    width:100%;
                }
                .col-md-4 {
                    padding-left: 15px;
                    padding-right: 15px;
                }

                .bottom-right-red
                {
                    position: absolute;
                    right: 45px;
                    bottom: 25px;
                    top:unset;
                }
                .bottom-right-yellow
                {
                    position: absolute;
                    right: 45px;
                    bottom: 35px;
                    top:unset;
                }

            </style>
        </head>
        <body class="corporate" style="font-family: Roboto;">
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
                        <li ><a
                                href="${pageContext.request.contextPath }/control">PARENTAL
                                CONTROL</a></li>
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
            <div class="col-md-5" style="padding-left: 3.8%;">
                <h1>Parental Control</h1>
            </div>
            <div class="col-md-7">
                <h1 style="float: middle">Hi ${uesr_name}</h1>
            </div>

        </div>


        <div class="container">

            <div class="col-md-12">
                

                <p><br></p>

                <div class="col-md-2" style="font-size:20px; padding: .5%"> 
                    Protection Status
                </div>

                <div class="col-md-10" >
                    <div class="row">
                        <div class="col-md-4"style="padding-bottom: 10px">
                            <div class="button-category ">
                                <a href="${pageContext.request.contextPath}/control-category/basic" >BASIC</a>
                            </div>
                        </div>
                    </div>

                    <div class="row " style="padding-bottom: 10px">


                        <div class="col-md-4">
                            <div class="button-category ">
                                <a href="${pageContext.request.contextPath}/control-category/basic" >BASIC</a>
                            </div>
                        </div>
                        <!-- <div class="col-md-1"></div> -->
                        <div class="col-md-4">
                            <div class="button-category ">
                                <a href="${pageContext.request.contextPath}/control-category/advance" >ADVANCE</a>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="button-category ">
                                <a href="${pageContext.request.contextPath}/control-category/custom" >CUSTOM</a>
                            </div>
                        </div>
                    </div>


                    <div class="row">


                        <div class="col-md-6">


                            <div class="box-category-red-left">
                                <h3>BLOCKED CATEGORIES</h3>
                                <c:forEach items="${CAT.getBlocked_catogery()}" var="cat">
                                    <h3> <c:out value="${cat}"/> 							</h3>
                                </c:forEach> 

                            </div>

                        </div>


                        <div class="col-md-6 ">
                            <div class="box-category-yellow-right">
                                <h3>
                                    ALLOWED CATEGORIES</h3>
                                    <c:forEach items="${CAT.getAllowded_catogery()}" var="cat">
                                    <h3> <c:out value="${cat}"/> </h3>							</h3>
                                </c:forEach> 	
                            </div>
                        </div>
                        <div class="col-md-12" style="width: 100%; padding: 10px"></div>
                        <div class="col-md-6">
                            <div class="box-category-red-left">
                                <h3>BLOCKED CUSTOM</h3>
                                <h3> Blocked Category 1</h3>
                                <h3>  Blocked Category 2</h3>
                                <h3>  Blocked Category 3</h3>
                                <h3>  Blocked Category 4</h3>
                                <h3>   Blocked Category 5</h3>
                                <h1 class="glyphicon glyphicon-plus-sign bottom-right-red"></h1>


                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="box-category-yellow-right" >
                                <h3  >ALLOWED CUSTOM</h3>
                                <h3  > Allowed Category 1</h3>
                                <h3  >  Allowed Category 2</h3>
                                <h3 >  Allowed Category 3</h3>
                                <h3  > Allowed Category 4</h3>
                                <h3  > Allowed Category 5</h3  >
                                <h1 class="glyphicon glyphicon-plus-sign bottom-right-red" ></h1>


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
