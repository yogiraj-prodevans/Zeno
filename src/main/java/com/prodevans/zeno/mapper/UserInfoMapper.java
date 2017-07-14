package com.prodevans.zeno.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.prodevans.zeno.model.UserInfo;

public class UserInfoMapper implements RowMapper<UserInfo> {

	@Override
	public UserInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
		String userName = rs.getString("customer_id");
        String password = rs.getString("password");
 
        return new UserInfo(userName, password);
	}

}
