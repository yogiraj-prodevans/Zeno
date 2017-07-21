package com.prodevans.zeno.dao;

import org.apache.xmlrpc.XmlRpcException;

import com.prodevans.zeno.pojo.SubscriptionDetails;
import com.prodevans.zeno.pojo.SubscriptionStatus;
import com.prodevans.zeno.pojo.UserDetails;

public interface DashboardDAO {
	public UserDetails getUserDetails(String customer_id) throws XmlRpcException;

	public SubscriptionDetails getSubscriptionDetails(String customer_id) throws XmlRpcException;

	public SubscriptionStatus getSubscriptionStatus(int subno) throws XmlRpcException;
}
