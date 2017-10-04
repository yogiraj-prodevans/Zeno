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

                input[type="checkbox"] {
                    display: unset;
                }
                .tab-content {
                    background: #FAFAFA;
                    padding:unset;
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
            <div id="Allowed" class="tab-pane fade in active">
                <div class="col-md-12" style=" width:100%; min-height: 350px; ">
                    <form action="" method="get">
                        <table class="table" style="width: 100%; font-size: 24px; margin-top:	20px" >
                            <tr>

                                <td> <input type="checkbox" name="category" value="status">Allowed category<br></td>
                                <td> <input type="checkbox" name="category" value="status" checked> Allowed category<br></td>


                            </tr><tr>

                                <td> <input type="checkbox" name="category" value="status">Allowed category<br></td>
                                <td> <input type="checkbox" name="category" value="status" checked> Allowed category<br></td>


                            </tr><tr>

                                <td> <input type="checkbox" name="category" value="status">Allowed category<br></td>
                                <td> <input type="checkbox" name="category" value="status" checked> Allowed category<br></td>


                            </tr><tr>

                                <td> <input type="checkbox" name="category" value="status">Allowed category<br></td>
                                <td> <input type="checkbox" name="category" value="status" checked> Allowed category<br></td>


                            </tr><tr>

                                <td> <input type="checkbox" name="category" value="status">Allowed category<br></td>
                                <td> <input type="checkbox" name="category" value="status" checked> Allowed category<br></td>


                            </tr>


                        </table>
                    </form>


                </div>
            </div>
            <div id="Blocked" class="tab-pane fade">
                <div class="col-md-12" style=" min-height: 350px; ">

                    <form action="" method="get">
                        <table class="table" style="width: 100%; font-size: 24px; margin-top:	20px" >
                            <tr>

                                <td> <input type="checkbox" name="category" value="status">Allowed category<br></td>
                                <td> <input type="checkbox" name="category" value="status" checked> Allowed category<br></td>


                            </tr><tr>

                                <td> <input type="checkbox" name="category" value="status">Allowed category<br></td>
                                <td> <input type="checkbox" name="category" value="status" checked> Allowed category<br></td>


                            </tr><tr>

                                <td> <input type="checkbox" name="category" value="status">Allowed category<br></td>
                                <td> <input type="checkbox" name="category" value="status" checked> Allowed category<br></td>


                            </tr><tr>

                                <td> <input type="checkbox" name="category" value="status">Allowed category<br></td>
                                <td> <input type="checkbox" name="category" value="status" checked> Allowed category<br></td>


                            </tr><tr>

                                <td> <input type="checkbox" name="category" value="status">Allowed category<br></td>
                                <td> <input type="checkbox" name="category" value="status" checked> Allowed category<br></td>


                            </tr>


                        </table>
                    </form>

                </div>
            </div>
            <div id="Custom" class="tab-pane fade">
                <div class="col-md-12" style=" min-height: 350px; ">
                    <form class="form-inline" >
                        <div class="form-group col-md-5 col-md-offset-2" style="margin-top:10px">
                            <label for="email" class="col-md-4">Email:</label>
                            <div class="col-md-8">
                                <input type="text" class="" style="width:100%" id="email" placeholder="Enter email" name="email">
                            </div>
                        </div>
                       
                        <button type="submit" class="btn billButton col-md-3 ">Submit</button>
                    </form>
                    <form action="" method="get">
                        <table class="table" style="width: 100%; font-size: 24px; margin-top:	20px" >
                            <tr>
                                <td>1</td>
                                <td> Allowed category<br></td>
                                <td> <a href="" class="btn billButton">Delete</a></td>


                            </tr><tr>
 <td>2</td>
                                <td> Allowed category<br></td>
                                <td> <a href="" class="btn billButton">Delete</a></td>


                            </tr><tr>
 <td>3</td>
                                <td> Allowed category<br></td>
                                <td> <a href="" class="btn billButton">Delete</a></td>


                           


                        </table>
                    </form>
                </div>
            </div>

        </div>
    </div>



    <!-- included pop up -->
    <jsp:include page="component/pop-up.jsp"></jsp:include>

    <jsp:include page="component/footer.jsp"></jsp:include>

        <!-- Load javascripts at bottom, this will reduce page load time -->
    <jsp:include page="component/js.jsp"></jsp:include>



</body>
</html>
