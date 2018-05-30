package com.xmz.entity;

public class Major_to_banji {
	
	private Integer id;
	private Integer major_id;
	private Integer banji_id;
	private Major major;
	private Banji banji;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getMajor_id() {
		return major_id;
	}
	public void setMajor_id(Integer major_id) {
		this.major_id = major_id;
	}
	public Integer getBanji_id() {
		return banji_id;
	}
	public void setBanji_id(Integer banji_id) {
		this.banji_id = banji_id;
	}
	public Major getMajor() {
		return major;
	}
	public void setMajor(Major major) {
		this.major = major;
	}
	public Banji getBanji() {
		return banji;
	}
	public void setBanji(Banji banji) {
		this.banji = banji;
	}
	
	

}
