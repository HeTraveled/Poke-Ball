package com.xmz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xmz.entity.Banji_to_student;
import com.xmz.entity.Grade;
import com.xmz.entity.Grade_to_major;

public interface GradeErpDao {
	
	 // 通过名称查询年级
	public Grade findByGradeName(Integer name);
	public Grade findByGradeName2(String name);
	//增加
    public boolean gradesave(Grade grade);
 // 查询所有
	public List<Grade> findGradeAll();
	// 删除
	public int gradedelete(int id);
	
	public int grademajordelete(int id);
	// 修改
	public boolean gradeupdate(@Param("id") int id,@Param("name") Integer name);
	// 通过id查询
	public Grade findByGradeId(int id);
	// 查询详情
	public List<Grade> findByGradeHackfan(Integer name);
	
	// 查询该班级下所有的学生
			public List<Grade_to_major> findByGradeid(int id);
	
	

}
