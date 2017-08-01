package com.prodevans.zeno.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.prodevans.zeno.dao.impl.UserInfoDAOImpl;
import com.prodevans.zeno.pojo.SessionDetails;
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
	public String getDashboard(HttpSession session, SessionStatus status,@RequestParam("customer_id") String customer_id,@RequestParam("password") String password) 
	{
		//status.setComplete();
		try
		{
			SessionDetails userSessionDetails = LoginImpl.loginCheck(customer_id,password);
			System.out.println(userSessionDetails.getFirst_name());
			if(userSessionDetails.getResult()) 
			{
				session.setAttribute("user", userSessionDetails);
				System.out.println("displaying actno : "+userSessionDetails.getActno());
				return "redirect:dashboard";
			}
			else 
			{
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
