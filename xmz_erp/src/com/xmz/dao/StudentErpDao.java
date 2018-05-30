package com.xmz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xmz.entity.Banji_to_student;

import com.xmz.entity.Student;

public interface StudentErpDao {
	
	
	// 添加
	public boolean studentsave(Student student);

	// 删除学生
	public int studentdelete(int id);
 /*    // 学生详情修改
	public boolean studentupdatexq(@Param("id") Integer id,
			@Param("name") String name, @Param("gender") Integer gender,
			@Param("nation") String nation,@Param("brithday") String brithday,
			@Param("stuid") Integer stuid,@Param("idCard") String idCard,
			@Param("address") String address,@Param("qq") Integer qq,
			@Param("phone") Integer phone,@Param("email") String email,
			@Param("danger_phone") String danger_phone);*/
			

	// 查询所有学生
	public List<Student> findStudentAll();
	// 查询所有学生
		public List<Student> findBStudentAll(int id);

	// 通过名称查询学生
	public Student findByStudentName(String name);
	// 修改名称
	public boolean studentupdate(@Param("id") int id,@Param("name") String name);

	// 通过id查询
	public Student findByStudentId(int id);

	// 查询学生详情
	public List<Student> findByStudentHackfan(Integer id);
	// 学生详情修改

	public boolean studentupdatexq(Integer id, String name,
			String gender,Integer age, String nation, String idCard,
			String brithday, String email,Integer stuid, String idCard2,
			String address, Integer qq, Integer phone,
			String danger_phone);
	

	// 关联
	public boolean banji_to_student_binding(Banji_to_student banji_to_student);


}
