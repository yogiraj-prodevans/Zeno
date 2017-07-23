package com.prodevans.zeno.controller;

import javax.servlet.http.HttpSession;

import org.apache.xmlrpc.XmlRpcException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prodevans.zeno.dao.impl.DashboardDAOImpl;
import com.prodevans.zeno.pojo.UserDetails;
import com.prodevans.zeno.pojo.UserInfo;

@Controller
public class ProfileController {

	@Autowired
	private DashboardDAOImpl DashboardImpl;

	/**
	 * @param dashboardImpl
	 *            the dashboardImpl to set
	 */
	public void setDashboardImpl(DashboardDAOImpl dashboardImpl) {
		DashboardImpl = dashboardImpl;
	}

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String getProfile(HttpSession session, ModelMap model) {
		UserInfo user = (UserInfo) session.getAttribute("user");
		UserDetails userdetails;
		try {
			userdetails = DashboardImpl.getUserDetails(user.getCustomer_id());
			model.addAttribute("user_details", userdetails);
		} catch (XmlRpcException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "profile";
	}
}
