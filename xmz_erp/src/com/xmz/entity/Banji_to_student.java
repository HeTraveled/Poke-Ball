package com.xmz.entity;

public class Banji_to_student {
	private Integer id;
	private Integer banji_id;
	private Integer student_id;
	private Banji banji;
	private Student student;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getBanji_id() {
		return banji_id;
	}
	public void setBanji_id(Integer banji_id) {
		this.banji_id = banji_id;
	}
	public Integer getStudent_id() {
		return student_id;
	}
	public void setStudent_id(Integer student_id) {
		this.student_id = student_id;
	}
	public Banji getBanji() {
		return banji;
	}
	public void setBanji(Banji banji) {
		this.banji = banji;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}

}
