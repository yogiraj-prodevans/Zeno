package com.prodevans.zeno.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProfileController {

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String billingPayment(Locale locale, Model model) {

		return "profile";
	}
	
	
}
