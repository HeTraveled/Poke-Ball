package com.xmz.entity;

public class Major_to_course {
	private Integer id;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	private Integer major_id;
	private Integer course_id;
	private Major major;
	private Course course;
	public Integer getMajor_id() {
		return major_id;
	}
	public void setMajor_id(Integer major_id) {
		this.major_id = major_id;
	}
	public Integer getCourse_id() {
		return course_id;
	}
	public void setCourse_id(Integer course_id) {
		this.course_id = course_id;
	}
	public Major getMajor() {
		return major;
	}
	public void setMajor(Major major) {
		this.major = major;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}

}
