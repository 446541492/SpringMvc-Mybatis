package com.softAngel.dao;

import org.springframework.stereotype.Repository;
import com.softAngel.beans.Project;
import com.softAngel.base.GenericDao;

@Repository
public interface ProjectDao extends GenericDao<Project, Integer>  {

}