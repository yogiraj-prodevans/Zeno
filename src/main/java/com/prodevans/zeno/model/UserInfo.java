package com.prodevans.zeno.model;

public class UserInfo {
	private String user_name;
	private String user_pass;
	/**
	 * @return the user_name
	 */
	public String getUser_name() {
		return user_name;
	}
	/**
	 * @param user_name the user_name to set
	 */
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	/**
	 * @return the user_pass
	 */
	public String getUser_pass() {
		return user_pass;
	}
	/**
	 * @param user_pass the user_pass to set
	 */
	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}
	/**
	 * @param user_name
	 * @param user_pass
	 */
	public UserInfo(String user_name, String user_pass) {
		this.user_name = user_name;
		this.user_pass = user_pass;
	}
}
