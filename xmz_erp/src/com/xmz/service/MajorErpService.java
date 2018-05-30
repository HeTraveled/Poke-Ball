package com.xmz.service;

import java.util.List;

import com.xmz.entity.Banji_to_student;
import com.xmz.entity.Major;
import com.xmz.entity.Major_to_banji;
import com.xmz.entity.Major_to_course;
import com.xmz.util.Result;

public interface MajorErpService {
	
	// 增加专业
			public Result majorsave(String name);
			// 查看所有专业
			public List<Major> findMajorAll();
			// 删除专业
			public String majordelete(int id);
			public String majorbanjidelete(int id);
			public String majorcoursedelete(int id);
			// 专业名称修改
			public boolean majorupdate(int id,String name);
			// 通过id查询
			public Major findByMajorId(int id);
			// 查看单个专业详情
			public List<Major> findByMajorHackfan(Integer id);
			
			public List<Major_to_course> findByMajorid(int id);
			
			// 绑定
			public boolean grade_to_major_binding(Integer grade_id, String name);
			
			public List<Major_to_banji> findByMajorbid(int id);
			
			public List<Major> findG_MAll(String select1);
			
			

}
