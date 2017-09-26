<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Parental Control</title>
</head>
<body>
    <h3> ${message}</h3>
    <form:form role="form" action="control" method="post" modelAttribute="ParentalControlDetails" >
          
        <lable readonly="true">${ParentalControlDetails.getProtection_status()}</lable>
        <form:select path="protection_status" multiple="false" >
           
            <form:options items="${protection_level}" />                   
        </form:select>
        
        <form:hidden path="request_data"></form:hidden>
        <form:hidden path="user_name"></form:hidden>
        
          <button id="ssendnow" class="btn billButton" type="submit">IMPLEMENT</button>
    </form:form>
          
          <h3>${error}</h3>         
<PRE>
${object_list}
</PRE>

<pre>
${rules}
</pre>

</body>
</html>