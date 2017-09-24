package com.prodevans.zeno.controller;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prodevans.zeno.dao.impl.RegistrationUserParentalControlImpl;
import com.prodevans.zeno.pojo.SessionDetails;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
public class ParentalControl {

    @Autowired
    private RegistrationUserParentalControlImpl REGISTER_PROCESS;

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
    public String parentControl(Locale locale, Model model, HttpSession session) {
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

                
                //Displaying the list of Adderss objects
                model.addAttribute("object_list", REGISTER_PROCESS.getUserList());
   
//                // Experiment .
//                String rule_details = REGISTER_PROCESS.rearrangerRules(user.getActid());
//                model.addAttribute("rules", rule_details);
                
            } catch (Exception e) {
                logger.error(e.getMessage());
            }
            return "parental-control";
        }
    }
    
    
    
    
}
