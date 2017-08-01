<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- BEGIN NAVIGATION -->
      <div class="header-navigation pull-right font-transform-inherit" style="font-size:10px">
        <ul>
        <li class="dropdown active"> </li>
        <li class="active"><a href="dashboard">Home</a></li>
		<li><a href="${pageContext.request.contextPath }/currentplan">Current plan</a></li>  
		<li><a href="${pageContext.request.contextPath }/billingPayment">Make Payment</a></li>  
		<li><a href="${pageContext.request.contextPath }/topup">Top up</a></li> 
		<li><a href="${pageContext.request.contextPath }/service">Service Request</a></li> 
		<li><a href="#">Help</a></li> 
		<li><a href="#">Parental Control</a></li>
		<li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
          		Settings      
              </a>
                
              <ul class="dropdown-menu">
                <li><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
                <li><a href="#">Account</a></li>
                <li><a href="#">Logout</a></li>
              </ul>
            </li>
        </ul>
      </div>
      <!-- END NAVIGATION -->