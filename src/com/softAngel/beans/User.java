package com.softAngel.beans;

import java.io.Serializable;
 import com.softAngel.base.BaseBean;
import java.util.Date;
/**
*@author wangl
*/
@SuppressWarnings("serial")
public class User extends BaseBean implements Serializable{ 

	private long userId;
	private String trueName;
	private String userName;
	private String password;
	private String phoneNumber;
	private Date createDate;
	private String sex;
	private String address;
	private String delState;
	private String remark;
	private Date modifyDate;
	private String email;
	private String status;
	private String validateCode;
	
	public void setUserId(long userId) {
		this.userId=userId;
	}
	public long getUserId() {
		return this.userId;
	}
	public void setTrueName(String trueName) {
		this.trueName=trueName;
	}
	public String getTrueName() {
		return this.trueName;
	}
	public void setUserName(String userName) {
		this.userName=userName;
	}
	public String getUserName() {
		return this.userName;
	}
	public void setPassword(String password) {
		this.password=password;
	}
	public String getPassword() {
		return this.password;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber=phoneNumber;
	}
	public String getPhoneNumber() {
		return this.phoneNumber;
	}
	public void setCreateDate(Date createDate) {
		this.createDate=createDate;
	}
	public Date getCreateDate() {
		return this.createDate;
	}
	public void setSex(String sex) {
		this.sex=sex;
	}
	public String getSex() {
		return this.sex;
	}
	public void setAddress(String address) {
		this.address=address;
	}
	public String getAddress() {
		return this.address;
	}
	public void setDelState(String delState) {
		this.delState=delState;
	}
	public String getDelState() {
		return this.delState;
	}
	public void setRemark(String remark) {
		this.remark=remark;
	}
	public String getRemark() {
		return this.remark;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate=modifyDate;
	}
	public Date getModifyDate() {
		return this.modifyDate;
	}
	public void setEmail(String email) {
		this.email=email;
	}
	public String getEmail() {
		return this.email;
	}
	public void setStatus(String status) {
		this.status=status;
	}
	public String getStatus() {
		return this.status;
	}
	public String getValidateCode() {
		return validateCode;
	}
	public void setValidateCode(String validateCode) {
		this.validateCode = validateCode;
	}

}