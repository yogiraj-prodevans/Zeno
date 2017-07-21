package com.prodevans.zeno.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prodevans.zeno.dao.impl.DashboardDAOImpl;
import com.prodevans.zeno.pojo.SubscriptionDetails;
import com.prodevans.zeno.pojo.UserDetails;

@Controller
public class DashboardConroller {
	@Autowired
	private DashboardDAOImpl DashboardImpl;

	/**
	 * @param dashboardImpl
	 *            the dashboardImpl to set
	 */
	public void setDashboardImpl(DashboardDAOImpl dashboardImpl) {
		DashboardImpl = dashboardImpl;
	}

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String getDashboard(ModelMap model) {

		try {
			UserDetails userdetails = DashboardImpl.getUserDetails("ROL000006");

			model.addAttribute("user_details", userdetails);

			SubscriptionDetails details = DashboardImpl.getSubscriptionDetails("ROL000006");

			model.addAttribute("SubscriptionDetails", details);

			// SubscriptionStatus status =
			// DashboardImpl.getSubscriptionStatus(details.getSubsno());

			// model.addAttribute("SubscriptionStatus", status);

			// PlanDetails planDetails = impl.getPlanDetails("E-0001");

			// model.addAttribute("plan_details", planDetails);

		} catch (Exception ee) {
			ee.printStackTrace();
		}
		return "dashboard";
	}
}
