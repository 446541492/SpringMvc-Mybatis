package com.softAngel.beans;

import java.io.Serializable;
 import com.softAngel.base.BaseBean;
import java.util.Date;
/**
*@author wangl
*/
@SuppressWarnings("serial")
public class Project extends BaseBean implements Serializable{ 

/**  */
private String id;
/** 发起人ID */
private Integer pubId;
/** 项目名称 */
private String proName;
/** 项目类型 */
private Integer proType;
/** 是否最热 */
private Integer isHot;
/** 推荐 */
private Integer top;
/** 项目内容 */
private String content;
/** 项目简介 */
private String intro;
/** 宣传视频链接 */
private String videourl;
/** 联系人真实姓名 */
private String name;
/** 联系人邮箱 */
private String pEmail;
/** 联系人电话 */
private String pmobile;
/** 联系人QQ号码  */
private String pqq;
/** 联系人省份  */
private String plocationProvince;
/** 联系人市  */
private String plocationCity;
/** 联系人详细地址 */
private String plocationAddr;
/** 总金额 */
private Integer totalMoney;
/** 目前金额 */
private Integer nowMoney;
/** 支持人数 */
private Integer supportNum;
/** 项目上传时间 */
private Date createTime;
/** 项目修改时间 */
private Date updateTime;
/** 审核通过时间，这时正式上线，倒计时第二天开始 */
private String checkTime;
/** 项目状态 0:项目上传 ,2:项目审核通过上线,3:审核不通过,4:项目结束 */
private Integer state;

public void setId(String id) {
	this.id=id;
}
public String getId() {
	return this.id;
}
public void setPubId(Integer pubId) {
	this.pubId=pubId;
}
public Integer getPubId() {
	return this.pubId;
}
public void setProName(String proName) {
	this.proName=proName;
}
public String getProName() {
	return this.proName;
}
public void setProType(Integer proType) {
	this.proType=proType;
}
public Integer getProType() {
	return this.proType;
}
public void setIsHot(Integer isHot) {
	this.isHot=isHot;
}
public Integer getIsHot() {
	return this.isHot;
}
public void setTop(Integer top) {
	this.top=top;
}
public Integer getTop() {
	return this.top;
}
public void setContent(String content) {
	this.content=content;
}
public String getContent() {
	return this.content;
}
public void setIntro(String intro) {
	this.intro=intro;
}
public String getIntro() {
	return this.intro;
}
public void setVideourl(String videourl) {
	this.videourl=videourl;
}
public String getVideourl() {
	return this.videourl;
}
public void setName(String name) {
	this.name=name;
}
public String getName() {
	return this.name;
}
public void setPEmail(String pEmail) {
	this.pEmail=pEmail;
}
public String getPEmail() {
	return this.pEmail;
}
public void setPmobile(String pmobile) {
	this.pmobile=pmobile;
}
public String getPmobile() {
	return this.pmobile;
}
public void setPqq(String pqq) {
	this.pqq=pqq;
}
public String getPqq() {
	return this.pqq;
}
public void setPlocationProvince(String plocationProvince) {
	this.plocationProvince=plocationProvince;
}
public String getPlocationProvince() {
	return this.plocationProvince;
}
public void setPlocationCity(String plocationCity) {
	this.plocationCity=plocationCity;
}
public String getPlocationCity() {
	return this.plocationCity;
}
public void setPlocationAddr(String plocationAddr) {
	this.plocationAddr=plocationAddr;
}
public String getPlocationAddr() {
	return this.plocationAddr;
}
public void setTotalMoney(Integer totalMoney) {
	this.totalMoney=totalMoney;
}
public Integer getTotalMoney() {
	return this.totalMoney;
}
public void setNowMoney(Integer nowMoney) {
	this.nowMoney=nowMoney;
}
public Integer getNowMoney() {
	return this.nowMoney;
}
public void setSupportNum(Integer supportNum) {
	this.supportNum=supportNum;
}
public Integer getSupportNum() {
	return this.supportNum;
}
public void setCreateTime(Date createTime) {
	this.createTime=createTime;
}
public Date getCreateTime() {
	return this.createTime;
}
public void setUpdateTime(Date updateTime) {
	this.updateTime=updateTime;
}
public Date getUpdateTime() {
	return this.updateTime;
}
public void setCheckTime(String checkTime) {
	this.checkTime=checkTime;
}
public String getCheckTime() {
	return this.checkTime;
}
public void setState(Integer state) {
	this.state=state;
}
public Integer getState() {
	return this.state;
}
}