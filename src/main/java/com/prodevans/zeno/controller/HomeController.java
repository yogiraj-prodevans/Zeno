package com.prodevans.zeno.controller;

import java.sql.SQLException;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.prodevans.zeno.dao.impl.UserInfoDAOImpl;
import com.prodevans.zeno.pojo.UserInfo;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private UserInfoDAOImpl impl;

	/**
	 * @return the impl
	 */
	public UserInfoDAOImpl getImpl() {
		return impl;
	}

	/**
	 * @param impl
	 *            the impl to set
	 */
	public void setImpl(UserInfoDAOImpl impl) {
		this.impl = impl;
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView loginhome(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		return new ModelAndView("login", "user", new UserInfo());
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(@ModelAttribute("user") UserInfo user, ModelMap model,HttpServletRequest request,@RequestParam String customer_id) 
	{
		HttpSession session=request.getSession();
		model.addAttribute("user",customer_id);
		return "home";
		/*
		boolean result = false;
		try {
			result = getImpl().loginCheck(user);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		if (result) {
			model.addAttribute("userInfo", user.getCustomer_id());
			return "redirect:dashboard";
		} else {
			model.addAttribute("error", "Login fails");
			return "redirect:login";
		}
		*/
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error, ModelMap model) {
		if (error != null) {
			model.addAttribute("error", "true");
		}
		return new ModelAndView("login", "user", new UserInfo());

	}
	
	
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String dashboard(@RequestParam(value = "userInfo", required = false) String cust_id, ModelMap model) {
		model.addAttribute("userInfo", cust_id);
		return "home";

	}
}
