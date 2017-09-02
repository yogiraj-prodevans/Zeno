package com.prodevans.zeno.dao;

import org.apache.xmlrpc.XmlRpcException;

import com.prodevans.zeno.pojo.FeedbakDetails;

public interface FeedbackDAO 
{
	public Boolean sentMailFeedback(FeedbakDetails feedback) throws XmlRpcException;
	public Boolean sentMailContactUs(FeedbakDetails feedback) throws XmlRpcException;
}
