package com.prodevans.zeno.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prodevans.zeno.pojo.InvoiceDetails;
import com.prodevans.zeno.pojo.SessionDetails;

@Controller
public class TopUpController 
{
	@RequestMapping(value = "/toup50GB", method = RequestMethod.GET)
	public String toup50GB(ModelMap model, HttpSession session)
	{
		SessionDetails user = (SessionDetails) session.getAttribute("user");
		model.addAttribute("user_details", user);
		return "topup/toup50GB";
	}

}
