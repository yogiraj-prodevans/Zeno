package com.prodevans.zeno.dao;

import java.sql.SQLException;

import com.prodevans.zeno.pojo.UserInfo;

public interface UserLoginDAO {
	boolean loginCheck(UserInfo userInfo) throws SQLException, Exception;
}
