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
                        <li><a href="${pageContext.request.contextPath }/billingPayment">Make Payment</a></li>  
                        <li class="active" ><a href="${pageContext.request.contextPath }/service">Service Request</a></li> 
                        <li><a href="${pageContext.request.contextPath }/help">Help</a></li> 
                        <li><a href="${pageContext.request.contextPath }/parental-control">Parental Control</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                                Settings      
                            </a>

                            <ul class="dropdown-menu">
                                <li><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
                                <li><a href="${pageContext.request.contextPath }/logout">Logout</a></li>
                            </ul>
                        </li>
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
				
				Vector<Object> params = new Vector<>();
				
				params.add(pd.getActno());
				params.add(pd.getTrans_amount());
				params.add(pd.getTrans_type());
				params.add(new Date());
				params.add(pd.getCurrency());
				params.add(pd.getTransaction_id());
				params.add(pd.getInstrument_detail());
				params.add(pd.getTrans_descr());
				
				/*params.add(22);
				params.add(1.00);
				params.add("C");
				params.add(new Date());
				params.add("INR");
				params.add(3);
				params.add("Credit Card");
				params.add("trans_descr");*/

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
				
				
			%>
			
 <!-- BEGIN STEPS -->
        <div class="row front-steps-wrapper"  style="margin-left: 0.001%;width: 100%;">
            <div class="col-lg-12 col-md-12 col-sm-12 front-step-col">
                <div class="front-step front-stepv">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 margin-top-5 ">
                            <div class="col-lg-12 col-md-12 col-sm-12 margin-top-5"  style="padding-left: 10%;">

                                <div class="col-md-6">
                                    <h2 style="font-family:Roboto; font-size:30px">Transaction Completed</h2>
                                </div>
                                
                                <div class="col-md-6">
                                	<h2 style="font-family:Roboto; font-size:14px">Transaction ID : <%=Transaction_id %></h2><br>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!-- END STEPS -->

			
			<tr><h1>Transaction ID : <%=Transaction_id %></h1></tr>
		
	
	
	
	
 <!-- included pop up -->
        <jsp:include page="../component/pop-up.jsp"></jsp:include>
            <!-- BEGIN FOOTER -->
            <div class="footer" style="font-size:10px; line-height:1">
                <div class="container">
                    <div class="row">
                        <!-- BEGIN COPYRIGHT -->
                        <div class="col-md-10 col-sm-10 padding-bottom-10 " > 2017 &copy Stoic Zeno. ALL Rights Reserved.&nbsp 
                            <a href="#">Privacy Policy</a> |
                            <a href="${pageContext.request.contextPath }/terms">Terms of Service</a> |
                            <a href="javascript:;">Refund and Cancellation</a> |
                            <a href="javascript:;">Feedback</a> |
                            <a href="javascript:;">Contact Us</a>
                        </div>
                        <!-- END COPYRIGHT -->
                    </div>
                </div>
            </div>
            <!-- END FOOTER -->
          
            <!-- Load javascripts at bottom, this will reduce page load time -->
        <jsp:include page="../component/js.jsp"></jsp:include>
        <!-- END BODY -->
    </body>
</html>