
package com.prodevans.zeno.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.prodevans.zeno.dao.impl.DashboardDAOImpl;
import com.prodevans.zeno.pojo.SessionDetails;
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
	public String getDashboard(ModelMap model, HttpSession session, SessionStatus status) 
	{
		status.setComplete();
		try 
		{
			
			SessionDetails userSessionDetails = (SessionDetails) session.getAttribute("user");
			//UserDetails userdetails = DashboardImpl.getUserDetails(userSessionDetails.getActid());

			System.out.println("First  Name : "+userSessionDetails.getFirst_name());
			model.addAttribute("user_details", userSessionDetails);
			//session.setAttribute("user", userdetails);

			SubscriptionDetails details = DashboardImpl.getSubscriptionDetails(userSessionDetails.getActid());

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
