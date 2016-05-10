package com.softAngel.dao;

import org.springframework.stereotype.Repository;
import com.softAngel.beans.Test;
import com.softAngel.base.GenericDao;

@Repository
public interface TestDao extends GenericDao<Test, Integer>  {

}