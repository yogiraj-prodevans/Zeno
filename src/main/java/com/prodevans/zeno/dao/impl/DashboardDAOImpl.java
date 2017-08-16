
package com.prodevans.zeno.dao.impl;

import java.text.ParseException;
import java.util.HashMap;
import java.util.Vector;

import org.apache.xmlrpc.XmlRpcException;
import org.apache.xmlrpc.client.XmlRpcClient;
import org.springframework.beans.factory.annotation.Autowired;

import com.prodevans.zeno.dao.DashboardDAO;
import com.prodevans.zeno.pojo.SubscriptionDetails;
import com.prodevans.zeno.pojo.SubscriptionStatus;
import com.prodevans.zeno.pojo.UserDetails;

public class DashboardDAOImpl implements DashboardDAO {

	@Autowired
	private String unifyHandler;

	@Autowired
	private XmlRpcClient rpcClient;

	/**
	 * @param unifyHandler
	 *            the unifyHandler to set
	 */
	public void setUnifyHandler(String unifyHandler) {
		this.unifyHandler = unifyHandler;
	}

	/**
	 * @param rpcClient
	 *            the rpcClient to set
	 */
	public void setRpcClient(XmlRpcClient rpcClient) {
		this.rpcClient = rpcClient;
	}

	@Override
	public UserDetails getUserDetails(String customer_id) throws XmlRpcException {
		UserDetails details = new UserDetails();

		Vector<Object> params = new Vector<>();
		params.add(customer_id);
		HashMap<String, Object> result = (HashMap<String, Object>) rpcClient
				.execute(unifyHandler + ".getAccountDetails", params);
		if (result.isEmpty() == false) {
			details.setCustomer_id(result.get("actid").toString());
			details.setEmail(result.get("email").toString());
			details.setFirst_name(result.get("fname").toString());
			details.setLast_name(result.get("lname").toString());
			details.setMobile(result.get("mobileno").toString());
			details.setActno(Integer.parseInt(result.get("actno").toString()));
			return details;
		} else {
			return null;
		}
	}

	@Override
	public SubscriptionDetails getSubscriptionDetails(String customer_id) throws XmlRpcException, ParseException {
		SubscriptionDetails details = new SubscriptionDetails();
		Vector<Object> params = new Vector<>();
		params.add(customer_id);
		Object[] res = (Object[]) rpcClient.execute(unifyHandler + ".getSubscriptions", params);

		if (res.length > 0) {
			HashMap<String, Object> result = (HashMap<String, Object>) res[0];
			details.setRatePlan(result.get("ratePlan").toString());
			details.setStartDate(result.get("startDate").toString());
			details.setStatus(Integer.parseInt(result.get("status").toString()));
			details.setExpirydt(result.get("expirydt").toString());
			details.setSvctype(result.get("svctype").toString());
			details.setSubsno(Integer.parseInt(result.get("subsno").toString()));

			return details;
		} else {
			return null;
		}
	}

	@Override
	public SubscriptionStatus getSubscriptionStatus(int subno) throws XmlRpcException {
		SubscriptionStatus status = new SubscriptionStatus();
		Vector params = new Vector();
		params.add(subno);
		HashMap<String, Object> result = (HashMap<String, Object>) rpcClient
				.execute(unifyHandler + ".getCurrentSubscriptionFUPStatus", params);
		if (result.isEmpty() == false) {
			System.out.println(result.keySet().toString());
			status.setAction(Integer.parseInt(result.get("action").toString()));
			status.setBytesin(result.get("bytesin").toString());
			status.setBytesout(result.get("bytesout").toString());
			status.setSubsno(Integer.parseInt(result.get("subsno").toString()));
			return status;
		} else {
			return null;
		}

	}

}