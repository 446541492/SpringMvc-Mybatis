package com.softAngel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;
import com.softAngel.base.GenericDao;
import com.softAngel.base.GenericService;
import com.softAngel.beans.Test;

import com.softAngel.dao.TestDao;
import com.softAngel.service.TestService;

@Service("testService")
public class TestServiceImpl extends GenericService<Test, Integer>  implements TestService {

	private static Log logger = LogFactory.getLog(Test.class);
	@Autowired
	private TestDao testDao;
	@Override
	public GenericDao<Test, Integer> getDao() {
		return testDao;
	}


}