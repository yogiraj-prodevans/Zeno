package com.prodevans.zeno.dao;

import com.prodevans.zeno.pojo.ProfileDetails;

public interface ProfileDAO {
	ProfileDetails getProfile(String actid) throws Exception;

	public boolean updatePassword(String actid, String password) throws Exception;

}
