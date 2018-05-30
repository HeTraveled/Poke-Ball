package com.xmz.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xmz.entity.Banji;
import com.xmz.entity.Banji_to_student;
import com.xmz.entity.Major;

import com.xmz.util.Result;

public interface BanjiErpService {


			//增加
		    public Result banjisave(String name);
		 // 查询所有班级
			public List<Banji> findBanjiAll();
			// 删除班级
			public String banjidelete(int id);
			public String banjistudentdelete(int id);
			// 修改
			public boolean banjiupdate(@Param("id") int id,@Param("name") String name);
			// 通过id查询
			public Banji findByBanjiId(int id);
			// 查询班级详情
			public List<Banji> findByBanjiHackfan(Integer id);
			
			public List<Banji_to_student> findByBanjiid(int id);
			
			// 绑定
			public boolean major_to_banji_binding(Integer major_id, String name);
			
			// 删除
			public String banji_to_studentdelete(int id);
			
			public List<Banji> findM_BAll(String select2);

}
