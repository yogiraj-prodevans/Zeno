package com.prodevans.zeno.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PaymentController 
{

	@RequestMapping(value = "/payment", method = RequestMethod.GET)
	public String doPayment()
	{
		return "payment/sendData";
	}

	@RequestMapping(value = "/ccavRequestHandler", method=RequestMethod.POST)
	public String ccavRequestHandler()
	{
		return "payment/ccavRequestHandler";
	}
	
	@RequestMapping(value = "/ccavResponseHandler", method= RequestMethod.POST)
	public String ccavResponseHandler()
	{
		return "payment/ccavResponseHandler";
	}
	
}
