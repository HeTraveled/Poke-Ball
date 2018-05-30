package com.xmz.service;

import java.util.List;

import com.xmz.entity.Course;
import com.xmz.util.Result;

public interface CourseErpService {
	
	   // 增加课程
	public Result coursesave(String name);
	// 查看所有课程
	public List<Course> findCourseAll();
	// 删除课程
	public String coursedelete(int id);
	// 课程名称修改
	public boolean courseupdate(int id,String name);
	// 通过id查询
	public Course findByCourseId(int id);
	// 查看单个课程详情
	public List<Course> findByCourseHackfan(Integer id);
	
	// 绑定
	public boolean major_to_course_binding(Integer major_id, String name);
		
	

}
