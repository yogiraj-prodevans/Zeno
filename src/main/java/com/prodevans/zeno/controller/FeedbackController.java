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
	public ModelAndView viewBill(ModelMap model, HttpSession session) 
	{
		return  new ModelAndView("feedback","feedbackDetails",new FeedbakDetails());
	}
	
	@RequestMapping(value = "/feedbackRequest", method = RequestMethod.POST)
	public ModelAndView payBillRequest(ModelMap model, HttpSession session,@ModelAttribute(name="feedbackDetails")FeedbakDetails feedback) throws XmlRpcException 
	{
		feedback=feedbackDAOImpl.getAccountDetails(feedback);
		boolean result=feedbackDAOImpl.senMail(feedback);
		return  new ModelAndView("","bill",feedback);
	}
	
}
