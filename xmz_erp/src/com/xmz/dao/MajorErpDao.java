package com.xmz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xmz.entity.Banji_to_student;
import com.xmz.entity.Grade_to_major;
import com.xmz.entity.Major;
import com.xmz.entity.Major_to_banji;
import com.xmz.entity.Major_to_course;

public interface MajorErpDao {
	
	
	// 通过名称查询专业
			public Major findByMajorName(String name);
			public Major findByMajorName2(String name);
			//增加专业
		    public boolean majorsave(Major major);
		 // 查询所有专业
			public List<Major> findMajorAll();
			// 删除专业
			public int majordelete(int id);
			public int majorbanjidelete(int id);
			public int majorcoursedelete(int id);
			// 修改名称
			public boolean majorupdate(@Param("id") int id,@Param("name") String name);
			// 通过id查询
			public Major findByMajorId(int id);
			// 查询专业详情
			public List<Major> findByMajorHackfan(Integer  id);
			
			// 查询该专业下所有的课程
			public List<Major_to_course> findByMajorid(int id);
			
			// 年级别专业关联
			public boolean grade_to_major_binding(Grade_to_major grade_to_major);
			
			// 查询该专业下所有班级
			public List<Major_to_banji> findByMajorbid(int id);
			//下拉关联select1查询
			public List<Major> findGMajorAll(int id);
			
		

}
