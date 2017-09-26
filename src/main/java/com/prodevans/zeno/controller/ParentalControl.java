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
    public String parentControl(Locale locale, Model model, HttpSession session) {
        
        ParentalControlDetails parentalControlDetails = new ParentalControlDetails();
        Map<String, String> protection_level = new LinkedHashMap<String,String>();
                        protection_level.put("","");
			protection_level.put("elementary_filter_zeno","Elementry");
			protection_level.put("basic_filter_zeno","Basic");
			protection_level.put("advance_filter_zeno","Advanced");
                        protection_level.put("Custom Filter","Custom");
        model.addAttribute("protection_level", protection_level);
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
                    model.addAttribute("message", "user "+user.getActname()+" is already present");
                    
                }
                else{
                    model.addAttribute("message", "user "+user.getActname()+" is succesfually registered in prental control");
                }
                
                
                // Checking of IP address is get found in the session or not
                if(!check_ip_result)
                if (!ip_address.isEmpty() ) {
                    //Regestration process for the uesr.
                    REGISTER_PROCESS.registerUser(user.getActid(), ip_address);
                } else {
                    model.addAttribute("message", "IP address is not found");
                    logger.error("IP address is not found ");
                }

                //Return the parental control status/Details.
                parentalControlDetails = PROTECTION_STATUS.getProtectionDetails(user.getActid());
                parentalControlDetails.setUser_name(user.getActid());
                //Displaying the list of Adderss objects
                model.addAttribute("object_list", REGISTER_PROCESS.getUserList());
                
                
                
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
        
        boolean result = PROTECTION_STATUS.protectionStatusUpdate(controlDetails);
        if(result){
            model.addAttribute("error", "Protection status has been updated");
            logger.info("Protection status has been updated ");
        }
        else{
            model.addAttribute("error", "Protection status not updated");
            logger.info("Protection status not updated ");
        
        }
        return "redirect:/control";
    }
    
}
