package com.prodevans.zeno.dao;

public interface ScheduleDAO 
{

	public boolean applyTimeSchedule(String domain_id,String name, String when, String time_of_day);
	
}
