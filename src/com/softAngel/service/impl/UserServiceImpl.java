package com.softAngel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;
import com.softAngel.base.GenericDao;
import com.softAngel.base.GenericService;
import com.softAngel.beans.User;

import com.softAngel.dao.UserDao;
import com.softAngel.service.UserService;

@Service("userService")
public class UserServiceImpl extends GenericService<User, Integer>  implements UserService {

	private static Log logger = LogFactory.getLog(UserServiceImpl.class);
	@Autowired
	private UserDao userDao;
	@Override
	public GenericDao<User, Integer> getDao() {
		return userDao;
	}


}