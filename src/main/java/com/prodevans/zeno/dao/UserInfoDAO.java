package com.prodevans.zeno.dao;

import com.prodevans.zeno.model.UserInfo;

public interface UserInfoDAO {
	public UserInfo findUserInfo(String userName);
}
