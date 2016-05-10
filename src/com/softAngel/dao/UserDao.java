package com.softAngel.dao;

import org.springframework.stereotype.Repository;
import com.softAngel.beans.User;
import com.softAngel.base.GenericDao;

@Repository
public interface UserDao extends GenericDao<User, Integer>  {
	
}