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
.mainBlock3
{
    max-width: 92%;
    color: white;
    margin-top: 5%;
    padding-top: 1%;
    padding-left: 4%;
}
/* 3 blocks End here */
    
.firstRow
{
    min-height: 100px;
    padding-top:10px;
}
      
/* iphone 6 plus*/
@media (max-width: 480px)
{
    .mainBlock3 
    {
        width:100%;
        margin: 5%;
    }
}    
    
</style>
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
			
			if(responseFromCCAvenue.get("payment_mode").contains("Debit Card"))
			{
				params.add("D");
				params.add(new Date());
				params.add(pd.getCurrency());
				params.add(9);
				params.add("Debit Card");
				params.add(pd.getTrans_descr());
				out.println("<h1>All value set to param</h1><br>");
			}
			if(responseFromCCAvenue.get("payment_mode").contains("Credit Card"))
			{
				params.add("C");
				params.add(new Date());
				params.add(pd.getCurrency());
				params.add(8);
				params.add("Credit Card");
				params.add(pd.getTrans_descr());
				out.println("<h1>All value set to param</h1><br>");
			}
			
			//params.add(pd.getTrans_type());
			//params.add(new Date());
			//params.add(pd.getCurrency());
			//params.add(pd.getInstrumentid());
			//params.add(pd.getInstrument_detail());
			//params.add(pd.getTrans_descr());
			

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
			out.println("<h1>Transaction ID : "+Transaction_id+"</h1><br>");
			success=true;
			out.println("<h1>Success : "+success+"</h1><br>");
		}


if(success)
{
%>
		
    <div class="row">
        <div class="col-md-4 firstRow" style="background-image: url('back.png');background-repeat:no-repeat;">
            <h1 style="color:white;margin-left:15%;">Bill payment</h1>
        </div>
        <div class="col-md-8 firstRow" style="background-color: #ecf0f1;">
            <div class="col-md-10">
                <h1>Your transaction was successful.</h1>
            </div>
            <div class="col-md-2">
               
            </div>
        </div>
    </div>
    
	<div class="container">
	    <div class="row col-md-12">
	        <div class="col-md-4">
	        </div>
	        <div class="col-md-8">
	            <div class="mainBlock3" style="background-color: #2980b9;">
	                <h4>Payment summary</h4><br>
	                <h3>Your payment of INR.<%=responseFromCCAvenue.get("amount") %>/- was successful.</h3><br>
	                <h5>TRANSACTION ID</h5>
	                <h4><%=pd.getTransaction_id() %></h4><br>
	            </div>
	        </div>
	    </div>
	</div>
<%
}
else
{
%>
	<div class="row">
        <div class="col-md-4 firstRow" style="background-image: url('back.png');background-repeat:no-repeat;">
            <h1 style="color:white;margin-left:15%;">Bill payment</h1>
        </div>
        <div class="col-md-8 firstRow" style="background-color: #ecf0f1;">
            <div class="col-md-10">
                <h1>Your transaction was unsuccessful.</h1>
            </div>
            <div class="col-md-2">
               
            </div>
        </div>
    </div>
    
	<div class="container">
	    <div class="row col-md-12">
	        <div class="col-md-4">
	        </div>
	        <div class="col-md-8">
	            <div class="mainBlock3" style="background-color: #2980b9;">
	                <h4>Payment summary</h4><br>
	                <h3>Your payment of INR.<%=responseFromCCAvenue.get("amount") %>/- was unsuccessful.</h3><br>
	                <h5>REASON</h5>
	                <h4><%=responseFromCCAvenue.get("status_message") %></h4><br>
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