package com.prodevans.zeno.dao;

import org.apache.xmlrpc.XmlRpcException;

import com.prodevans.zeno.pojo.FeedbakDetails;

public interface FeedbackDAO 
{
	public Boolean getAccountDetails(FeedbakDetails feedback) throws XmlRpcException;
	public Boolean senMail(FeedbakDetails feedback) throws XmlRpcException;
}
