package com.xmz.service;

import java.util.List;

import com.xmz.entity.Student;
import com.xmz.util.Result;

public interface StudentErpService {
	
	// 增加学生
	public Result studentsave(Student stu);
	// 查看所有课程
	public List<Student>findStudentAll();
	// 删除课程
	public String studentdelete(int id);
	// 课程名称修改
	public boolean studentupdate(int id,String name);
	// 通过id查询
	public Student findByStudentId(int id);
	// 查看单个课程详情
	public List<Student> findByStudentHackfan(Integer id);
	
	// 绑定
	public boolean banji_to_student_binding(Integer banji_id, String name);
	//条件查询学生
	public List<Student> findglS(String b_name);
	

}
