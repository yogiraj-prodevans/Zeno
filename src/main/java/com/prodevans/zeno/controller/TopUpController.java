package com.prodevans.zeno.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.prodevans.zeno.pojo.InvoiceDetails;
import com.prodevans.zeno.pojo.SessionDetails;
import com.prodevans.zeno.pojo.TopUp;

@Controller
public class TopUpController 
{
	@RequestMapping(value = "/toup50GB", method = RequestMethod.GET)
	public String toup50GB(ModelMap model, HttpSession session,@RequestParam("planSize") String planSize,@RequestParam("amount") String amount,@RequestParam("planName") String planName,@RequestParam("postFUP") String postFUP)
	{
		SessionDetails user = (SessionDetails) session.getAttribute("user");
		model.addAttribute("user_details", user);
		
		TopUp topUp=new TopUp();
		
		topUp.setAmount(Double.parseDouble(amount));
		topUp.setPlanName(planName);
		topUp.setPlanSize(planSize);
		topUp.setPostFUP(postFUP);
		
		model.addAttribute("topUp", topUp);

		return "topup/toup50GB";
	}
	
	@RequestMapping(value = "/ccvTopUpRequestHandler", method = RequestMethod.POST)
	public String ccavRequestHandler() {
		return "topup/ccvTopUpRequestHandler";
	}
	
	@RequestMapping(value = "/ccvTopUpResponseHandler", method = RequestMethod.POST)
	public String ccvTopUpResponseHandler() {
		return "topup/ccvTopUpResponseHandler";
	}

}
