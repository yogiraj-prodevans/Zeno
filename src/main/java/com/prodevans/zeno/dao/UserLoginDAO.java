package com.prodevans.zeno.dao;

import java.sql.SQLException;

import org.apache.xmlrpc.XmlRpcException;

import com.prodevans.zeno.pojo.SessionDetails;
import com.prodevans.zeno.pojo.UserInfo;

public interface UserLoginDAO {
	SessionDetails loginCheck(String customer_id, String password) throws XmlRpcException;
}
