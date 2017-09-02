package com.prodevans.zeno.controller;

import javax.servlet.http.HttpSession;

import org.apache.xmlrpc.XmlRpcException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.prodevans.zeno.dao.impl.FeedbackDAOImpl;
import com.prodevans.zeno.pojo.FeedbakDetails;


@Controller
public class FeedbackController
{
	@Autowired
	FeedbackDAOImpl feedbackDAOImpl;
	public FeedbackDAOImpl getFeedbackDAOImpl() {
		return feedbackDAOImpl;
	}

	@RequestMapping(value = "/feedback", method = RequestMethod.GET)
	public ModelAndView feedback(ModelMap model, HttpSession session) 
	{
		return  new ModelAndView("feedback","feedbackDetails",new FeedbakDetails());
	}
	
	@RequestMapping(value = "/feedbackRequest", method = RequestMethod.POST)
	public String feedbackRequest(ModelMap model, HttpSession session,@ModelAttribute(name="feedbackDetails")FeedbakDetails feedback) throws XmlRpcException 
	{
		boolean result=feedbackDAOImpl.sentMailFeedback(feedback);
		return  "redirect:feedback";
	}
	
	@RequestMapping(value = "/contactus", method = RequestMethod.GET)
	public ModelAndView contactus(ModelMap model, HttpSession session) 
	{
		return  new ModelAndView("contactus","contactusDetails",new FeedbakDetails());
	}
	
	@RequestMapping(value = "/contactusRequest", method = RequestMethod.POST)
	public String contactusRequest(ModelMap model, HttpSession session,@ModelAttribute(name="contactusDetails")FeedbakDetails feedback) throws XmlRpcException 
	{
		boolean result=feedbackDAOImpl.sentMailContactUs(feedback);
		return  "redirect:contactus";
	}
	
	
}
