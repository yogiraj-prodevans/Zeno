<%@page import="com.prodevans.zeno.dao.impl.PaymentResponseDAOImpl"%>
<%@page import="com.prodevans.zeno.dao.impl.PaymentDAOImpl"%>
<%@page import="com.prodevans.zeno.pojo.PaymentDetails"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URL"%>

<%@page import="org.apache.xmlrpc.client.XmlRpcClient"%>
<%@page import="org.apache.xmlrpc.client.XmlRpcClientConfigImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.io.*,java.util.*,com.ccavenue.security.*" %>
<html>
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


        <!--  include the all css components -->
        <jsp:include page="../component/css.jsp"></jsp:include>

</head>
        <body class="corporate">
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
                        <li class="active"><a href="${pageContext.request.contextPath }/billingPayment">Make Payment</a></li>  
                        <li><a href="${pageContext.request.contextPath }/service">Service Request</a></li> 
                        <li><a href="${pageContext.request.contextPath }/help">Help</a></li> 
                        <li><a href="${pageContext.request.contextPath }/parental-control">Parental Control</a></li>
                        <li><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
                        <li><a href="${pageContext.request.contextPath }/logout">Logout</a></li>
                    </ul>
                </div>
                <!-- END NAVIGATION -->
            </div>
        </div>
        
<%
		String workingKey = "F9F7E30646BF9F9163D6912C338D61FC";		//32 Bit Alphanumeric Working Key should be entered here so that data can be decrypted.
		String encResp= request.getParameter("encResp");
		AesCryptUtil aesUtil=new AesCryptUtil(workingKey);
		String decResp = aesUtil.decrypt(encResp);
		StringTokenizer tokenizer = new StringTokenizer(decResp, "&");
		Hashtable hs=new Hashtable();
		String pair=null, pname=null, pvalue=null;
		while (tokenizer.hasMoreTokens()) {
			pair = (String)tokenizer.nextToken();
			if(pair!=null) {
				StringTokenizer strTok=new StringTokenizer(pair, "=");
				pname=""; pvalue="";
				if(strTok.hasMoreTokens()) {
					pname=(String)strTok.nextToken();
					if(strTok.hasMoreTokens())
						pvalue=(String)strTok.nextToken();
					hs.put(pname, URLDecoder.decode(pvalue));
				}
			}
		}
		PaymentResponseDAOImpl prdi=new PaymentResponseDAOImpl();
	    HashMap<String, String> responseFromCCAvenue= new HashMap<>();
		
	    Enumeration enumeration = hs.keys();
		while(enumeration.hasMoreElements())
		{
			pname=""+enumeration.nextElement();
			pvalue=""+ hs.get(pname);
			responseFromCCAvenue.put(pname, pvalue);
		}
		
		PaymentDetails pd=(PaymentDetails)session.getAttribute("data");
		boolean success=false;
		if(responseFromCCAvenue.get("order_status").equals("Success"))
		{
			
			Vector<Object> params = new Vector<>();
			
			params.add(pd.getActno());
			params.add(pd.getTrans_amount());
			params.add(pd.getTrans_type());
			params.add(new Date());
			params.add(pd.getCurrency());
			params.add(pd.getInstrumentid());
			params.add(pd.getInstrument_detail());
			params.add(pd.getTrans_descr());

			String server_url = "http://52.172.205.76/unifyv3/xmlRPC.do";
			URL serverUrl = new URL(server_url);
			// Create an object to represent our server.
			XmlRpcClient server = new XmlRpcClient();
			XmlRpcClientConfigImpl conf = new XmlRpcClientConfigImpl();
			conf.setBasicUserName("oneeight");
			conf.setBasicPassword("!oneight@#");
			conf.setServerURL(serverUrl);
			
			server.setConfig(conf);
			Object o=(Object) server.execute("unify.addTransaction",params);
			int Transaction_id=(int)o;
			pd.setTransaction_id(Transaction_id);
			success=true;
		}


if(success)
{
%>
		
 <div class="container">
 	<div class="col-md-6">
 		<div style="margin-left: 10%;margin-top: 10%;margin-bottom: 10%;">
 			
 			<img alt="thick" src="corporate/img/logos/yes.png" style="height: 10%;width: 10%;">
	 		
	 		<h2 style="font-family:Roboto; font-size:56px; color: #2ecc71;">
	 		Thank You!
	 		</h2><br>
	 		<h2 style="font-size:44px; color: #2c3e50;margin-left: 2%;margin-bottom: 0px;">Payment was</h2><br>
	 		<h2 style="font-size:44px; color: #2c3e50;margin-left: 2%;">successful.</h2>
	 	</div>
 	</div>
 	<div class="col-md-6">
 		<div style="background-color:#010745; margin-top: 1%;padding-bottom: 2%;">
	 		<div class="row" style="margin-left: 5%; padding-top: 5%;">
	 			<h2 style="font-family:Roboto; font-size:24px; color: #FFF;">Payment Summary</h2><br>
	 		</div>
	 		<div class="row" style="margin-left: 5%;">
	 			<div class="row">
	 				<h2 style="font-family:Roboto; font-size:12px; color: #FFF;margin-left: 3%;">Your payment of INR <%=responseFromCCAvenue.get("amount") %>/- on <%=pd.getTrans_date() %>.</h2><br>
	 			</div>
	 			<div class="row" style="margin-left: 1%;">
	 				<div class="col-md-4">
	 					<div class="row">
		 					<h2 style="font-family:Roboto; font-size:10px; color: #FFF;">TRANSACTION NUMBER</h2>
		 				</div>
		 				<div class="row">
		 					<h2 style="font-family:Roboto; font-size:16px; color: #FFF;"><%=pd.getTransaction_id() %></h2>
		 				</div>
		 			</div>
		 			<div class="col-md-4">
	 					<div class="row">
		 					<h2 style="font-family:Roboto; font-size:10px; color: #FFF;">EMAIL ID</h2>
		 				</div>
		 				<div class="row">
		 					<h2 style="font-family:Roboto; font-size:16px; color: #FFF;"><%=responseFromCCAvenue.get("billing_email") %></h2>
		 				</div>
		 			</div>
		 		</div>
	 		</div>

	 	</div>
	 	
	 	<div class="row">
	 		<div class="col-md-6">
	 			<a href="#">
	 			<div class="confirmPayment">
	 				Download Invoice
	 			</div>
	 			</a>
			 </div>
	 	</div>
	 	
	 	
 	</div>
 </div>
<%
}
else
{
%>
 <div class="container">
 	<div class="col-md-6">
 		<div style="margin-left: 10%;margin-top: 10%;margin-bottom: 10%;">
 			
 			<img alt="thick" src="corporate/img/logos/cross.png" style="height: 10%;width: 10%;">
	 		
	 		<h2 style="font-family:Roboto; font-size:56px; color: #e74c3c;">
	 		Transaction Aborted!
	 		</h2><br>
	 		<h2 style="font-size:44px; color: #2c3e50;margin-left: 2%;margin-bottom: 0px;">Payment was</h2><br>
	 		<h2 style="font-size:44px; color: #2c3e50;margin-left: 2%;">unsuccessful.</h2>
	 	</div>
 	</div>
 	<div class="col-md-6">
 		<div style="background-color:#010745; margin-top: 1%;padding-bottom: 2%;">
	 		<div class="row" style="margin-left: 5%; padding-top: 5%;">
	 			<h2 style="font-family:Roboto; font-size:24px; color: #FFF;">Payment Summary</h2><br>
	 		</div>
	 		<div class="row" style="margin-left: 5%;">
	 			<div class="row">
	 				<h2 style="font-family:Roboto; font-size:12px; color: #FFF;margin-left: 3%;">Your payment of INR <%=pd.getTrans_amount() %>/- on <%=pd.getTrans_date() %> was aborted.</h2><br>
	 			</div>
	 			<div class="row" style="margin-left: 1%;">
	 				<div class="col-md-8">
	 					<div class="row">
		 					<h2 style="font-family:Roboto; font-size:10px; color: #FFF;">REASON</h2>
		 				</div>
		 				<div class="row">
		 					<h2 style="font-family:Roboto; font-size:16px; color: #e74c3c;"><%=responseFromCCAvenue.get("status_message") %></h2>
		 				</div>
		 			</div>
		 		</div>
	 		</div>

	 	</div>
	 	
	 	
 	</div>
 </div>
<%
}
%>
	
	
        <jsp:include page="../component/pop-up.jsp"></jsp:include>
            
        <jsp:include page="../component/footer.jsp"></jsp:include>    
            
            
            <!-- Load javascripts at bottom, this will reduce page load time -->
        <jsp:include page="../component/js.jsp"></jsp:include>
        <!-- END BODY -->
    </body>
</html>