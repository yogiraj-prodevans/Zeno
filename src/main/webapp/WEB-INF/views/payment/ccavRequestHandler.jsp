<%@page import="java.net.URLEncoder"%>
<%
/*
   This is the sample Checkout Page JSP script. It can be directly used for integration with CCAvenue if your application is developed in JSP. You need to simply change the variables to match your variables as well as insert routines (if any) for handling a successful or unsuccessful transaction.
*/
%>
<%@ page import = "java.io.*,java.util.*,com.ccavenue.security.*" %>
<html>
<head>
	<title>Sub-merchant checkout page</title>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
	<%
	 String accessCode= "";		//Put in the Access Code in quotes provided by CCAVENUES.
	 String workingKey = "";    //Put in the 32 Bit Working Key provided by CCAVENUES.  
	 Enumeration enumeration=request.getParameterNames();
	 String ccaRequest="", pname="", pvalue="";
	 while(enumeration.hasMoreElements()) {
	      pname = ""+enumeration.nextElement();
	      pvalue = request.getParameter(pname);
	      ccaRequest = ccaRequest + pname + "=" + URLEncoder.encode(pvalue,"UTF-8") + "&";

	     
	 }
	 String dd[]= ccaRequest.split("&");
	 for(String d : dd )
	 	out.println("\n"+d);
	 //AesCryptUtil aesUtil=new AesCryptUtil(workingKey);
	 //String encRequest = aesUtil.encrypt(ccaRequest);
	%>

	 
	<form id="nonseamless" method="post" name="redirect" action="https://secure.ccavenue.com/transaction/transaction.do?command=initiateTransaction"/> 
		<input type="hidden" id="encRequest" name="encRequest" value="00">
		<input type="hidden" name="access_code" id="access_code" value="00">
		<script language='javascript'>document.redirect.submit();</script>
	</form>
	
	
	
 </body> 
</html>
