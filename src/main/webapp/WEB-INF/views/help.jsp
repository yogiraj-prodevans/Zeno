<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html >

<html lang="en">

<!-- Head BEGIN -->
<head>
<head>
<meta charset="utf-8">
<title>STOIC ZENO</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta content="Stoic Zeno User Portal" name="description">
<meta content="Stoic Zeno User Portal Keywords" name="keywords">

<!-- link to image for socio -->
<meta property="og:url" content="-CUSTOMER VALUE-">
<!--  include the all css components -->
<jsp:include page="component/css.jsp"></jsp:include>
</head>
<body class="corporate">
	
<!--  include menubar -->
<jsp:include page="component/menubar.jsp"></jsp:include>	
	
<div class="col-md-12 firstRow pt-20" style="background-image: url('img/red_long.png');">
    <h1 style="margin-left: 4%;">FAQs</h1>
</div>


<div class="container">
  <div class="col-md-12">
      <h1 class="pb-20">General</h1>
          <p class="font-h3" >What is FTTH?</p>
          <p class="font-h4"> FTTH stands for Fiber-to-the-Home. This means a fiber optic line is hooked directly to your home or business. Fiber optic line uses a thin strand of glass to transmit beams of light that carry an amazing amount of data. This delivers high-speed Internet services.</p>
         <br> <p class="font-h3" >What is FUP</p>
          <p class="font-h4">Fair Usage Policy (also known as Fair Access Policy or  Band width  Cap) is implemented by Internet Service Providers (ISPs) where once you reach data transfer limit as per the plan opted,speed reduces to as stated in your plan and is reset as per plan at the start of your next monthly billing cycle.</p>
         <br> <p class="font-h3" >What is One8 Cube?</p>
          <p class="font-h4">Lorem ipsum dolor sit amet, tellus ut nibh odio lacinia, purus nam faucibus maecenas mauris quam ultricies, vel magna maecenas. Tempor nunc velit suspe ndisse in in, mauris amet, nullam condimentum arcu vehicula,curab itur sed risus ipsum. lnventore nullam sed non, dui ut tristique molestie. Rutrum velit magna integer id, in erat nulla justo at, ultr icies pellentesque vel duis in,enim porttitor phasellus aliquam, rutrum ac eu sed pellentesque.</p>
         <br> <p class="font-h3" >How many devices can I use on One8 Cube?</p>
          <p class="font-h4">Erat semper elementum eras vestibulum ipsum luctus, velvitae mauris per ipsum lea quam, suspendisse vehicula, mauris eu quae ut nu llam quam,eget massa ultricies dignissim. Quis diam,tellus vitae dictumst sed ipsum, nam tincidunt. Semper pharetra venenatis fermentum urna vitae volutpat.</p>
       <br>   <p class="font-h2" >New connection</p>
          <p class="font-h3">What is the cost of a new connection?</p>
          <p class="font-h4">Erat semper elementum eras vestibulum ipsum luctus, velvitae mauris per ipsum lea quam, sretra venenatis fermentum urna vitae volutpat</p>          
   </div>
</div>                
                
	<div style="padding-top: 2%"></div>


	<jsp:include page="component/pop-up.jsp"></jsp:include>
	<jsp:include page="component/footer.jsp"></jsp:include>

	<!-- Load javascripts at bottom, this will reduce page load time -->
	<jsp:include page="component/js.jsp"></jsp:include>


	<!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>