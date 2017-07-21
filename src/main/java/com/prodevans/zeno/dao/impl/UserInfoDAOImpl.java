package com.prodevans.zeno.dao.impl;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.Vector;

import org.apache.xmlrpc.client.XmlRpcClient;
import org.springframework.beans.factory.annotation.Autowired;

import com.prodevans.zeno.dao.UserLoginDAO;
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
	public boolean loginCheck(UserInfo userInfo) throws SQLException, Exception {

		Vector params = new Vector();
		params.add(userInfo.getCustomer_id());

		HashMap<String, Object> result = (HashMap<String, Object>) rpcClient
				.execute(unifyHandler + ".getAccountDetails", params);

		if (result.get("password").toString().equals(userInfo.getPassword())) {
			return true;
		} else {
			return false;
		}
	}

}
