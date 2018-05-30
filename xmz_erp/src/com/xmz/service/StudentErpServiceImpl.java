package com.xmz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import com.xmz.dao.BanjiErpDao;
import com.xmz.dao.GradeErpDao;
import com.xmz.dao.MajorErpDao;
import com.xmz.dao.StudentErpDao;
import com.xmz.entity.Banji;
import com.xmz.entity.Banji_to_student;
import com.xmz.entity.Grade;
import com.xmz.entity.Major;
import com.xmz.entity.Student;
import com.xmz.util.Result;
@Service
public class StudentErpServiceImpl implements StudentErpService {
	@Resource
	private StudentErpDao studenterpDao;
	@Resource
	private BanjiErpDao banjierpDao;
	
	

	@Override
	public Result studentsave(Student stu) {
		
			Result result = new Result();
			// 使用findbyname方法，判断是否有这个name，如果有返回00，注册失败，没有返回11注册成功
			Student student = studenterpDao.findByStudentName(stu.getName());
			// 如果专业为空，输出可以注册，引用save方法进行插入数据
			if (student == null) {
				// 使用实体类进行添加
			
			
				studenterpDao.studentsave(stu);
				// 返回state=11，提示注册成功
				result.setState(11);
				result.setMsg("增加成功");
				return result;

			} else {
				result.setState(00);
				result.setMsg("学生已存在，添加失败");
				return result;
			}
		}
	/**
	 * 查询所有学生
	 */
	@Override
	public List<Student>findStudentAll() {
		List<Student> student1 = studenterpDao.findStudentAll();
		return student1;
}
	
	/**
	 * 删除学生
	 */
	@Override
	public String studentdelete(int id) {
		int d = studenterpDao.studentdelete(id);
		String message = "";
		if (d > 0) {
			message = "删除成功";
		} else {
			message = "删除失败";
		}
		return message;
	}
	
	//改名
	public Student  findByStudentId(int id) {
		Student student = studenterpDao.findByStudentId(id);
		return student;
	}

	public boolean studentupdate(int id, String name) {
		boolean b = false;
		if (studenterpDao.studentupdate(id,name)) {
			System.out.println("修改成功");
			b = true;
			return b;
		}
		System.out.println("修改失败");
		return b;

	}
	/**
	 * xs详情查询
	 */
	@Override
	public List<Student> findByStudentHackfan(Integer id) {
		System.out.println("asdasdsadsa"+studenterpDao.findByStudentHackfan(id));
		List<Student> xx = studenterpDao.findByStudentHackfan(id);
		
		return xx;
	}
	/**
	 * 详情修改
	 */
	public Student findByStudentName(String name) {
		Student studentxq = studenterpDao.findByStudentName(name);
		return studentxq;
	}

	// 学生详情修改
	public boolean studentupdatexq(Integer id,String name,String gender,Integer age,String email,String nation,
			String brithday,Integer stuid,String idCard,String address,Integer qq,
			Integer phone,String danger_phone) {
		boolean b = true;
		if (studenterpDao.studentupdatexq(id,name, gender,age, email,nation, idCard, brithday,stuid,idCard,address,
				qq,phone,danger_phone)) {
			b = true;
			return b;
		}
		return false;
	}
	
	/**
	 *班级学生的绑定
	 */
	@Override
	public boolean banji_to_student_binding(Integer banji_id, String name) {
		boolean b = true;
		System.out.println("impl:" + name);
		Student student = studenterpDao.findByStudentName(name);
		System.out.println("测试一下IMPL中获取id：" + student.getId());
		Banji_to_student banji_to_student = new Banji_to_student();
		banji_to_student.setBanji_id(banji_id);
		banji_to_student.setStudent_id(student.getId());
		studenterpDao.banji_to_student_binding(banji_to_student);

		return b;
	}
	
	
	@Override
	public List<Student> findglS(String b_name) {
		
		Banji banji=banjierpDao.findByBanjiName(b_name);
		List<Student> st = studenterpDao.findBStudentAll(banji.getId());
		
		return st;
	}
	


}
