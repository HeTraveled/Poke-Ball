package com.xmz.service;

import java.util.List;

import com.xmz.entity.Banji_to_student;
import com.xmz.entity.Grade;
import com.xmz.entity.Grade_to_major;
import com.xmz.util.Result;

public interface GradeErpService {
	
	
	// 增加年级
	public Result gradesave(Integer name);
	// 查看所有年级
	public List<Grade>findGradeAll();
	// 删除
	public String gradedelete(int id);
	public String grademajordelete(int id);
	// 年级名称修改
	public boolean gradeupdate(int id,Integer name);
	// 通过id查询
	public Grade findByGradeId(int id);
	// 查看单个详情
	public List<Grade> findByGradeHackfan(Integer id);
	
	public List<Grade_to_major> findByGradeid(int id);

	


}
