package com.xmz.entity;

public class Grade_to_major {
	
	private Integer id;
	private Integer grade_id;
	private Integer major_id;
	private Grade grade;
	private Major maojor;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getGrade_id() {
		return grade_id;
	}
	public void setGrade_id(Integer gender_id) {
		this.grade_id = gender_id;
	}
	public Integer getMajor_id() {
		return major_id;
	}
	public void setMajor_id(Integer major_id) {
		this.major_id = major_id;
	}
	public Grade getGrade() {
		return grade;
	}
	public void setGrade(Grade grade) {
		this.grade = grade;
	}
	public Major getMaojor() {
		return maojor;
	}
	public void setMaojor(Major maojor) {
		this.maojor = maojor;
	}

}
