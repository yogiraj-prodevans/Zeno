package com.prodevans.zeno.controller;

import com.prodevans.zeno.dao.impl.ProtectionStatusImpl;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prodevans.zeno.dao.impl.RegistrationUserParentalControlImpl;
import com.prodevans.zeno.pojo.ParentalControlDetails;
import com.prodevans.zeno.pojo.SessionDetails;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ParentalControl {

    @Autowired
    private RegistrationUserParentalControlImpl REGISTER_PROCESS;

    @Autowired
    private ProtectionStatusImpl PROTECTION_STATUS;
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
     * @param locale
     * @param model
     * @param session
     * @return
     */
    @RequestMapping(value = "/control", method = RequestMethod.GET)
    public String parentControl(Locale locale, Model model, HttpSession session, @RequestParam(name = "error", required = false) String error) {
        
        ParentalControlDetails parentalControlDetails = new ParentalControlDetails();
        Map<String, String> protection_level = new LinkedHashMap<String,String>();
                        protection_level.put("","");
			protection_level.put("elementary_filter_zeno","ELEMENTRY");
			protection_level.put("basic_filter_zeno","BASIC");
			protection_level.put("advance_filter_zeno","ADVANCE");
                        protection_level.put("custom_filter","CUSTOM");
        
        model.addAttribute("protection_level", protection_level);
        
        model.addAttribute("error", error);
        
        if (session.getAttribute("user") == null) {
            return "redirect:/logout";
        } else {
            try {
                //fetching the user details from the session.
                SessionDetails user = (SessionDetails) session.getAttribute("user");
                String ip_address = (String) session.getAttribute("user_ip_address");
                logger.error("ip address : " + ip_address);
                
                boolean check_ip_result = REGISTER_PROCESS.checkRegistration(user.getActid());
                if(check_ip_result){
                   //Return the parental control status/Details.
                    parentalControlDetails = PROTECTION_STATUS.getProtectionDetails(user.getActid());
                    parentalControlDetails.setUser_name(user.getActid());
                    //Displaying the list of Adderss objects
                }
                else{
                    // Checking of IP address is get found in the session or not
                    if (!check_ip_result) {
                        if (!ip_address.isEmpty()) {
                            //Regestration process for the uesr.
                            REGISTER_PROCESS.registerUser(user.getActid(), ip_address);
                            //Return the parental control status/Details.
                            parentalControlDetails = PROTECTION_STATUS.getProtectionDetails(user.getActid());
                            parentalControlDetails.setUser_name(user.getActid());
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
            model.addAttribute("ParentalControlDetails", parentalControlDetails);
            return "parental-control";
        }
    }

    /**
     * @param PROTECTION_STATUS the PROTECTION_STATUS to set
     */
    public void setPROTECTION_STATUS(ProtectionStatusImpl PROTECTION_STATUS) {
        this.PROTECTION_STATUS = PROTECTION_STATUS;
    }
    
    @RequestMapping(value = "/control", method = RequestMethod.POST)
    public String changeProtectionStatus(Locale locale, Model model, HttpSession session, @ModelAttribute(name = "ParentalControlDetails")ParentalControlDetails controlDetails ){
        
        logger.info(" Protection Status : "+controlDetails.getProtection_status());
        logger.info(" Request Data : "+controlDetails.getRequest_data());
        if (!controlDetails.getRequest_data().isEmpty() && !controlDetails.getProtection_status().isEmpty()) {
            boolean result = PROTECTION_STATUS.protectionStatusUpdate(controlDetails);
            if (result) {
                model.addAttribute("error", "Protection status has been updated");
                logger.info("Protection status has been updated ");
            } else {
                model.addAttribute("error", "Protection status not updated");
                logger.info("Protection status not updated ");

            }
        }else{
            model.addAttribute("error", "IP address is not registared or protection status is not selected.");
        }

        return "redirect:/control";
    }
    
    @RequestMapping(value = "/control-category", method = RequestMethod.GET)
    public String categoryList(Locale locale, Model model ){
        return "control-category-list";
    }
    
}
