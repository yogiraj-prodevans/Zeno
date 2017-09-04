package com.prodevans.zeno.dao;

import org.apache.xmlrpc.XmlRpcException;

import com.prodevans.zeno.pojo.SendMailDetails;

public interface SendMailDAO 
{
	public Boolean sentMailFeedback(SendMailDetails feedback) throws XmlRpcException;
	public Boolean sentMailContactUs(SendMailDetails feedback) throws XmlRpcException;
	public Boolean sentMailServiceRequest(SendMailDetails feedback) throws XmlRpcException;
}
