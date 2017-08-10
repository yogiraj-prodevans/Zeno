package com.prodevans.zeno.controller;

import java.net.URLDecoder;
import java.text.DateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Locale;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.xmlrpc.XmlRpcException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ccavenue.security.AesCryptUtil;
import com.prodevans.zeno.dao.impl.PaymentDAOImpl;
import com.prodevans.zeno.dao.impl.PaymentResponseDAOImpl;
import com.prodevans.zeno.pojo.PaymentDetails;
import com.prodevans.zeno.pojo.SessionDetails;
import com.prodevans.zeno.pojo.UserDetails;
import com.prodevans.zeno.pojo.UserInfo;

@Controller
public class PaymentController 
{
	@Autowired
	private PaymentDAOImpl paymentDAOImpl;
	public void setPaymentDAOImpl(PaymentDAOImpl paymentDAOImpl) {
		this.paymentDAOImpl = paymentDAOImpl;
	}
	
	/*@Autowired
	private PaymentDetails paymentDetails;
	public void setPaymentDetails(PaymentDetails paymentDetails) {
		this.paymentDetails = paymentDetails;
	}*/
	
	private PaymentDetails paymentDetails=new PaymentDetails();
	
	@RequestMapping(value = "/billingPayment", method = RequestMethod.GET)
	public String billingPayment(ModelMap model, HttpSession session) throws XmlRpcException 
	{
		if (session.getAttribute("user") == null) 
		{
			return "redirect:/logout";
		}
		else
		{
			SessionDetails user = (SessionDetails) session.getAttribute("user");
			model.addAttribute("user_details", user);
			
			/*
			double pendingAmount=paymentDAOImpl.getPendingAmount(user.getActno());
			session.setAttribute("pendingAmount", pendingAmount);
			model.addAttribute("pendingAmount",pendingAmount);
			*/
			
			return "billingPayment";
		}
	}

	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public String doPayment(ModelMap model, HttpSession session)
	{
		SessionDetails user = (SessionDetails) session.getAttribute("user");
	
		/*paymentDetails.setActno(user.getActno());
		paymentDetails.setCurrency("INR");
		paymentDetails.setInstrument_detail("instrument Details");
		paymentDetails.setInstrumentid(3);
		paymentDetails.setTrans_amount(user.getPendingAmount());
		paymentDetails.setTrans_date("Date ");
		paymentDetails.setTrans_descr("Transaction Description");
		paymentDetails.setTrans_type("Credit Card");*/
		
		model.addAttribute("user_details", user);
		return "payment/sendData";
	}

	@RequestMapping(value = "/ccavRequestHandler", method=RequestMethod.POST)
	public String ccavRequestHandler()
	{
		return "payment/ccavRequestHandler";
	}
	
	@RequestMapping(value = "/ccavResponseHandler", method= RequestMethod.POST)
	public String ccavResponseHandler(ModelMap model,HttpSession session, HttpServletRequest request) throws XmlRpcException
	{
		String workingKey = "F9F7E30646BF9F9163D6912C338D61FC";		//32 Bit Alphanumeric Working Key should be entered here so that data can be decrypted.
		String encResp= request.getParameter("encResp");
		AesCryptUtil aesUtil=new AesCryptUtil(workingKey);
		String decResp = aesUtil.decrypt(encResp);
		StringTokenizer tokenizer = new StringTokenizer(decResp, "&");
		Hashtable hs=new Hashtable();
		String pair=null, pname=null, pvalue=null;
		while (tokenizer.hasMoreTokens())
		{
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
		PaymentDetails paymentDetailsSet=prdi.setAllPaymentTransactionDetails(responseFromCCAvenue);
		PaymentDetails paymentDetailsGet=prdi.getAllPaymentTransactionDetails(paymentDetailsSet);
		
		session.setAttribute("paymentDetailsGet", paymentDetailsGet);
		model.addAttribute("paymentDetailsGet", paymentDetailsGet);
		
		return "payment/ccavResponseHandler";
	}		
}
