package com.prodevans.zeno.dao;

import com.prodevans.zeno.pojo.ProfileDetails;

public interface ProfileDAO {
	ProfileDetails getProfile(String actid) throws Exception;

	boolean updateProfile(ProfileDetails details) throws Exception;

	int updateProfilePassword(String Actid, String password) throws Exception;
}
