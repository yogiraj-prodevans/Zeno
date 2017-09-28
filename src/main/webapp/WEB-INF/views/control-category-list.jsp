<%-- 
    Document   : control-category-list
    Created on : Sep 27, 2017, 6:14:38 PM
    Author     : rajanikant
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="${pageContext.request.contextPath}/control-category/basic">Basic</a>
        <a href="${pageContext.request.contextPath}/control-category/advance">Advance</a>
        <a href="${pageContext.request.contextPath}/control-category/custom">Custom</a>
        <a  class="glyphicon glyphicon-question-sign"></a>
        
        <h2>Block Category</h2>
        <c:forEach items="${CAT.getBlocked_catogery()}" var="cat">
           <c:out value="${cat}"/> <br>
            
        </c:forEach> 
           
          <h2>Allow Category</h2>
        <c:forEach items="${CAT.getAllowded_catogery()}" var="cat">
           <c:out value="${cat}"/> <br>
            
        </c:forEach>   
           
    </body>
</html>
