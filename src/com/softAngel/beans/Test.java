package com.softAngel.beans;

import java.io.Serializable;
 import com.softAngel.base.BaseBean;

/**
*@author wangl
*/
@SuppressWarnings("serial")
public class Test extends BaseBean implements Serializable{ 

private Integer id;
private String name;
private String time;

public void setId(Integer id) {
	this.id=id;
}
public Integer getId() {
	return this.id;
}
public void setName(String name) {
	this.name=name;
}
public String getName() {
	return this.name;
}
public void setTime(String time) {
	this.time=time;
}
public String getTime() {
	return this.time;
}
}