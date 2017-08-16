
package com.prodevans.zeno.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prodevans.zeno.dao.impl.DashboardDAOImpl;
import com.prodevans.zeno.pojo.SessionDetails;
import com.prodevans.zeno.pojo.SubscriptionDetails;
import com.prodevans.zeno.pojo.UserDetails;

@Controller
public class DashboardConroller {
	@Autowired
	private DashboardDAOImpl DashboardImpl;

	public void setDashboardImpl(DashboardDAOImpl dashboardImpl) {
		DashboardImpl = dashboardImpl;
	}

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String getDashboard(ModelMap model, HttpSession session) {

		if (session.getAttribute("user") == null) {
			return "redirect:/logout";
		} else {
			try {
				SessionDetails user = (SessionDetails) session.getAttribute("user");
				System.out.println(user.toString());
				UserDetails userdetails = DashboardImpl.getUserDetails(user.getActid());

				model.addAttribute("user_details", user);

				SubscriptionDetails details = DashboardImpl.getSubscriptionDetails(user.getActid());

				model.addAttribute("SubscriptionDetails", details);

			} catch (Exception ee) {
				ee.printStackTrace();
			}
			return "dashboard";
		}
	}

	@RequestMapping(value = "/currentplan", method = RequestMethod.GET)
	public String currentPlan(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "redirect:/logout";
		} else {
			return "currentplan";
		}
	}

	@RequestMapping(value = "/service", method = RequestMethod.GET)
	public String service(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "redirect:/logout";
		} else {
			return "serviceRequest";
		}
	}

	@RequestMapping(value = "/parental-control", method = RequestMethod.GET)
	public String parentControl(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "redirect:/logout";
		} else {
			return "parental-control";
		}
	}

	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public String help(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "redirect:/logout";
		} else {
			return "help";
		}

	}

	@RequestMapping(value = "/terms", method = RequestMethod.GET)
	public String terms(ModelMap model) {
		return "terms";
	}

	@RequestMapping(value = "/refund", method = RequestMethod.GET)
	public String refund(ModelMap model) {
		return "refund";
	}

	@RequestMapping(value = "/privacy", method = RequestMethod.GET)
	public String privacy(ModelMap model) {
		return "privacy";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Locale locale, Model model, HttpSession session) {
		if (session.getAttribute("user") != null) {
			session.invalidate();
		}
		return "redirect:/login";
	}
}