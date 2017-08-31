package com.prodevans.zeno.dao.impl;

import java.util.HashMap;
import java.util.Vector;

import org.apache.xmlrpc.XmlRpcException;
import org.apache.xmlrpc.client.XmlRpcClient;
import org.springframework.beans.factory.annotation.Autowired;

import com.prodevans.zeno.dao.FeedbackDAO;
import com.prodevans.zeno.pojo.FeedbakDetails;

public class FeedbackDAOImpl implements FeedbackDAO 
{
	@Autowired
	private String unifyHandler;
	@Autowired
	private XmlRpcClient rpcClient;
	
	public void setUnifyHandler(String unifyHandler) {
		this.unifyHandler = unifyHandler;
	}
	public void setRpcClient(XmlRpcClient rpcClient) {
		this.rpcClient = rpcClient;
	}
	
	@Override
	public FeedbakDetails getAccountDetails(FeedbakDetails feedback) throws XmlRpcException 
	{
		Vector params = new Vector();
		params.add(feedback.getAccount_no());
		
		HashMap<String, Object> result = (HashMap<String, Object>) rpcClient.execute(unifyHandler + ".getAccountDetails", params);
		feedback.setAccount_no(Integer.parseInt((String)result.get("actno")));
		feedback.setEmail_id((String)result.get("email"));
		
		
		return null;
	}
	
	@Override
	public Boolean senMail(FeedbakDetails feedback) throws XmlRpcException 
	{
		Vector params = new Vector();
		params.add(feedback.getMessage());
		params.add(feedback.getSubject());
		params.add("vipin.prodevans@gmail.com");
		params.add(1);
		
		return null;
	}

}
