<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form:form role="form" action="payBillRequest" method="post" modelAttribute="payBillDetails" >
	<form:input path="account_id" type="text" id="account_id" placeholder="My Stoic ID " />
	<form:input path="email_id" type="text" id="email_id" placeholder="My Stoic ID " />
	<form:input path="amount" type="text" id="amount" placeholder="My Stoic ID " />
	<button type="submit" >Pay Bill</button>
</form:form>

</body>
</html>