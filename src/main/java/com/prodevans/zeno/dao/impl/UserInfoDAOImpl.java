package com.prodevans.zeno.dao.impl;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import com.prodevans.zeno.dao.UserLoginDAO;
import com.prodevans.zeno.dao.mapper.UserInfoMapper;
import com.prodevans.zeno.pojo.UserInfo;

public class UserInfoDAOImpl implements UserLoginDAO {
	private DataSource dataSource;
	private JdbcTemplate templete;

	/**
	 * @param dataSource
	 *            the dataSource to set
	 */
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
		this.templete = new JdbcTemplate(dataSource);
	}

	@Override
	public boolean loginCheck(UserInfo userInfo) throws SQLException, Exception {
		String sql = "SELECT * FROM USER WHERE customer_id = ? and password = ?";
		UserInfo i = null;

		i = templete.queryForObject(sql, new Object[] { userInfo.getCustomer_id(), userInfo.getPassword() },
				new UserInfoMapper());

		if (i != null)
			return true;
		else
			return false;
	}

}
