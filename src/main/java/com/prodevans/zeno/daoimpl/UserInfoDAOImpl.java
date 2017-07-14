package com.prodevans.zeno.daoimpl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.prodevans.zeno.dao.UserInfoDAO;
import com.prodevans.zeno.mapper.UserInfoMapper;
import com.prodevans.zeno.model.UserInfo;


@Service
@Transactional
public class UserInfoDAOImpl extends JdbcDaoSupport implements UserInfoDAO {

	@Autowired
    public UserInfoDAOImpl(DataSource dataSource) {
        this.setDataSource(dataSource);
    }
	
	@Override
	public UserInfo findUserInfo(String userName) {
		// TODO Auto-generated method stub
		String sql = "Select u.customer_id,u.password "//
                + " from User u where u.Username = ? ";
 
        Object[] params = new Object[] { userName };
        UserInfoMapper mapper = new UserInfoMapper();
        try {
            UserInfo userInfo = this.getJdbcTemplate().queryForObject(sql, params, mapper);
            return userInfo;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
	}

}
