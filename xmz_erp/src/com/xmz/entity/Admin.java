package com.xmz.entity;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class Admin implements Serializable{
	//id,username,password,power,phone,email,comment,ctime,ltime,ip
	private Integer id;//id
	private String username;//用户名
	private String password;//密码
	private Integer power_id;//权限
	private Integer phone;//电话
	private String email;//邮箱
	private String comment;//备注
	private Timestamp ctime;//注册时间
	private Timestamp ltime;//最后登录时间
	private String ip;//IP
	private String idCard;//身份证号
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

	public Integer getPower_id() {
		return power_id;
	}
	public void setPower_id(Integer power_id) {
		this.power_id = power_id;
	}
	public Integer getPhone() {
		return phone;
	}
	public void setPhone(Integer phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Timestamp getCtime() {
		return ctime;
	}
	public void setCtime(Timestamp ctime) {
		this.ctime = ctime;
	}
	public Timestamp getLtime() {
		return ltime;
	}
	public void setLtime(Timestamp ltime) {
		this.ltime = ltime;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	
	
	
}
