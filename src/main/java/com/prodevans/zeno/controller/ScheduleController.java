package com.prodevans.zeno.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.prodevans.zeno.dao.impl.ScheduleDAOImpl;
import com.prodevans.zeno.pojo.CategoryList;
import com.prodevans.zeno.pojo.SessionDetails;

@Controller
public class ScheduleController 
{

	@Autowired
	private ScheduleDAOImpl scheduleDAOImpl; 
	
	
	/**
     * Created logger object for the logging.
     */
    private static final Logger logger = LoggerFactory.getLogger(ScheduleController.class);
	
    @RequestMapping(value = "/time-schedule", method = RequestMethod.GET)
    public String timeschedule(ModelMap model, HttpSession session) 
    {
        if (session.getAttribute("user") == null) 
        {
            return "redirect:/logout";
        } 
        else 
        {
        	
        	//fetching the user details from the session.
            SessionDetails user = (SessionDetails) session.getAttribute("user");
            
            if(scheduleDAOImpl.applyTimeSchedule(user.getDomid(),user.getActid()+"_SCHEDULE", "daily", "09:00-18:00"))
            {
            	logger.info("Daily schedule applied successfully..");
            	model.addAttribute("msg","Daily schedule applied successfully..");
            	
            }
            else
            {
            	logger.info("Daily schedule was not applied..");
            	model.addAttribute("msg","Daily schedule was not applied..");
            }
            
        	return "parental-control";
        }
	
    }
    
    @RequestMapping(value = "/days-schedule", method = RequestMethod.GET)
    public String dayschedule(ModelMap model, HttpSession session) 
    {
        if (session.getAttribute("user") == null) 
        {
            return "redirect:/logout";
        } 
        else 
        {
        	
        	//fetching the user details from the session.
            SessionDetails user = (SessionDetails) session.getAttribute("user");
            
            if(scheduleDAOImpl.applyTimeSchedule(user.getDomid(),user.getActid()+"_SCHEDULE", "days", "09:00-18:00"))
            {
            	logger.info("Daily schedule applied successfully..");
            	model.addAttribute("msg","Daily schedule applied successfully..");
            	
            }
            else
            {
            	logger.info("Daily schedule was not applied..");
            	model.addAttribute("msg","Daily schedule was not applied..");
            }
            
        	return "parental-control";
        }
	
    }
    
    
}
