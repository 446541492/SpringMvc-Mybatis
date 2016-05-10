package com.softAngel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;
import com.softAngel.base.GenericDao;
import com.softAngel.base.GenericService;
import com.softAngel.beans.Project;

import com.softAngel.dao.ProjectDao;
import com.softAngel.service.ProjectService;

@Service("projectService")
public class ProjectServiceImpl extends GenericService<Project, Integer>  implements ProjectService {

	private static Log logger = LogFactory.getLog(ProjectServiceImpl.class);
	@Autowired
	private ProjectDao projectDao;
	@Override
	public GenericDao<Project, Integer> getDao() {
		return projectDao;
	}


}