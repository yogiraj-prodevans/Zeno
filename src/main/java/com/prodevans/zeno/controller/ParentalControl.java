package com.prodevans.zeno.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prodevans.zeno.dao.impl.RegistrationUserParentalControlImpl;

@Controller
public class ParentalControl {

	@Autowired
	private RegistrationUserParentalControlImpl REGISTER_PROCESS;

	/**
	 * @param REGISTER_PROCESS used for checking the user registration.
	 */
	public void setREGISTER_PROCESS(RegistrationUserParentalControlImpl rEGISTER_PROCESS) {
		REGISTER_PROCESS = rEGISTER_PROCESS;
	}

	/**
	 * GET REQUEST FOR THE PARENTAL CONTROL.
	 */
	@RequestMapping(value = "/control", method = RequestMethod.GET)
	public String parentControl(Locale locale, Model model, HttpSession session) {
		model.addAttribute("object_list", REGISTER_PROCESS.getUserList());
		return "parental-control";
	}
}
