<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html >
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parental Control</title>
        <%-- Including the css style sheets--%>
        <link
            href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css"
            rel="stylesheet" media="screen">
        <link
            href="${pageContext.request.contextPath }/bootstrap/css/bootstrap-datetimepicker.min.css"
            rel="stylesheet" media="screen">

        <%--End of Including--%>

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
                .nav-tabs > li.active > a#time-tab-name {
                    color: #716868;
                    padding: 5px 15px 15px 60px;
                    border-bottom: 7px red solid !important;
                    background-image: url('${pageContext.request.contextPath }/img/icons/Time_red.png') !important;
                background-size: 50px !important;
                background-repeat: no-repeat !important;
                font-size: 26px;
            }

            .nav-tabs > li > a#time-tab-name {
                color: #716868;
                padding: 5px 15px 15px 60px;
                border-bottom: 7px #fff solid !important;
                background-image: url('${pageContext.request.contextPath }/img/icons/Time_grey.png') !important;
                background-size: 50px !important;
                background-repeat: no-repeat !important;
                font-size: 26px;
            }
            .nav-tabs > li.active > a#day-tab-name {
                color: #716868;
                padding: 5px 15px 15px 60px;
                border-bottom: 7px red solid !important;
                background-image: url('${pageContext.request.contextPath }/img/icons/Day_red.png') !important;
                background-size: 50px !important;
                background-repeat: no-repeat !important;
                font-size: 26px;
            }

            .nav-tabs > li > a#day-tab-name {
                color: #716868;
               padding: 5px 15px 15px 60px;
                border-bottom: 7px #fff solid !important;
                background-image: url('${pageContext.request.contextPath }/img/icons/Day_grey.png') !important;
                background-size: 50px !important;
                background-repeat: no-repeat !important;
                font-size: 26px;
            }

            .nav-tabs > li.active > a#dates-tab-name {
                color: #716868;
               padding: 5px 15px 15px 60px;
                border-bottom: 7px red solid !important;
                background-image: url('${pageContext.request.contextPath }/img/icons/Dates_red.png') !important;
                background-size: 50px !important;
                background-repeat: no-repeat !important;
                font-size: 26px;
            }

            .nav-tabs > li > a#dates-tab-name {
                color: #716868;
               padding: 5px 15px 15px 60px;
                border-bottom: 7px #fff solid !important;
                background-image: url('${pageContext.request.contextPath }/img/icons/Dates_grey.png') !important;
                background-size: 50px !important;
                background-repeat: no-repeat !important;
                font-size: 26px;
            }
            .nav-tabs > li > a{

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
                min-width: 200px;
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

                border-radius: unset !important;
                margin-bottom: unset;
                border : unset;
                box-shadow: unset;
            }
            .panel-body{
                min-height: 200px;
                overflow-x: auto;
                padding: unset !important;
            }
            .panel-default > .panel-heading  {
                color: black;
                background-color: #e2e0e080;

                border-radius: unset;

            }
            .panel-default > .panel-heading > a{
                font-size: 30px !important;
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
                                href="${pageContext.request.contextPath }/billingPayment">PAY YOUR BILL</a></li>
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
             style="background-image: url('img/red_long.png');" style="clear: both">
            <!--  <h1 class="paddingLeftTop" >Parental Control</h1> <h1 class="paddingRight" >Hi Vamsi </h1>  -->
            <div class="col-md-5" style="padding-left: 3.8%;">
                <h1>Parental Control</h1>
            </div>
            <div class="col-md-7">
                <h1 style="float: middle">Hi ${uesr_name}</h1>
            </div>

        </div>

        <div class="container ">
            <h1 class="largeFont pb-10" style="margin-top: 12%;">With Surf Safe, you are in control</h1>

            <h3>
                Your home is your safe space and you deserve to keep it that way. With our Advanced Surf Safe control you can decide what to let in and when. If there are specific websites you want to block, go ahead and add to your Custom setting. Schedule hourly, daily or date-wise, and we'll ensure your chosen categories and URLs remain blocked when you want them to be. Surf Safe, and ensure everyone on your network does too.
            </h3>

            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2 class="panel-title">
                            <a data-toggle="collapse" href="#collapse1" style="font-size: 24px;">SCHEDULE</a>
                        </h2>
                    </div>
                    <div id="collapse1" class="panel-collapse collapse">
                        <div class="panel-body">
                            <ul class="nav nav-tabs  margin-top-20">
                                <li class=" active"><a id="time-tab-name" data-toggle="tab" href="#time-tab">TIME</a></li>
                                <li class=" "><a id="day-tab-name" data-toggle="tab" href="#date-tab"  >DAYS</a></li>
                                <li class=" "><a id="dates-tab-name" data-toggle="tab" href="#dates-tab" >DATES</a></li>

                            </ul>


                            <div class="tab-content">
                                <div id="time-tab" class="tab-pane fade in active row ">
                                    <form:form action="allow-categories"  method="post"  >
                                        <div class="category_box">
                                            <p class="font-h4">During a day, when do you want your Surf Safe controls to be active? Choose a time slot.</p>
                                            <div class="form-group col-md-6">
                                                <label for="time-ip-start" class="col-md-2 control-label">Time Picking</label>
                                                <div class="input-group date form_time col-md-5" data-date="" data-date-format="hh:ii" data-link-field="time-ip-start" data-link-format="hh:ii">
                                                    <input class="form-control" size="16" type="text" value="" readonly>
                                                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                                    <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                                </div>
                                                <input type="hidden" id="time-ip-start" value="" /><br/>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <label for="time-ip-end" class="col-md-2 control-label">Time Picking</label>
                                                <div class="input-group date form_time col-md-5" data-date="" data-date-format="hh:ii" data-link-field="time-ip-end" data-link-format="hh:ii">
                                                    <input class="form-control" size="16" type="text" value="" readonly>
                                                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                                    <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                                </div>
                                                <input type="hidden" id="time-ip-end" value="" /><br/>
                                            </div> 

                                            <div class="panel-footer text-right">
                                                <button id="block" class="btn billButton font-h3" type="submit">SUBMIT</button>
                                            </div>
                                        </div>
                                    </form:form> 	
                                </div>
                                <div id="date-tab" class="tab-pane fade row ">
                                    <form:form action="block-categories"  method="post" >
                                        <div class="category_box">
                                            <p class="font-h4">Should your Surf Safe controls be active only on certain days? Choose days of the week.</p>
                                            <div class="form-group col-md-6">
                                                        <label for="day-time-start" class="col-md-2 control-label">Time Picking</label>
                                                        <div class="input-group date form_time col-md-5" data-date="" data-date-format="hh:ii" data-link-field="day-time-start" data-link-format="hh:ii">
                                                            <input class="form-control" size="16" type="text" value="" readonly>
                                                            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                                            <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                                        </div>
                                                        <input type="hidden" id="day-time-start" value="" /><br/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="day-time-end" class="col-md-2 control-label">Time Picking</label>
                                                        <div class="input-group date form_time col-md-5" data-date="" data-date-format="hh:ii" data-link-field="day-time-end" data-link-format="hh:ii">
                                                            <input class="form-control" size="16" type="text" value="" readonly>
                                                            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                                            <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                                        </div>
                                                        <input type="hidden" id="day-time-end" value="" /><br/>
                                                    </div>



                                            <div class="panel-footer text-right">
                                                <button id="block" class="btn billButton" type="submit">SUBMIT</button>
                                            </div>
                                        </div>
                                    </form:form> 	
                                </div>
                                <div id="dates-tab" class="tab-pane fade ">
                                    <div class="category_box ">
                                        <div style="height:268px ; overflow-x: auto;">   


                                            <div class="row">
                                                <form:form action="delete-patterns"  method="post" >
                                                    <p class="font-h4">Want to active Advance/Custom Surf Safe for a specific period? Choose Dates. </p>
                                                    <div class="form-group col-md-6">
                                                        <label for="date-start" class="col-md-2 control-label">Date Picking</label>
                                                        <div class="input-group date form_date col-md-5" data-date="" data-date-format="dd MM yyyy" data-link-field="date-start" data-link-format="yyyy-mm-dd">
                                                            <input class="form-control" size="16" type="text" value="" readonly>
                                                            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                                            <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                                        </div>
                                                        <input type="hidden" id="date-start" value="" /><br/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="date-end" class="col-md-2 control-label">Date Picking</label>
                                                        <div class="input-group date form_date col-md-5" data-date="" data-date-format="dd MM yyyy" data-link-field="date-end" data-link-format="yyyy-mm-dd">
                                                            <input class="form-control" size="16" type="text" value="" readonly>
                                                            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                                            <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                                        </div>
                                                        <input type="hidden" id="date-end" value="" /><br/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="date-time-start" class="col-md-2 control-label">Time Picking</label>
                                                        <div class="input-group date form_time col-md-5" data-date="" data-date-format="hh:ii" data-link-field="date-time-start" data-link-format="hh:ii">
                                                            <input class="form-control" size="16" type="text" value="" readonly>
                                                            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                                            <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                                        </div>
                                                        <input type="hidden" id="date-time-start" value="" /><br/>
                                                    </div>
                                                    <div class="form-group col-md-6">
                                                        <label for="date-time-end" class="col-md-2 control-label">Time Picking</label>
                                                        <div class="input-group date form_time col-md-5" data-date="" data-date-format="hh:ii" data-link-field="date-time-end" data-link-format="hh:ii">
                                                            <input class="form-control" size="16" type="text" value="" readonly>
                                                            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                                            <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                                        </div>
                                                        <input type="hidden" id="date-time-end" value="" /><br/>
                                                    </div>
                                                    <div class="panel-footer text-right">
                                                        <button id="block" class="btn billButton" type="submit">SUBMIT</button>
                                                    </div>
                                                </form:form>
                                            </div>
                                        </div>
                                    </div>


                                </div>


                            </div>
                            <c:if test="${not empty error }">
                                <h3 style="color: green"><c:out value="${error }"></c:out></h3>

                            </c:if>
                        </div>
                    </div>
                </div>
            </div>



        </div>





        <!-- ======IMPLEMENT BUTTON--END======= -->



        <!-- included pop up -->
        <jsp:include page="component/pop-up.jsp"></jsp:include>

        <jsp:include page="component/footer.jsp"></jsp:include>

            <!-- Load javascripts at bottom, this will reduce page load time -->
        <jsp:include page="component/js.jsp"></jsp:include>
            <!-- END BODY -->
            <script>
                $(document).ready(function () {
                    $('[data-toggle="tooltip"]').tooltip();
                    //    $('current_protectionstatus').title = "hi";
                });
            </script>

            <h3 style="color: green; text-align: center;">
                <b> <c:if test="${ not empty error}">${error}</c:if></b>
            </h3>
            <h3 style="color: red; text-align: center;">
                <b> <c:if test="${ not empty message}">${message}</c:if></b>
            </h3>

            <div class="pt-30"></div>





            <!-- END BODY -->

            <!-- Imports for Date and Time Pickers modules  -->



        <%------SCRIPT  AREA--------%>

        <script type="text/javascript"
                src="${pageContext.request.contextPath}/plugins/jquery.min.js"
        charset="UTF-8"></script>
        <script type="text/javascript"
        src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript"
                src="${pageContext.request.contextPath}/bootstrap/js/bootstrap-datetimepicker.js"
        charset="UTF-8"></script>

        <script type="text/javascript">
                $('#form_datetime').datetimepicker({
                    language: 'en',
                    format: "dd/mm/yyyy@hh:ii",
                    use24hours: true,
                    weekStart: 1,
                    todayBtn: 1,
                    autoclose: 1,
                    todayHighlight: 1,
                    startView: 2,
                    forceParse: 0,
                    showMeridian: 0
                });
                $('.form_date').datetimepicker({
                    language: 'fr',
                    startDate: new Date(),
                    weekStart: 1,
                    todayBtn: 1,
                    autoclose: 1,
                    todayHighlight: 1,
                    startView: 2,
                    minView: 2,
                    forceParse: 0
                });
                $('.form_time').datetimepicker({
                    //language:  'fr',
                    //startDate: new Date(),
                    
                    weekStart: 1,
                    
                    autoclose: 1,
                    todayHighlight: 0,
                    startView: 1,
                    minView: 0,
                    maxView: 1,
                    forceParse: 0
                });
        </script>
    </body>
</html>