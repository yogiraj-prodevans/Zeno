package com.prodevans.zeno.controller;

import java.net.URLDecoder;
import java.text.DateFormat;
import java.text.ParseException;
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

import com.prodevans.zeno.dao.impl.InvoiceDAOImpl;
//import com.ccavenue.security.AesCryptUtil;
import com.prodevans.zeno.dao.impl.PaymentDAOImpl;
import com.prodevans.zeno.dao.impl.PaymentResponseDAOImpl;
import com.prodevans.zeno.pojo.InvoiceDetails;
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
	
	@Autowired
	private InvoiceDAOImpl invoiceDAOImpl;
	public void setInvoiceDAOImpl(InvoiceDAOImpl invoiceDAOImpl) 
	{
		this.invoiceDAOImpl = invoiceDAOImpl;
	}
	
	/*@Autowired
	private PaymentDetails paymentDetails;
	public void setPaymentDetails(PaymentDetails paymentDetails) {
		this.paymentDetails = paymentDetails;
	}*/
	
	private PaymentDetails paymentDetails=new PaymentDetails();
	
	@RequestMapping(value = "/billingPayment", method = RequestMethod.GET)
	public String billingPayment(ModelMap model, HttpSession session) throws XmlRpcException, ParseException 
	{
		if (session.getAttribute("user") == null) 
		{
			return "redirect:/logout";
		}
		else
		{
			SessionDetails user = (SessionDetails) session.getAttribute("user");
			model.addAttribute("user_details", user);
			
			//for getting invoice details
			InvoiceDetails invoiceDetails=invoiceDAOImpl.getInvoice(user.getActno());
			model.addAttribute("invoiceDetails", invoiceDetails);
			
			/*
			double pendingAmount=paymentDAOImpl.getPendingAmount(user.getActno());
			session.setAttribute("pendingAmount", pendingAmount);
			model.addAttribute("pendingAmount",pendingAmount);
			*/
			
			return "billingPayment";
		}
	}

	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public String doPayment(ModelMap model, HttpSession session) throws XmlRpcException, ParseException
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
		
		//for getting invoice details
		InvoiceDetails invoiceDetails=invoiceDAOImpl.getInvoice(user.getActno());
		model.addAttribute("invoiceDetails", invoiceDetails);
		
		return "payment/sendData";
	}

	@RequestMapping(value = "/viewBill", method=RequestMethod.GET)
	public String viewBill(ModelMap model, HttpSession session) throws XmlRpcException, ParseException
	{
		SessionDetails user = (SessionDetails) session.getAttribute("user");
		//for getting invoice details
		InvoiceDetails invoiceDetails=invoiceDAOImpl.getInvoice(user.getActno());
		model.addAttribute("invoiceDetails", invoiceDetails);
		return "payment/viewBill";
	}
	
	@RequestMapping(value = "/ccavRequestHandler", method=RequestMethod.POST)
	public String ccavRequestHandler()
	{
		return "payment/ccavRequestHandler";
	}
	
	@RequestMapping(value = "/ccvCancelResponse", method=RequestMethod.POST)
	public String ccvCancelResponse()
	{
		return "payment/ccvCancelResponse";
	}
	
	
	
	@RequestMapping(value = "/ccavResponseHandler", method= RequestMethod.POST)
	public String ccavResponseHandler(ModelMap model,HttpSession session, HttpServletRequest request) throws XmlRpcException
	{
		return "payment/ccavResponseHandler";
	}		
}
