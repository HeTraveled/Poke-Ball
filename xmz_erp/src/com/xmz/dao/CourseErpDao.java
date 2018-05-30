package com.xmz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xmz.entity.Banji_to_student;
import com.xmz.entity.Course;
import com.xmz.entity.Major_to_course;

public interface CourseErpDao {
	
	
	
	// 通过名称查询kecheng
	public Course findByCourseName(String name);
	//增加
    public boolean coursesave(Course course);
    // 查询所有课程
	public List<Course> findCourseAll();
	// 删除课程
	public int coursedelete(int id);
	// 修改
	public boolean courseupdate(@Param("id") int id,@Param("name") String name);
	// 通过id查询
	public Course findByCourseId(int id);
	// 查询课程详情
	public List<Course> findByCourseHackfan(Integer id);
	// 关联
		public boolean major_to_course_binding(Major_to_course major_to_course);


}
