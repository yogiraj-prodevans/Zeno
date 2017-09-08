package com.prodevans.zeno.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.apache.xmlrpc.XmlRpcException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.prodevans.zeno.dao.impl.SendMailDAOImpl;
import com.prodevans.zeno.pojo.SendMailDetails;
import com.prodevans.zeno.pojo.ServiceRequest;


@Controller
public class MailController
{
	@Autowired
	SendMailDAOImpl feedbackDAOImpl;
	public SendMailDAOImpl getFeedbackDAOImpl() {
		return feedbackDAOImpl;
	}

	@RequestMapping(value = "/feedbackPage", method = RequestMethod.GET)
	public ModelAndView feedbackPage(ModelMap model, HttpSession session) 
	{
		return  new ModelAndView("feedback","feedbackDetails",new SendMailDetails());
	}
	
	@RequestMapping(value = "/feedbackRequestPage", method = RequestMethod.POST)
	public String feedbackRequest(ModelMap model, HttpSession session,@ModelAttribute(name="feedbackDetails")SendMailDetails feedback) throws XmlRpcException 
	{
		boolean result=feedbackDAOImpl.sentMailFeedback(feedback);
		return  "redirect:feedbackPage";
	}
	
	@RequestMapping(value = "/contactusPage", method = RequestMethod.GET)
	public ModelAndView contactus(ModelMap model, HttpSession session) 
	{
		return  new ModelAndView("contactus","contactusDetails",new SendMailDetails());
	}
	
	@RequestMapping(value = "/contactusRequestPage", method = RequestMethod.POST)
	public String contactusRequest(ModelMap model, HttpSession session,@ModelAttribute(name="contactusDetails")SendMailDetails feedback) throws XmlRpcException 
	{
		boolean result=feedbackDAOImpl.sentMailContactUs(feedback);
		return  "redirect:contactusPage";
	}
	
	
	@RequestMapping(value = "/service", method = RequestMethod.GET)
	public ModelAndView service(Locale locale, Model model, HttpSession session) 
	{
		if (session.getAttribute("user") == null) {
			return new ModelAndView("redirect:logout");
		} else {
			ServiceRequest request = new ServiceRequest();
			
			/*request.setTime_slot(new ArrayList<String>(Arrays.asList("9AM - 12PM",
            "12PM - 3PM",
            "3PM - 6PM")));*/
			
			List<String> time_slot_to_call = new ArrayList<String>();
			time_slot_to_call.add("9AM - 12PM");
			time_slot_to_call.add("12PM - 3PM");
			time_slot_to_call.add("3PM - 6PM");
			
			
			request.setTime_slot_to_call(time_slot_to_call);
			model.addAttribute("time_slot_to_call", time_slot_to_call);

			
			request.setRequest(new ArrayList<String>(Arrays.asList("New Connection",
		            "Activation / Deactivation of Services",
		            "Duplicate Bill",
		            "Change of Location",
		            "Restoration of Service",
		            "Any Other"
					
					)));
			request.setComplaint(new ArrayList<String>(Arrays.asList("Not able to pay online",
		            "Activation / Deactivation of Services",
		            "Billing Related",
		            "Marcus Website",
		            "Marcus Customer Care",
		            "FUP/Speed",
		            "CPE",
		            "Zeno Portal"
					)));
			return  new ModelAndView("serviceRequest","serviceRequestDetails",request);
		}
	}
	
	@RequestMapping(value = "/serviceRequestPage", method = RequestMethod.POST)
	public String serviceRequest(ModelMap model, HttpSession session,@ModelAttribute(name="serviceRequestDetails")ServiceRequest serviceRequest) throws XmlRpcException 
	{
		
		boolean result=feedbackDAOImpl.sentMailServiceRequest(serviceRequest);
		
		System.out.println("Name : "+serviceRequest.getName());
		System.out.println("Mobile : "+serviceRequest.getMobile());
		System.out.println("Message : "+serviceRequest.getMessage());
		return  "redirect:service";
		
		
		//boolean result=feedbackDAOImpl.sentMailServiceRequest(feedback);
		//return  "redirect:service";
	}
	
	
}