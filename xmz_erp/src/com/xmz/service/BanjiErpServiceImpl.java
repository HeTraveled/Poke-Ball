package com.xmz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xmz.dao.BanjiErpDao;
import com.xmz.dao.MajorErpDao;

import com.xmz.entity.Banji;
import com.xmz.entity.Banji_to_student;
import com.xmz.entity.Course;
import com.xmz.entity.Grade;
import com.xmz.entity.Major;
import com.xmz.entity.Major_to_banji;
import com.xmz.entity.Major_to_course;

import com.xmz.util.Result;
@Service
public class BanjiErpServiceImpl implements BanjiErpService {
	@Resource
	private BanjiErpDao banjierpDao;
	@Resource
	private MajorErpDao majorerpDao;
	public Result banjisave(String name) {
		
		Result result = new Result();
		// 使用findbyname方法，判断是否有这个name，如果有返回00，注册失败，没有返回11注册成功
		Banji banji = banjierpDao.findByBanjiName(name);
		// 如果专业为空，输出可以注册，引用save方法进行插入数据
		if (banji == null) {
			// 使用实体类进行添加
			Banji bj =new Banji();
		// 保存数据
			bj.setName(name);
		
		    banjierpDao.banjisave(bj);
			// 返回state=11，提示注册成功
			result.setState(11);
			result.setMsg("增加成功");
			return result;

		} else {
			result.setState(00);
			result.setMsg("班级已存在，添加失败");
			return result;
		}
	}
/**
 * 查询所有班级
 */
public List<Banji> findBanjiAll() {
	List<Banji> banji1 = banjierpDao.findBanjiAll();
	return banji1;

}
public List<Banji> findM_BAll(String select2) {
	Major mj=majorerpDao.findByMajorName2(select2);
	List<Banji> banji2 = banjierpDao.findM_BAll(mj.getId());
	return banji2;

}
/**
 * 删除班级
 */
@Override
public String banjidelete(int id) {
	int d = banjierpDao.banjidelete(id);
	String message = "";
	if (d > 0) {
		message = "删除成功";
	} else {
		message = "删除失败";
	}
	return message;
}
@Override
public String banjistudentdelete(int id) {
	int d = banjierpDao.banjistudentdelete(id);
	String message = "";
	if (d > 0) {
		message = "删除成功";
	} else {
		message = "删除失败";
	}
	return message;
}

//改名
public Banji  findByBanjiId(int id) {
	Banji banji = banjierpDao.findByBanjiId(id);
	return banji;
}

public boolean banjiupdate(int id, String name) {
	boolean b = false;
	if (banjierpDao.banjiupdate(id,name)) {
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
public List<Banji> findByBanjiHackfan(Integer id) {
	System.out.println("asdasdsadsa"+banjierpDao.findByBanjiHackfan(id));
	List<Banji> xx = banjierpDao.findByBanjiHackfan(id);
	
	return xx;
}
@Override
public List<Banji_to_student> findByBanjiid(int id) {
	List<Banji> banji = banjierpDao.findByBanjiHackfan(id);
	
	if (banji != null) {
		List<Banji_to_student> banji1 = banjierpDao.findByBanjiid(id);
		// 判断是否有，有就返回，没有就返回空
		if (banji1 != null) {
			// 解析结果集

			// 解析结果集结束

			return banji1;
		} else {
			System.out.println("学生没有找到");
			return null;
		}

	} else {

		System.out.println("学生详情没有找到(暂停查找)");
		return null;
	}

}


/**
 *绑定
 */
@Override
public boolean major_to_banji_binding(Integer major_id, String name) {
	boolean b = true;
	System.out.println("impl:" + name);
	Banji banji = banjierpDao.findByBanjiName(name);
	System.out.println("测试一下IMPL中获取id：" + banji.getId());
	Major_to_banji major_to_banji = new Major_to_banji();
	major_to_banji.setMajor_id(major_id);
	major_to_banji.setBanji_id(banji.getId());
	banjierpDao.major_to_banji_binding(major_to_banji);

	return b;
}

@Override
public String banji_to_studentdelete(int id) {
	int d = banjierpDao.banji_to_studentdelete(id);
	String message = "";
	if (d > 0) {
		message = "删除成功";
	} else {
		message = "删除失败";
	}
	return message;
}
}


