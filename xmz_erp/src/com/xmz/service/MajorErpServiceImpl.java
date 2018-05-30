package com.xmz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import com.xmz.dao.GradeErpDao;
import com.xmz.dao.MajorErpDao;
import com.xmz.entity.Banji;
import com.xmz.entity.Banji_to_student;
import com.xmz.entity.Course;
import com.xmz.entity.Grade;
import com.xmz.entity.Grade_to_major;
import com.xmz.entity.Major;
import com.xmz.entity.Major_to_banji;
import com.xmz.entity.Major_to_course;
import com.xmz.util.Result;
@Service
public class MajorErpServiceImpl implements MajorErpService {
	
	
	@Resource
	private MajorErpDao majorerpDao;
	@Resource
	private GradeErpDao gradeerpDao;

	@Override
	public Result majorsave(String name) {
		
		
			Result result = new Result();
			// 使用findbyname方法，判断是否有这个username，如果有返回00，注册失败，没有返回11注册成功
			Major major = majorerpDao.findByMajorName(name);
			// 如果专业为空，输出可以注册，引用save方法进行插入数据
			if (major == null) {
				// 使用实体类进行添加
				Major mj =new Major();
			// 保存数据
				mj.setName(name);
				majorerpDao.majorsave(mj);
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
	 * 查询所有专业
	 */
	public List<Major> findMajorAll() {
		List<Major> major1 = majorerpDao.findMajorAll();
		return major1;

	}
	public List<Major> findG_MAll(String select1) {
		Grade gr=gradeerpDao.findByGradeName2(select1);
		
		List<Major> major2 = majorerpDao.findGMajorAll(gr.getId());
		return major2;

	}
	/**
	 * 删除专业
	 */
	@Override
	public String majordelete(int id) {
		int d = majorerpDao.majordelete(id);
		String message = "";
		if (d > 0) {
			message = "删除成功";
		} else {
			message = "删除失败";
		}
		return message;
	}
	@Override
	public String majorbanjidelete(int id) {
		int d = majorerpDao.majorbanjidelete(id);
		String message = "";
		if (d > 0) {
			message = "删除成功";
		} else {
			message = "删除失败";
		}
		return message;
	}
	@Override
	public String majorcoursedelete(int id) {
		int d = majorerpDao.majorcoursedelete(id);
		String message = "";
		if (d > 0) {
			message = "删除成功";
		} else {
			message = "删除失败";
		}
		return message;
	}
	//改名
	public Major  findByMajorId(int id) {
		Major major = majorerpDao.findByMajorId(id);
		return major;
	}

	public boolean majorupdate(int id, String name) {
		boolean b = false;
		if (majorerpDao.majorupdate(id,name)) {
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
	public List<Major> findByMajorHackfan(Integer id) {
		List<Major> xx = majorerpDao.findByMajorHackfan(id);
		return xx;
	}
	
	@Override
	public List<Major_to_course> findByMajorid(int id) {
		List<Major> major = majorerpDao.findByMajorHackfan(id);
		// 先根据传的值判断该企业有没有，在执行下面查找岗位的
		if (major != null) {
			List<Major_to_course> major1 = majorerpDao.findByMajorid(id);
			// 判断岗位是否有，有就返回，没有就返回空
			if (major1!= null) {
				// 解析结果集

				// 解析结果集结束

				return major1;
			} else {
				System.out.println("课程没有找到");
				return null;
			}

		} else {

			System.out.println("课程详情没有找到(暂停查找)");
			return null;
		}

	}
	
	/**
	 *年级专业的绑定
	 */
	@Override
	public boolean grade_to_major_binding(Integer grade_id, String name) {
		boolean b = true;
		System.out.println("impl:" + name);
		Major major = majorerpDao.findByMajorName(name);
		System.out.println("测试一下IMPL中获取id：" + major.getId());
		Grade_to_major grade_to_major = new Grade_to_major();
		grade_to_major.setGrade_id(grade_id);
		grade_to_major.setMajor_id(major.getId());
		majorerpDao.grade_to_major_binding(grade_to_major);

		return b;
	}

	@Override
	public List<Major_to_banji> findByMajorbid(int id) {
		List<Major> major = majorerpDao.findByMajorHackfan(id);
		// 先根据传的值判断该企业有没有，在执行下面查找岗位的
		if (major != null) {
			List<Major_to_banji> major1 = majorerpDao.findByMajorbid(id);
			// 判断岗位是否有，有就返回，没有就返回空
			if (major1!= null) {
				// 解析结果集

				// 解析结果集结束

				return major1;
			} else {
				System.out.println("课程没有找到");
				return null;
			}

		} else {

			System.out.println("课程详情没有找到(暂停查找)");
			return null;
		}

	}
}
