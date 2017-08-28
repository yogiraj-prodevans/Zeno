<%@page import="com.prodevans.zeno.pojo.TopUpPaymentDetails"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URL"%>

<%@page import="org.apache.xmlrpc.client.XmlRpcClient"%>
<%@page import="org.apache.xmlrpc.client.XmlRpcClientConfigImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.io.*,java.util.*,com.ccavenue.security.*" %>


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
        <jsp:include page="../component/Fixedblock_PopUp.jsp"></jsp:include>

</head>
        <body class="corporate" style="font-family: Roboto;">
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

	    HashMap<String, String> responseFromCCAvenue= new HashMap<>();
		
	    Enumeration enumeration = hs.keys();
		while(enumeration.hasMoreElements())
		{
			pname=""+enumeration.nextElement();
			pvalue=""+ hs.get(pname);
			responseFromCCAvenue.put(pname, pvalue);
		}
		
		TopUpPaymentDetails pd=(TopUpPaymentDetails)session.getAttribute("data");
		boolean success=false;
		Boolean sendCustomer=false;
		Boolean sendOE=false;
		int Transaction_id=0;
		
		if(responseFromCCAvenue.get("order_status").equals("Success"))
		{
			
			Vector<Object> params = new Vector<>();
			
			/*For Sednding Mails Start*/
			Vector<Object> paramsCustomer = new Vector<>();
			paramsCustomer.add("Message");
			paramsCustomer.add("Subject");
			paramsCustomer.add(responseFromCCAvenue.get("billing_email"));
			paramsCustomer.add(1);
			
			Vector<Object> paramsOE = new Vector<>();
			paramsOE.add("Message");
			paramsOE.add("Subject");
			paramsOE.add("suguna@oneeight.co.in");
			paramsOE.add(1);
			/*For Sednding Mails Start*/
			
			/*Setting Values for instrumetn id,details, transtype, currency, trans desciption Starts here */
			params.add(pd.getActno());//actno 1
			params.add(responseFromCCAvenue.get("amount"));//amount	2	
					
			if(responseFromCCAvenue.get("payment_mode").equals("Debit Card"))
			{
				params.add(responseFromCCAvenue.get("D"));//Transaction type 3
				params.add(new Date());//trans_date 4
				params.add(responseFromCCAvenue.get("currency"));//currency 5
				params.add(9);//instrument_id 6
				params.add(responseFromCCAvenue.get("payment_mode"));//instrument_detail 7
				params.add("Transaction of "+responseFromCCAvenue.get("amount")+"/- completed successfully");//transaction description 8
			}
			else if(responseFromCCAvenue.get("payment_mode").equals("Credit Card"))
			{
				params.add(responseFromCCAvenue.get("C"));//Transaction type 3
				params.add(new Date());//trans_date 4
				params.add(responseFromCCAvenue.get("currency"));//currency 5
				params.add(8);//instrument_id 6
				params.add(responseFromCCAvenue.get("payment_mode"));//instrument_detail 7
				params.add("Transaction of "+responseFromCCAvenue.get("amount")+"/- completed successfully");//transaction description 8
			}
			else
			{
				params.add(responseFromCCAvenue.get("C"));//Transaction type 3
				params.add(new Date());//trans_date 4
				params.add(responseFromCCAvenue.get("currency"));//currency 5
				params.add(10);//instrument_id 6
				params.add("N/A");//instrument_detail 7
				params.add("Transaction of "+responseFromCCAvenue.get("amount")+"/- completed successfully");//transaction description 8
			}	
			/*Setting Values for instrumetn id,details, transtype, currency, trans desciption ends here */
			


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
			Transaction_id=(int)o;
			pd.setTransaction_id(Transaction_id);
			
			sendCustomer= (Boolean) server.execute("unify.sendMail",paramsCustomer); 
			sendOE= (Boolean) server.execute("unify.sendMail",paramsOE);
			
			success=true;
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
	                <h4><%=Transaction_id %></h4><br>
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