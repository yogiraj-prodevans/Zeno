package com.prodevans.zeno.dao.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Vector;

import org.apache.xmlrpc.XmlRpcException;
import org.apache.xmlrpc.client.XmlRpcClient;
import org.springframework.beans.factory.annotation.Autowired;

import com.prodevans.zeno.dao.UserLoginDAO;
import com.prodevans.zeno.pojo.SessionDetails;
import com.prodevans.zeno.pojo.UserInfo;

public class UserInfoDAOImpl implements UserLoginDAO {
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
	public SessionDetails loginCheck(String customer_id, String password) throws XmlRpcException 
	{
		SessionDetails userSessionDetails=new SessionDetails();
		Vector params = new Vector();
		params.add(customer_id);

		HashMap<String, Object> result = (HashMap<String, Object>) rpcClient
				.execute(unifyHandler + ".getAccountDetails", params);

		if (result.get("password").toString().equals(password) && result.get("actid").toString().equals(customer_id)) 
		{
			userSessionDetails.setActid(result.get("actid").toString());
			userSessionDetails.setActno(Integer.parseInt(result.get("actno").toString()));
			userSessionDetails.setActname(result.get("fname").toString());
			userSessionDetails.setDomid(result.get("domid").toString());
			userSessionDetails.setDomno(Integer.parseInt(result.get("domno").toString()));
			userSessionDetails.setEmail(result.get("email").toString());
			userSessionDetails.setMobileno(result.get("mobileno").toString());
			userSessionDetails.setPassword(result.get("password").toString());
			userSessionDetails.setFirst_name(result.get("fname").toString());
			userSessionDetails.setResult(true);
			return userSessionDetails;
		} 
		else
		{
			userSessionDetails.setResult(false);
			return userSessionDetails;
		}
	}

}
