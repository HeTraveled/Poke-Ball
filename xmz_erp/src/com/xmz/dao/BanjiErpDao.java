package com.xmz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xmz.entity.Banji;
import com.xmz.entity.Banji_to_student;
import com.xmz.entity.Grade_to_major;
import com.xmz.entity.Major_to_banji;



public interface BanjiErpDao {
	 // 通过名称查询年级
		public Banji findByBanjiName(String name);
		//增加
	    public boolean banjisave(Banji banji);
	 // 查询所有课程
		public List<Banji> findBanjiAll();
		public List<Banji> findM_BAll(int id);
		// 删除课程
		public int banjidelete(int id);
		public int banjistudentdelete(int id);
		
		// 修改
		public boolean banjiupdate(@Param("id") int id,@Param("name") String name);
		// 通过id查询
		public Banji findByBanjiId(int id);
		// 查询课程详情
		public List<Banji> findByBanjiHackfan(Integer id);

		// 查询该班级下所有的学生
		public List<Banji_to_student> findByBanjiid(int id);
		
		public boolean major_to_banji_binding(Major_to_banji major_to_banji);
		
		// 删除课程
				public int banji_to_studentdelete(int id);

}
