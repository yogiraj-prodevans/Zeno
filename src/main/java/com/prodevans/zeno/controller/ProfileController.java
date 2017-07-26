package com.prodevans.zeno.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.prodevans.zeno.dao.impl.ProfileDAOImpl;
import com.prodevans.zeno.pojo.ProfileDetails;
import com.prodevans.zeno.pojo.UserInfo;

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
	public String getProfile(@RequestParam(value = "error", required = false) String Error, HttpSession session,
			ModelMap model) {

		model.addAttribute("error", Error);
		UserInfo user = (UserInfo) session.getAttribute("user");
		ProfileDetails userdetails = new ProfileDetails();
		try {
			userdetails = profileImpl.getProfile(user.getCustomer_id());
			model.addAttribute("profile", userdetails);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "profile";
	}

	/*
	 * @RequestMapping(value = "profile", method = RequestMethod.POST) public
	 * ModelAndView updateProfile(@ModelAttribute("profile") ProfileDetails profile,
	 * ModelMap model, HttpSession session) { try { if
	 * (profileImpl.updateProfile(profile)) { model.addAttribute("Message",
	 * "profile Updated"); } } catch (Exception e) { // TODO Auto-generated catch
	 * block e.printStackTrace(); }
	 * 
	 * return new ModelAndView("profile", "profile", profile); }
	 */

	@RequestMapping(value = "profile/update-pass", method = RequestMethod.POST)
	public ModelAndView updateProfilePassword(HttpServletRequest request, ModelMap model, HttpSession session) {
		String current_password = request.getParameter("current_password");
		String new_password = request.getParameter("new_password");
		String confirm_password = request.getParameter("confirm_password");
		ProfileDetails userdetails = null;
		ModelAndView mv = new ModelAndView();

		try {
			UserInfo user = (UserInfo) session.getAttribute("user");
			if (user.getPassword().equals(current_password) && new_password.equals(confirm_password)) {
				int res = profileImpl.updateProfilePassword(user.getCustomer_id(), new_password);
				if (res == 0) {

					mv.addObject("error", "changed sucessfually");
				} else {
					mv.addObject("error", "Server error");
				}
			} else {
				mv.addObject("error", "check password");
			}

			mv.setViewName("redirect:/profile");

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return mv;
	}
}
