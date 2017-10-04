<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html >
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parental Control</title>
        <%-- Including the css style sheets--%>
        <link
            href=".${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css"
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
                .weekDays-selector input {
                    display: none !important;
                    width: 30px;
                    height: 30px;
                }

                input[type="checkbox"]+label {
                    display: inline-block;
                    /* Important please don't remove the inline box' */
                    width: 50px;
                    height: 50px;
                    padding: unset;
                    border-radius: 30%;
                    text-align: center;
                    padding: 10px;
                }

                /* .weekDays-selector input[type=checkbox] + label */
                .weekDays-selector input[type="checkbox"]:checked+label::before {
                    content: unset;
                    display: inline-block;
                    border-radius: 5px;
                    background: #dddddd;
                    margin-right: 3px;
                    line-height: 40px;
                    text-align: left;
                    cursor: pointer;
                    background: #2AD705;
                    color: #ffffff;
                }

                .weekDays-selector input[type="checkbox"]+label::before {
                    content: unset;
                    display: inline-block;
                    border-radius: 5px;
                    background: #dddddd;
                    margin-right: 3px;
                    line-height: 40px;
                    text-align: left;
                    cursor: pointer;
                    border: 1px black solid;
                }

                .weekDays-selector input[type=checkbox]:checked+label {
                    background: #ffb81c;
                    color: #ffffff;
                }

                /* enable absolute positioning */
                .inner-addon {
                    position: relative;
                }

                /* style icon */
                .inner-addon .glyphicon {
                    position: absolute;
                    padding: 10px;
                    pointer-events: none;
                }

                /* align icon */
                .left-addon .glyphicon {
                    left: 0px;
                }

                .right-addon .glyphicon {
                    right: 0px;
                }

                /* add padding  */
                .left-addon input {
                    padding-left: 30px;
                }

                .right-addon input {
                    padding-right: 30px;
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
             style="background-image: url('img/red_long.png');" style="clear: both">
            <!--  <h1 class="paddingLeftTop" >Parental Control</h1> <h1 class="paddingRight" >Hi Vamsi </h1>  -->
            <div class="col-md-5" style="padding-left: 3.8%;">
                <h1>Parental Control</h1>
            </div>
            <div class="col-md-7">
                <h1 style="float: middle">Hi ${uesr_name}</h1>
            </div>

        </div>

        <div class="container">

            <div class="col-md-12">
                <p class="font-h1">
                    With Surf Safe, you're in control</p>

                <p class="font-h3">
                    Your home is your safe space and you deserve to keep it that
                    way. With our Advanced Surf Safe control you can decide what to let
                    in and when. If there are specific websites you want to block, go
                    ahead and add to your Custom setting. Schedule hourly, daily or
                    date-wise, and we'll ensure your chosen categories and URLs remain
                    blocked when you want them to be. Surf Safe, and ensure everyone on
                    your network does too.
                </p>
                <p>
                    <br>
                </p>

                <form:form role="form" action="control" method="post" modelAttribute="ParentalControlDetails" class="row">
                    <div class="col-md-2">
                        <h4 style="padding-top: 1%;">Protection Status</h4>
                    </div>
                    <div class="col-md-3 mb-pt-30">
                        <h4 type="text"
                            style="background-color: #ffb81c; color: White; padding: 5px; padding-left: 15px;"
                            name="current_protectionstatus" disabled value="">
                            ${ParentalControlDetails.getProtectionStatusName()}</h4>
                    </div>

                    <div class="col-md-4">
                        <div class="col-md-2">
                            <a href="${pageContext.request.contextPath }/control-category"></a>
                        </div>
                        <h4 style="padding-top: 1%;" class="mb-pt-1">Change your
                            protection status</h4>
                    </div>

                    <div class="col-md-3 mb-pt-25">
                        <form:select path="protection_status" multiple="false">

                            <form:options items="${protection_level}" />
                        </form:select>

                        <form:hidden path="request_data"></form:hidden>
                        <form:hidden path="user_name"></form:hidden>
                        </div>
                         <!-- ======IMPLEMENT BUTTON--START======= -->
                    <div class="col-md-12" style="text-align: right; margin-top: 30px;">
                        <a  class="btn billButton font-h2" href="${pageContext.request.contextPath }/control/${ParentalControlDetails.getProtectionStatusName()}">MANAGE ${ParentalControlDetails.getProtectionStatusName()}</a>
                        <button  class="btn billButton font-h2" type="submit">IMPLEMENT</button>
                    </div>
 </form:form>
                        <!--  Schedule Status--START  -->




                        <div class="col-md-12">
                            <hr>
                        </div>

                        <div class="col-md-12">
                            <!-- <div class="col-md-4"> -->
                            <div class="row">


                                <div class="col-md-12">
                                    <br>
                                </div>
                                <div class="col-md-12">
                                    <br>
                                    <h4>Choose to Surf Safe and ENJOY !</h4>
                                </div>

                                <div class="col-md-12">
                                    <div class="col-md-3" style="padding-left: 0px">

                                        <h4>Schedule Status:</h4>

                                    </div>
                                    <div class="col-md-3">
                                        <select name="status">
                                            <option value="Enable">ENABLE</option>
                                            <option value="Disable">DISABLE</option>

                                        </select>
                                    </div>

                                    <!-- ======FORM START======= -->


                                    <!--  Schedule Status--END  -->
                                    <!-- Time Based Control--START -->
                                </div>
                                <div class="col-md-12">
                                    <hr>
                                </div>
                                <div class="col-md-12">
                                    <br>
                                </div>
                                <div class="col-md-12">
                                    <br>
                                    <h4>During a day, when do you want your Surf Safe controls
                                        to be active? Choose a time slot</h4>
                                </div>
                                <form>
                                    <div class="col-md-12">
                                        <input type="radio" name="gender" value="Time Based Control"
                                               checked>Time Based Control<br> <br>

                                    </div>
                                    <!-- <div class="col-md-8"><br></div>
                                    -->

                                    <div class="col-md-12">
                                        <div class="col-md-6">


                                            <div class="form-group">
                                                <label for="dtp_input3" class="col-md-3 control-label">Start
                                                    Time </label>
                                                <div class="input-group date form_time col-md-9" data-date=""
                                                     data-date-format="hh:ii" data-link-field="dtp_input3"
                                                     data-link-format="hh:ii">
                                                    <input class="form-control" size="16" type="text" value=""
                                                           readonly> <span class="input-group-addon"><span
                                                            class="glyphicon glyphicon-remove"></span></span> <span
                                                        class="input-group-addon"><span
                                                            class="glyphicon glyphicon-time"></span></span>
                                                </div>
                                                <input type="hidden" id="dtp_input3" value="" /><br />
                                            </div>

                                        </div>


                                        <div class="col-md-6">

                                            <div class="form-group">
                                                <label for="dtp_input3" class="col-md-3 control-label">End
                                                    Time </label>
                                                <div class="input-group date form_time col-md-9" data-date=""
                                                     data-date-format="hh:ii" data-link-field="dtp_input3"
                                                     data-link-format="hh:ii">
                                                    <input class="form-control" size="16" type="text" value=""
                                                           readonly> <span class="input-group-addon"><span
                                                            class="glyphicon glyphicon-remove"></span></span> <span
                                                        class="input-group-addon"><span
                                                            class="glyphicon glyphicon-time"></span></span>
                                                </div>
                                                <input type="hidden" id="dtp_input3" value="" /><br />
                                            </div>


                                        </div>

                                    </div>


                                    <!-- Time Based Control--END -->
                                    <!-- Day Based Control--START -->
                                    <div class="col-md-12">
                                        <hr>
                                    </div>
                                    <div class="col-md-12">
                                        <br>
                                    </div>
                                    <div class="col-md-12">
                                        <br>
                                        <h4>Should your Surf Safe controls be active only on
                                            certain days? Choose days of the Week</h4>
                                    </div>


                                    <div class="col-md-12">
                                        <input type="radio" name="gender" value="Day Based Control">Day
                                        Based Control<br> <br>

                                    </div>
                                    <div class="col-md-12">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-8">
                                            <div class="weekDays-selector">
                                                <input type="checkbox" id="weekday-mon" class="weekday" /> <label
                                                    for="weekday-mon">Mon</label> <input type="checkbox"
                                                    id="weekday-tue" class="weekday" /> <label for="weekday-tue">Tue</label>
                                                <input type="checkbox" id="weekday-wed" class="weekday" /> <label
                                                    for="weekday-wed">Wed</label> <input type="checkbox"
                                                    id="weekday-thu" class="weekday" /> <label for="weekday-thu">Thus</label>
                                                <input type="checkbox" id="weekday-fri" class="weekday" /> <label
                                                    for="weekday-fri">Fri</label> <input type="checkbox"
                                                    id="weekday-sat" class="weekday" /> <label for="weekday-sat">Sat</label>
                                                <input type="checkbox" id="weekday-sun" class="weekday" /> <label
                                                    for="weekday-sun">Sun</label>
                                            </div>

                                            <!-- <input type="botton"
                                                    id="weekday-all" class="weekday" /> <label for="weekday-all"
                                                    style="background: #F44336;">This Week</label> -->
                                        </div>

                                        <div class="col-md-2"></div>

                                    </div>
                                    <!-- Day Based Control--END -->
                                    <!-- Date Based Control--START -->
                                    <div class="col-md-12">
                                        <hr>
                                    </div>
                                    <div class="col-md-12">
                                        <br>
                                    </div>
                                    <div class="col-md-12">
                                        <br>
                                        <h4>Want to activate Advance/Custom Surf Safe for a
                                            specific period? Choose dates</h4>
                                    </div>

                                    <div class="col-md-12">
                                        <input type="radio" name="gender" value="Date Based Control">Date
                                        Based Control<br>
                                        <br>

                                    </div>

                                    <div class="col-md-12">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="dtp_input1" class="col-md-4 control-label">Start
                                                    Date and Time</label>
                                                <div class="input-group date form_datetime col-md-8" data-date="1979-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii"
                                                     data-link-field="dtp_input1">
                                                    <input class="form-control" size="16" type="text" value=""
                                                           readonly> <span class="input-group-addon"><span
                                                            class="glyphicon glyphicon-remove"></span></span> <span
                                                        class="input-group-addon"><span
                                                            class="glyphicon glyphicon-th"></span></span>
                                                </div>
                                                <input type="hidden" id="dtp_input1" value="" /><br />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="dtp_input1" class="col-md-4 control-label">End
                                                    Date and Time</label>
                                                <div class="input-group date form_datetime col-md-8"
                                                     data-date="1979-09-16T05:25:07Z"
                                                     data-date-format="dd MM yyyy - HH:ii"
                                                     data-link-field="dtp_input1">
                                                    <input class="form-control" size="16" type="text" value=""
                                                           readonly> <span class="input-group-addon"><span
                                                            class="glyphicon glyphicon-remove"></span></span> <span
                                                        class="input-group-addon"><span
                                                            class="glyphicon glyphicon-th"></span></span>
                                                </div>
                                                <input type="hidden" id="dtp_input1" value="" /><br />
                                            </div>
                                        </div>
                                    </div>





                                </form>
                                <!-- ======FORM END======= -->
                            </div>



                        </div>




                    <%-- 
                    <div class="col-md-12">
                    Test Area of the time and date picker

                <div class="container">
                    <form action="" class="form-horizontal"  role="form">
                        <fieldset>
                            <legend>Test</legend>
                           <!--  <div class="form-group">
                                <label for="dtp_input1" class="col-md-2 control-label">DateTime Picking</label>
                                <div class="input-group date form_datetime col-md-5" data-date="1979-09-16T05:25:07Z" data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
                                    <input class="form-control" size="16" type="text" value="" readonly>
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                                </div>
                                <input type="hidden" id="dtp_input1" value="" /><br/>
                            </div> -->
                            <div class="form-group">
                                <label for="dtp_input2" class="col-md-2 control-label">Date Picking</label>
                                <div class="input-group date form_date col-md-5" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                    <input class="form-control" size="16" type="text" value="" readonly>
                                    <!--<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>-->
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                </div>
                                <input type="hidden" id="dtp_input2" value="" /><br/>
                            </div>
                           <!--  <div class="form-group">
                                <label for="dtp_input3" class="col-md-2 control-label">Time Picking</label>
                                <div class="input-group date form_time col-md-5" data-date="" data-date-format="hh:ii" data-link-field="dtp_input3" data-link-format="hh:ii">
                                    <input class="form-control" size="16" type="text" value="" readonly>
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                                    <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                                </div>
                                <input type="hidden" id="dtp_input3" value="" /><br/>
                            </div> -->
                        </fieldset>
                    </form>
                </div>

                    --%>

                    <!--   </div> -->

                    <!-- ======IMPLEMENT BUTTON--START======= -->
                    <div class="col-md-12" style="text-align: right; margin-top: 30px;">
                        <button id="ssendnow" class="btn billButton font-h2" type="submit">IMPLEMENT</button>
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
            <%--  <script type="text/javascript" src="../js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>--%>
            <script type="text/javascript">
                $('.form_datetime').datetimepicker({
                    language: 'en',
                    format: "dd MM yyyy - hh:ii",
                    use24hours: true,
                    weekStart: 1,
                    todayBtn: 1,
                    autoclose: 1,
                    todayHighlight: 1,
                    startView: 2,
                    forceParse: 0,
                    showMeridian: 0
                });
                /*  $('.form_date').datetimepicker({
                 language:  'en',
                 weekStart: 1,
                 todayBtn:  1,
                 autoclose: 1,
                 todayHighlight: 1,
                 startView: 2,
                 minView: 2,
                 forceParse: 0
                 }); */
                $('.form_time').datetimepicker({
                    language: 'en',
                    weekStart: 1,
                    todayBtn: 1,
                    autoclose: 1,
                    todayHighlight: 1,
                    startView: 1,
                    minView: 0,
                    maxView: 1,
                    forceParse: 0
                });
            </script>
    </body>
</html>