package com.prodevans.zeno.dao;

public interface RegistrationUserParentalControlDAO {

    String getUserList();

    boolean checkRegistration(String user_name, String domain_id);

    boolean registerUser(String user_name, String ip_address, String domain_id);
}
