package com.prodevans.zeno.dao.impl;

import java.util.HashMap;
import java.util.Vector;

import org.apache.xmlrpc.XmlRpcException;
import org.apache.xmlrpc.client.XmlRpcClient;
import org.springframework.beans.factory.annotation.Autowired;

import com.prodevans.zeno.dao.SendMailDAO;
import com.prodevans.zeno.pojo.SendMailDetails;
import com.prodevans.zeno.pojo.ServiceRequest;

public class SendMailDAOImpl implements SendMailDAO 
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
	public Boolean sentMailFeedback(SendMailDetails feedback) throws XmlRpcException 
	{
		Vector params = new Vector();
		params.add(feedback.getAccount_id());
		
		HashMap<String, Object> result = (HashMap<String, Object>) rpcClient.execute(unifyHandler + ".getAccountDetails", params);
		feedback.setAccount_no(Integer.parseInt((String)result.get("actno")));
		feedback.setEmail_id((String)result.get("email"));		
		
		Vector params1 = new Vector();
		String Complete="Concated message that might have HTML code"+feedback.getMessage();
		params1.add(Complete);
		params1.add(feedback.getSubject());
		params1.add("vipin.prodevans@gmail.com");
		params1.add(1);
		
		Boolean mailResult = (Boolean) rpcClient.execute(unifyHandler + ".sendMail", params1);
		
		System.out.println("mail send successfully");
		
		return mailResult;
	}
	
	@Override
	public Boolean sentMailContactUs(SendMailDetails feedback) throws XmlRpcException 
	{
		Vector params = new Vector();
		params.add(feedback.getMessage());
		params.add(feedback.getSubject());
		params.add("vipin.prodevans@gmail.com");
		params.add(1);
		
		Boolean mailResult = (Boolean) rpcClient.execute(unifyHandler + ".sendMail", params);
		
		System.out.println("mail send successfully");
		
		return mailResult;
	}
	@Override
	public Boolean sentMailServiceRequest(ServiceRequest serviceRequest) throws XmlRpcException 
	{
	
		Vector params = new Vector();
		params.add(serviceRequest.getMessage()+" Time slot to call : "+serviceRequest.getTime_slot_to_call().toString());
		params.add("Subject");
		params.add("vipin.prodevans@gmail.com");
		params.add(1);
		
		Boolean mailResult = (Boolean) rpcClient.execute(unifyHandler + ".sendMail", params);
		
		System.out.println("mail send successfully");
		
		return mailResult;
		
	}

}
