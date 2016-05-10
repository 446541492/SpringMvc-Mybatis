package com.softAngel.base;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;


public abstract class GenericService<T extends BaseBean, PK extends Serializable> implements BaseService<T , PK > {
	
//    @SuppressWarnings("unchecked")
//    private Class<T> getTClass() {
//        return ((Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0]);
//
//    }
    public abstract GenericDao<T, PK> getDao();


    public int save(T t) {

        if (t == null) {
            return 0;
        }

        return this.getDao().insert(t);
    }

    public int saveOrUpdate(T t) {
        if (t == null) {
            return 0;
        }

        if (t.id== null) {
           return this.save(t);
        } else {
           return this.update(t);
        }
    }
    /**
     * 修改记录
     *	根据param条件
     * @param param 用于产生SQL的参数值，包括WHERE条件、目标字段和新值等
     * @throws Exception
     */
    @Transactional
    public int update(Map<String, Object> param) {

        if (param == null||param.size()==0) {
            return 0;
        }
        return this.getDao().update(param);
    }
    /**
     * 修改实体
     */
    @Transactional
    public int update(T t) {
        if (t == null) {
            return 0;
        }
        return this.getDao().update(t);
    }
    /**
     * 删除实体
     *
     * @param id
     * @throws Exception
     */
    @Transactional
    public int delete(PK id) {

        if (id == null) {
            return 0;
        }
        return this.getDao().delete(id);
    }
    /**
     * 删除实体
     *	根据param条件
     * @param param 用于产生SQL的参数值，包括WHERE条件、目标字段和新值等
     * @throws Exception
     */
    @Transactional
    public int delete(Map<String, Object> param) {

        if (param == null||param.size()==0) {
            return 0 ;
        }
        return this.getDao().delete(param);
    }
 

    /**
     * 通过ID获取实体
     */
    @SuppressWarnings("unchecked")
    public T get(PK id) {

        if (id == null) {
            return null;
        }
        T t = this.getDao().get(id);
        return t;
    }
    /**
     * 查询实体
     *	根据param条件
     * @param param 用于产生SQL的参数值，包括WHERE条件、目标字段和新值等
     * @throws Exception
     */
    public T get(Map<String, Object> param) {
        if (param == null||param.size()==0) {
            return null;
        }
        T t = this.getDao().get(param);
        return t;
    }
    
    /**
     * 取全部记录
     * @return 全部记录实体对象的List
     */
    public List<T> list(){
    	 return this.getDao().select();
    }
 
    /**
     * 按条件查询记录
     * @param param 查询条件参数，包括WHERE条件、分页条件、排序条件
     * @return 符合条件记录的实体对象的List
     */
    public  List<T> select(Map<String, Object> param){
    	 return this.getDao().select(param);
    }


    /**
     * 查询整表总记录数
     */
    public int count() {
        return this.getDao().count();
    }
    
    /**
     * 查询符合条件的记录数
     * @param param 查询条件参数，包括WHERE条件（其他参数内容不起作用）。此参数设置为null，则相当于count()
     * @return
     */
    public  int count(Map<String, Object> param){
    	 if (param == null||param.size()==0) {
	            return 0;
	        }
    	    return this.getDao().count(param);
    }
}
