package com.prodevans.zeno.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.prodevans.zeno.dao.impl.UserInfoDAOImpl;
import com.prodevans.zeno.pojo.UserInfo;

@Controller
public class LoginController {
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
	public String getDashboard(@ModelAttribute("user") UserInfo user, HttpSession session) {

		System.out.println(user.toString());
		try {
			boolean res = LoginImpl.loginCheck(user);
			if (res) {
				session.setAttribute("user", user);
				return "redirect:dashboard";
			} else {
				return "login";
			}

		} catch (Exception ee) {
			ee.printStackTrace();
		}
		return "login";

	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginhome(Locale locale, Model model) {
		return new ModelAndView("login", "user", new UserInfo());
	}

}
