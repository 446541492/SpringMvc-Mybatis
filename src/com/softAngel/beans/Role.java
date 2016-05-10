package com.softAngel.beans;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import com.softAngel.base.BaseBean;
/**
 * 角色实体
 * ClassName: Role 
 * @author wanglei
 * @date 2015-1-7
 */
public class Role extends BaseBean implements Serializable{
	private static final long serialVersionUID = -7257787113001847283L;
	/** 编号  PK*/
	private Long id;
	/** 角色名字  */
	private String name;
	/** 备注 */
	private String remark;
	/** 
	 * 创建人	FK(OA_ID_USER)
	 * 角色与创建人存在N-1关联
	 */
	private User creater;
	/** 创建时间 */
	private Date createDate;
	/** 
	 * 修改人	FK(OA_ID_USER) 
	 * 角色与修改人存在N-1关联
	 */
	private User modifier;
	/** 修改时间 */
	private Date modifyDate;
	
	/**
	 * 角色与用户存在多对多关联(OA_ID_USER_ROLE)
	 */
	private Set<User> users = new HashSet<User>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public User getCreater() {
		return creater;
	}

	public void setCreater(User creater) {
		this.creater = creater;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public User getModifier() {
		return modifier;
	}

	public void setModifier(User modifier) {
		this.modifier = modifier;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public Set<User> getUsers() {
		return users;
	}

	public void setUsers(Set<User> users) {
		this.users = users;
	} 
	
}
