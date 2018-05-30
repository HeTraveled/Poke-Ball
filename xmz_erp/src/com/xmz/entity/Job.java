package com.xmz.entity;
/**
 * 岗位实体类
 * @author Administrator
 *
 */
public class Job {
	private Integer id;//id
	private String name;//岗位名称
	private String miaoshu;//岗位描述
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMiaoshu() {
		return miaoshu;
	}
	public void setMiaoshu(String miaoshu) {
		this.miaoshu = miaoshu;
	}


}
