package com.prodevans.zeno.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prodevans.zeno.dao.impl.ProfileDAOImpl;
import com.prodevans.zeno.pojo.ProfileDetails;
import com.prodevans.zeno.pojo.SessionDetails;

@Controller
public class ProfileController {
	@Autowired
	private ProfileDAOImpl profileImpl;

	/**
	 * @param profileImpl
	 *            the profileImpl to set
	 */
	public void setProfileImpl(ProfileDAOImpl profileImpl) {
		this.profileImpl = profileImpl;
	}

	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String billingPayment(Locale locale, ModelMap model, HttpSession session) {
		if (session.getAttribute("user") == null) {
			return "redirect:/logout";
		} else {
			SessionDetails user = (SessionDetails) session.getAttribute("user");
			ProfileDetails userdetails = new ProfileDetails();
			try {
				userdetails = profileImpl.getProfile(user.getActid());
				model.addAttribute("profile", userdetails);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "profile";
		}
	}

}
