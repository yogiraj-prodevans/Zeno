package com.prodevans.zeno.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.prodevans.zeno.dao.UserInfoDAO;

import com.prodevans.zeno.model.UserInfo;

public class MyDBAuthenticationService implements UserDetailsService {

	@Autowired
    private UserInfoDAO userInfoDAO;
	
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserInfo userInfo = userInfoDAO.findUserInfo(username);
        System.out.println("UserInfo= " + userInfo);
        
        if (userInfo == null) {
            throw new UsernameNotFoundException("User " + username + " was not found in the database");
        }
        
        UserDetails userDetails = (UserDetails) new User(userInfo.getUser_name(), userInfo.getUser_pass(), null);
       

		
		return userDetails;
	}

}
