package com.prodevans.zeno.dao;

import java.util.ArrayList;

public interface ScheduleDAO 
{

	public boolean applyTimeSchedule(String domain_id,String name, String when, String time_of_day);
	public boolean applyDaysSchedule(String domain_id,String name, ArrayList<String> when, String time_of_day);
	public boolean applyNonRecurringSchedule(String domain_id,String name, String when);
	
}
