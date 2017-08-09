package com.prodevans.zeno.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.prodevans.zeno.dao.impl.PaymentDAOImpl;
import com.prodevans.zeno.dao.impl.UserInfoDAOImpl;
import com.prodevans.zeno.pojo.SessionDetails;
import com.prodevans.zeno.pojo.UserInfo;

@Controller
public class LoginController 
{
	
	
	@Autowired
	private UserInfoDAOImpl LoginImpl;

	/**
	 * Simply selects the home view to render by returning its name.
	 * 
	 */
	public void setLoginImpl(UserInfoDAOImpl loginImpl) {
		LoginImpl = loginImpl;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String getDashboard(HttpSession session, SessionStatus status,
			@RequestParam("customer_id") String customer_id, @RequestParam("password") String password,
			ModelMap model) {
		// status.setComplete();
		try {
			SessionDetails userSessionDetails = LoginImpl.loginCheck(customer_id, password);
			System.out.println(userSessionDetails.getFirst_name());
			if (userSessionDetails.getResult()) {
				session.setAttribute("user", userSessionDetails);
				
				System.out.println("displaying actno : " + userSessionDetails.getActno());
				return "redirect:dashboard";
			}
		} catch (Exception ee) {
			ee.printStackTrace();
		}

		model.addAttribute("error", "login fail");
		return "redirect:/login";

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginhome(@RequestParam(name = "error", required = false) String error, Locale locale,
			Model model) {
		ModelAndView mo = new ModelAndView();
		mo.setViewName("login");
		mo.addObject("user", new UserInfo());
		mo.addObject("error", error);
		return mo;
	}

}
