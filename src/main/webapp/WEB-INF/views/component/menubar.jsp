<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!-- BEGIN HEADER -->
<div class="header">
    <div class="row">
        <a class="site-logo" href="#"> <img
                src="corporate/img/logos/logo.png" alt="Stoic Zeno">
        </a> <a href="javascript:void(0);" class="mobi-toggler"><i
                class="fa fa-bars"></i></a>
        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation pull-right font-transform-inherit"
             style="font-size: 12px">
            <ul>
                <li class="dropdown active"></li>
                <li><a href="${pageContext.request.contextPath }/dashboard">HOME</a></li>
                <li><a href="${pageContext.request.contextPath }/billingPayment">MAKE PAYMENT</a></li>
                <li><a href="${pageContext.request.contextPath }/service">SERVICE REQUEST</a></li>
                <li><a href="${pageContext.request.contextPath }/profile">PROFILE</a></li>
                <li><a href="${pageContext.request.contextPath }/logout">LOGOUT</a></li>
            </ul>
        </div>
        <!-- END NAVIGATION -->
    </div>
</div>
<!-- Header END -->
