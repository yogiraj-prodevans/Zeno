package com.prodevans.zeno.dao;

public interface RegistrationUserParentalControlDAO {
	String getUserList( );
	boolean checkRegistration();
	boolean registerUser(String user_name, String ip_address);
}
