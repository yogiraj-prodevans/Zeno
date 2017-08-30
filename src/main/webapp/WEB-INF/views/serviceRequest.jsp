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

<link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet">
        <!--  include the all css components -->
<jsp:include page="component/css.jsp"></jsp:include>
<jsp:include page="component/Fixedblock_PopUp.jsp"></jsp:include>
<jsp:include page="component/ExternalCSS.jsp"></jsp:include>



<style>

.billPayment
{
    color: white; 
}
.greyBlock
{
    background-color: #bdc3c7;
}
    
/* 3 blocks start here */  
.col-md-4
{
    padding-left: 1px;
    padding-right: 1px;
}
.mainBlock3
{
    max-width: 92%;
    color: white;
    margin-top: 5%;
    padding-top: 1%;
    padding-left: 4%;
}
/* 3 blocks End here */
    

        
/*START*/
.boxes {
    margin: auto;
    padding: 50px;
    background: #484848;
}

.tableWidth
{
    width: 45%;
}
/* input text*/
    
input[type=text] 
{
    padding: 0;
    height: 30px;
    width: 100%;
    position: relative;
    left: 0;
    outline: none;
    border-left: none;
    border-right: none;
    border-top: none;
    border-bottom: 0.6px solid #bdc3c7;
    background-color: white;
    font-size: 16px;    
}
    
    
/*Checkboxes styles*/
input[type="checkbox"] { display: none; }

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
}

input[type="checkbox"] + label:last-child { margin-bottom: 0; }

input[type="checkbox"] + label:before {
    content: '';
    display: block;
    width: 20px;
    height: 20px;
    border: 1.2px solid #010745;
    position: absolute;
    left: 0;
    top: 0;
    opacity: .6;
    -webkit-transition: all .12s, border-color .08s;
    transition: all .12s, border-color .08s;
}

input[type="checkbox"]:checked + label:before {
    width: 10px;
    top: -5px;
    left: 5px;
    border-radius: 0;
    opacity: 1;
    border-top-color: transparent;
    border-left-color: transparent;
    -webkit-transform: rotate(45deg);
    transform: rotate(45deg);
}

/*end*/
 
.submitButton
{
    margin-top:10%;
    margin-bottom:10%;
    font-size: 16px;
    width:60%;
    height: 5%;
    background-color: #2980b9;
    color: #FFF;
    border: 0.1px solid #2980b9;
    text-shadow: 0.2px 0.2px white;
    
}    

label
{
	font-weight: 300;
}
    
    
/* iphone 6 plus*/
@media (max-width: 480px)
{
    .firstRow
    {
        padding-left: 5%;
        padding-top: 1%;
    }
    .mobileMargin
    {
        margin-top: 6%;
        margin-bottom: 6%;
    }
    .tableWidth
    {
        width: 100%;
    }
    
}    
    
</style>

        </head>

        <body class="corporate" style="font-family: Roboto;">
            <!-- BEGIN TOP BAR -->
            <div class="pre-header">
                <div class="container">
                    <div class="row">
                        <!-- BEGIN TOP BAR MENU -->
                        <div class="col-md-12 col-sm-12 additional-nav" style=" font-size:12px; font-color:000000">
                            <ul class="list-unstyled list-inline pull-right ">
                                <li ><i class=" fa fa-phone"></i><span>Lets Talk: +91 9019602602</span></li>
                            </ul>
                        </div>
                        <!-- END TOP BAR MENU -->
                    </div>
                </div>
            </div>
            <!-- END TOP BAR -->
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
                        <li class="active" ><a href="${pageContext.request.contextPath }/service">Service Request</a></li> 
                        <li><a href="${pageContext.request.contextPath }/parental-control">Parental Control</a></li>
                        <li><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
                        <li><a href="${pageContext.request.contextPath }/logout">Logout</a></li>
                    </ul>
                </div>
                <!-- END NAVIGATION -->
            </div>
        </div>



<div class="col-md-12 firstRow" style="background-image: url('corporate/img/back.png');">
    <h1>We're at your service</h1>
</div>    
    
<div class="container">
    
    <div class="col-md-12" style="margin-top:5%;">
        
        <div class="row pb-40">
            <div class="col-md-6">
                <input type="text" placeholder="Name"/>        
            </div>
            <div class="col-md-6">
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
                            <select class="form-control" style="border-radius:1px;">
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