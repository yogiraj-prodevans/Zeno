package com.prodevans.zeno.controller;

import com.prodevans.zeno.config.RestConfig;
import com.prodevans.zeno.dao.impl.CategoryListDAOImpl;
import com.prodevans.zeno.dao.impl.ProtectionStatusImpl;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prodevans.zeno.dao.impl.RegistrationUserParentalControlImpl;
import com.prodevans.zeno.pojo.CategoryList;
import com.prodevans.zeno.pojo.ParentalControlDetails;
import com.prodevans.zeno.pojo.SendMailDetails;
import com.prodevans.zeno.pojo.SessionDetails;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.apache.xmlrpc.XmlRpcException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ParentalControl {

    @Autowired
    private RegistrationUserParentalControlImpl REGISTER_PROCESS;

    @Autowired
    private ProtectionStatusImpl PROTECTION_STATUS;

    @Autowired
    private CategoryListDAOImpl categoryimpl;

    /**
     * Created logger object for the logging.
     */
    private static final Logger logger = LoggerFactory.getLogger(ParentalControl.class);

    /**
     * @param rEGISTER_PROCESS
     */
    public void setREGISTER_PROCESS(RegistrationUserParentalControlImpl rEGISTER_PROCESS) {
        REGISTER_PROCESS = rEGISTER_PROCESS;
    }

    /**
     * GET REQUEST FOR THE PARENTAL CONTROL.
     *
     * @param locale
     * @param model
     * @param session
     * @return
     */
    @RequestMapping(value = "/control", method = RequestMethod.GET)
    public ModelAndView parentControl(Locale locale, Model model, HttpSession session, @RequestParam(name = "error", required = false) String error) {

//        ParentalControlDetails parentalControlDetails = new ParentalControlDetails();
//        Map<String, String> protection_level = new LinkedHashMap<String, String>();
//        protection_level.put("", "");
//        //Revoved 
//        //protection_level.put("elementary_filter_zeno", "ELEMENTRY");
//        //Removed in version 1.2
//        //protection_level.put("basic_filter_zeno", "DEFAULT");
//        protection_level.put("advance_filter_zeno", "ADVANCED");
//        protection_level.put("custom_filter", "CUSTOM");
//
//        model.addAttribute("protection_level", protection_level);

        model.addAttribute("error", error);
        CategoryList list = new CategoryList();
        if (session.getAttribute("user") == null) {
        	return  new ModelAndView("redirect:logout");
        } else {
            try {
                //fetching the user details from the session.
                SessionDetails user = (SessionDetails) session.getAttribute("user");
                String ip_address = (String) session.getAttribute("user_ip_address");
                logger.error("ip address : " + ip_address);

                boolean check_ip_result = REGISTER_PROCESS.checkRegistration(user.getActid(), user.getDomid().trim());
                if (check_ip_result) {
                    //Return the parental control status/Details.
                    //parentalControlDetails = PROTECTION_STATUS.getProtectionDetails(user.getActid(), user.getDomid().trim());
                    list = categoryimpl.getCategoryList(user.getActid() + RestConfig.ADVANCED_FILTER, user.getDomid().trim());
                    model.addAttribute("CAT", list);

                    model.addAttribute("uesr_name", user.getActname());
                    //parentalControlDetails.setUser_name(user.getActid());
                    //Displaying the list of Adderss objects
                } else {
                    // Checking of IP address is get found in the session or not
                    if (!check_ip_result) {
                        if (!ip_address.isEmpty()) {
                            //Regestration process for the uesr.
                            REGISTER_PROCESS.registerUser(user.getActid(), ip_address, user.getDomid().trim());
                            //Return the parental control status/Details.
                            list = categoryimpl.getCategoryList(user.getActid() + RestConfig.ADVANCED_FILTER, user.getDomid().trim());
                            model.addAttribute("CAT", list);

                            //parentalControlDetails = PROTECTION_STATUS.getProtectionDetails(user.getActid(), user.getDomid().trim());
                            //parentalControlDetails.setUser_name(user.getActid());
                            //Displaying the list of Adderss objects
                        } else {
                            model.addAttribute("message", "IP address is not found");
                            logger.error("IP address is not found ");
                        }
                    }
                    // model.addAttribute("message", "user "+user.getActname()+" is succesfually registered in prental control");
                }

            } catch (Exception e) {
                logger.error(e.getMessage());
            }

            //model.addAttribute("ParentalControlDetails", parentalControlDetails);
            //return "filter";
            return  new ModelAndView("filter","CategoryListDetails",list);
        }
    }
    
    @RequestMapping(value = "/allow-categories", method = RequestMethod.POST)
	public String allowcategories(ModelMap model, HttpSession session,@ModelAttribute(name="CategoryListDetails") CategoryList categoryList,@RequestParam (name="category_allowed")ArrayList<String> category_allowed) 
	{
    	if (session.getAttribute("user") == null) 
    	{
    		return  "redirect:/logout";
        } 
    	else 
    	{
    	
	    	categoryList.getBlocked_catogery().addAll(category_allowed);
	    	categoryList.getAllowded_catogery().removeAll(category_allowed);
	    	
	    	System.out.println("Blocked List : "+categoryList.getBlocked_catogery());
	    	System.out.println("Allowed List : "+categoryList.getAllowded_catogery());
	    	
	    	//fetching the user details from the session.
	        SessionDetails user = (SessionDetails) session.getAttribute("user");
	
	        if (categoryimpl.updateCategoryList(categoryList.getBlocked_catogery(), categoryList.getAllowded_catogery(), user.getDomid(), user.getActid(), "update_block")) {
	            model.addAttribute("error", "Updated succefuly");
	        } else {
	            model.addAttribute("error", "Updation failed");
	        }
	    	
	    	return  "redirect:/control";
    	}
	}

    @RequestMapping(value = "/block-categories", method = RequestMethod.POST)
	public String blockcategories(ModelMap model, HttpSession session,@ModelAttribute(name="CategoryListDetails") CategoryList categoryList,@RequestParam (name="category_block")ArrayList<String> category_allowed) 
	{
    	if (session.getAttribute("user") == null) 
    	{
    		return  "redirect:/logout";
        } 
    	else 
    	{
    	
	    	categoryList.getBlocked_catogery().removeAll(category_allowed);
	    	categoryList.getAllowded_catogery().addAll(category_allowed);
	    	
	    	System.out.println("Blocked List : "+categoryList.getBlocked_catogery());
	    	System.out.println("Allowed List : "+categoryList.getAllowded_catogery());
	    	
	    	//fetching the user details from the session.
	        SessionDetails user = (SessionDetails) session.getAttribute("user");
	
	        if (categoryimpl.updateCategoryList(categoryList.getBlocked_catogery(), categoryList.getAllowded_catogery(), user.getDomid(), user.getActid(), "update_allow")) {
	            model.addAttribute("error", "Updated succefuly");
	        } else {
	            model.addAttribute("error", "Updation failed");
	        }
	    	
	    	return  "redirect:/control";
    	}
	}    
    
    @RequestMapping(value = "/delete-patterns", method = RequestMethod.POST)
	public String deletepatterns(ModelMap model, HttpSession session,@ModelAttribute(name="CategoryListDetails") CategoryList categoryList,@RequestParam (name="category_block")ArrayList<String> category_allowed) 
	{
    	if (session.getAttribute("user") == null) 
    	{
    		return  "redirect:/logout";
        } 
    	else 
    	{
    		categoryList.getFilter_pattern().removeAll(category_allowed);
    		
    		System.out.println("Removed Filter Pattern :"+categoryList.getFilter_pattern());
    		//fetching the user details from the session.
	        SessionDetails user = (SessionDetails) session.getAttribute("user");
	        
	        return  "redirect:/control";
    	}
    	
	}
    
    
    
    
    /**
     * @param PROTECTION_STATUS the PROTECTION_STATUS to set
     */
    public void setPROTECTION_STATUS(ProtectionStatusImpl PROTECTION_STATUS) {
        this.PROTECTION_STATUS = PROTECTION_STATUS;
    }

    @RequestMapping(value = "/control", method = RequestMethod.POST)
    public String changeProtectionStatus(Locale locale, Model model, HttpSession session, @ModelAttribute(name = "ParentalControlDetails") ParentalControlDetails controlDetails) {

        logger.info(" Protection Status : " + controlDetails.getProtection_status());
        logger.info(" Request Data : " + controlDetails.getRequest_data());
        //fetching the user details from the session.
        SessionDetails user = (SessionDetails) session.getAttribute("user");
        if (!controlDetails.getRequest_data().isEmpty() && !controlDetails.getProtection_status().isEmpty()) {
            boolean result = PROTECTION_STATUS.protectionStatusUpdate(controlDetails, user.getDomid().trim());
            if (result) {
                model.addAttribute("error", "Protection status has been updated");
                logger.info("Protection status has been updated ");
            } else {
                model.addAttribute("error", "Protection status not updated");
                logger.info("Protection status not updated ");

            }
        } else {
            model.addAttribute("error", "IP address is not registared or protection status is not selected.");
        }

        return "redirect:/control";
    }

    @RequestMapping(value = "/control-category", method = RequestMethod.GET)
    public String categoryListFirst(Locale locale, Model model, HttpSession session, @RequestParam(name="error",required = false)String error) {

        if (session.getAttribute("user") == null) {
            return "redirect:/logout";
        } else {
            try {
                //fetching the user details from the session.
                SessionDetails user = (SessionDetails) session.getAttribute("user");
                CategoryList list = categoryimpl.getCategoryList(user.getActid() + RestConfig.ADVANCED_FILTER, user.getDomid().trim());
                model.addAttribute("CAT", list);
                model.addAttribute("uesr_name", user.getActname());
                model.addAttribute("error", error);
                //logger.info("List Blocked : " + list.getBlocked_catogery().toString());

            } catch (Exception ee) {
                logger.error("" + ee.getMessage());
            }
            return "control-category-list";
        }

    }

//    @RequestMapping(value = "/control-category/{protection-status}", method = RequestMethod.GET)
//    public String categoryList(Locale locale, Model model, @PathVariable(name = "protection-status", required = false) String protection_status, HttpSession session) {
//        if (session.getAttribute("user") == null) {
//            return "redirect:/logout";
//        } else {
//            try {
//                //fetching the user details from the session.
//                SessionDetails user = (SessionDetails) session.getAttribute("user");
//
//                CategoryList list = null;
//                if (protection_status.equals("basic")) {
//                    list = categoryimpl.getCategoryList("basic_filter_zeno", user.getDomid().trim());
//                } else if (protection_status.equals("advance")) {
//                    list = categoryimpl.getCategoryList("advance_filter_zeno", user.getDomid().trim());
//                } else if (protection_status.equals("custom")) {
//                    list = categoryimpl.getCategoryList(user.getActid() + "_filter_object", user.getDomid().trim());
//                }
//                model.addAttribute("uesr_name", user.getActname());
//                model.addAttribute("CAT", list);
//
//            } catch (Exception ee) {
//                logger.error("" + ee.getMessage());
//            }
//            return "control-category-list";
//        }
//    }

    //control-category
  /*  @RequestMapping(value = "/control-category", method = RequestMethod.POST)
    public String updateSategoryList(Locale locale, Model model, @ModelAttribute(name = "CAT")CategoryList list, HttpSession session,@RequestParam( name = "update_category") String select_update) {
        //fetching the user details from the session.
        SessionDetails user = (SessionDetails) session.getAttribute("user");

        if (categoryimpl.updateCategoryList(list.getBlock_list_data(), list.getAllow_list_data(), user.getDomid(), user.getActid(), select_update)) {
            model.addAttribute("error", "Updated succefuly");
        } else {
            model.addAttribute("error", "Updation failed");
        }
        return "redirect:/control-category";
    }
*/    
    @RequestMapping(value = {"/control/ADVANCED","/control/CUSTOM"}, method = RequestMethod.GET)
    public String getAdvanceFilter(Locale locale, Model model,  HttpSession session) {
         
            return "filter";
    }
    
    /**
     * @param categoryimpl the categoryimpl to set
     */
    public void setCategoryimpl(CategoryListDAOImpl categoryimpl) {
        this.categoryimpl = categoryimpl;
    }

}
