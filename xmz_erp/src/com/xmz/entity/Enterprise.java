package com.xmz.entity;



/**
 * 企业实体类
 * @author Administrator
 *
 */
public class Enterprise {
	private Integer id;//id
	private String name;//企业名称
	private Integer phone;//电话
	private String address;//地址
	private String email;//邮箱
	private String linkman;//企业负责人
	
	
	
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
	public Integer getPhone() {
		return phone;
	}
	public void setPhone(Integer phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLinkman() {
		return linkman;
	}
	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}

	
	
}
