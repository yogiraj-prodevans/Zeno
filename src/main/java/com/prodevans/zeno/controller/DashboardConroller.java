
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
import com.prodevans.zeno.pojo.SubscriptionDetails;
import com.prodevans.zeno.pojo.UserDetails;
import com.prodevans.zeno.pojo.UserInfo;

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
	public String getDashboard(ModelMap model, HttpSession session) {

		try {
			UserInfo user = (UserInfo) session.getAttribute("user");
			System.out.println(user.toString());
			UserDetails userdetails = DashboardImpl.getUserDetails(user.getCustomer_id());

			model.addAttribute("user_details", userdetails);

			SubscriptionDetails details = DashboardImpl.getSubscriptionDetails(user.getCustomer_id());

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

	@RequestMapping(value = "/currentplan", method = RequestMethod.GET)
	public String currentPlan(Locale locale, Model model) {

		return "currentplan";
	}

	@RequestMapping(value = "/billingPayment", method = RequestMethod.GET)
	public String billingPayment(Locale locale, Model model) {

		return "billingPayment";
	}

	@RequestMapping(value = "/topup", method = RequestMethod.GET)
	public String topup(Locale locale, Model model) {

		return "topup";
	}

	@RequestMapping(value = "/service", method = RequestMethod.GET)
	public String service(Locale locale, Model model) {

		return "serviceRequest";
	}

}
