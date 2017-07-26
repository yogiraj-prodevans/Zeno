<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:if test="${not empty error} ">
	<h3> Error ${error}</h3>
</c:if>
	Account Number :: ${profile.getActid() }
	<br> Password :: ******
	<br> Moble Number :: ${profile.getMobileno() }
	<br> Email ID :: ${profile.getEmail() }
	<br> Address :: ${profile.getAddress() }


<form method="post" action="profile/update-pass">
	<input type="text" name="current_password"><br>
	<input type="text" name="new_password" ><br>
	<input type="text" name="confirm_password" ><br>
	<input type="submit" value="change password">
</form>


</body>
</html>