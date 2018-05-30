package com.xmz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xmz.dao.CourseErpDao;

import com.xmz.entity.Banji_to_student;
import com.xmz.entity.Course;
import com.xmz.entity.Major_to_course;
import com.xmz.entity.Student;
import com.xmz.util.Result;
@Service
public class CourseErpServiceImpl implements CourseErpService {
	
	@Resource
	private CourseErpDao courseerpDao;

	@Override
	public Result coursesave(String name) {
		
			Result result = new Result();
			// 使用findbyname方法，判断是否有这个name，如果有返回00，注册失败，没有返回11注册成功
			Course course = courseerpDao.findByCourseName(name);
			// 如果专业为空，输出可以注册，引用save方法进行插入数据
			if (course == null) {
				// 使用实体类进行添加
				Course cr =new Course();
			// 保存数据
				cr.setName(name);
			
				courseerpDao.coursesave(cr);
				// 返回state=11，提示注册成功
				result.setState(11);
				result.setMsg("增加成功");
				return result;

			} else {
				result.setState(00);
				result.setMsg("专业已存在，添加失败");
				return result;
			}
		}
	/**
	 * 查询所有课程
	 */
	public List<Course> findCourseAll() {
		List<Course> course1 = courseerpDao.findCourseAll();
		return course1;

	}
	/**
	 * 删除
	 */
	@Override
	public String coursedelete(int id) {
		int d = courseerpDao.coursedelete(id);
		String message = "";
		if (d > 0) {
			message = "删除成功";
		} else {
			message = "删除失败";
		}
		return message;
	}
	
	//改名
	public Course  findByCourseId(int id) {
		Course course = courseerpDao.findByCourseId(id);
		return course;
	}

	public boolean courseupdate(int id, String name) {
		boolean b = false;
		if (courseerpDao.courseupdate(id,name)) {
			System.out.println("修改成功");
			b = true;
			return b;
		}
		System.out.println("修改失败");
		return b;

	}
	/**
	 * 专业详情查询
	 */
	@Override
	public List<Course> findByCourseHackfan(Integer id) {
		List<Course> xx = courseerpDao.findByCourseHackfan(id);
		return xx;
	}
	/**
	 *专业课程的绑定
	 */
	@Override
	public boolean major_to_course_binding(Integer major_id, String name) {
		boolean b = true;
		System.out.println("impl:" + name);
		Course course = courseerpDao.findByCourseName(name);
		System.out.println("测试一下IMPL中获取id：" + course.getId());
		Major_to_course major_to_course = new Major_to_course();
		major_to_course.setMajor_id(major_id);
		major_to_course.setCourse_id(course.getId());
		courseerpDao.major_to_course_binding(major_to_course);

		return b;
	}
	
}
