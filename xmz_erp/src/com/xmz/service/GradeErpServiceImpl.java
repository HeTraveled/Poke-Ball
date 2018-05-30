package com.xmz.service;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.xmz.dao.GradeErpDao;
import com.xmz.entity.Banji;
import com.xmz.entity.Banji_to_student;
import com.xmz.entity.Grade;
import com.xmz.entity.Grade_to_major;
import com.xmz.util.Result;
@Service
public class GradeErpServiceImpl implements GradeErpService {
	@Resource
	private GradeErpDao gradeerpDao;
	public Result gradesave(Integer name) {
		
		Result result = new Result();
		// 使用findbyname方法，判断是否有这个name，如果有返回00，注册失败，没有返回11注册成功
		Grade grade = gradeerpDao.findByGradeName(name);
		// 如果专业为空，输出可以注册，引用save方法进行插入数据
		if (grade == null) {
			// 使用实体类进行添加
			Grade gr =new Grade();
		// 保存数据
			gr.setName(name);
		
		    gradeerpDao.gradesave(gr);
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
 * 查询所有课程
 */
public List<Grade> findGradeAll() {
	List<Grade> grade1 = gradeerpDao.findGradeAll();
	System.out.println(gradeerpDao.findGradeAll());
	return grade1;

}
/**
 * 删除专业
 */
@Override
public String gradedelete(int id) {
	int d = gradeerpDao.gradedelete(id);
	String message = "";
	if (d > 0) {
		message = "删除成功";
	} else {
		message = "删除失败";
	}
	return message;
}

@Override
public String grademajordelete(int id) {
	int d = gradeerpDao.grademajordelete(id);
	String message = "";
	if (d > 0) {
		message = "删除成功";
	} else {
		message = "删除失败";
	}
	return message;
}

//改名
public Grade  findByGradeId(int id) {
	Grade grade = gradeerpDao.findByGradeId(id);
	return grade;
}

public boolean gradeupdate(int id, Integer name) {
	boolean b = false;
	if (gradeerpDao.gradeupdate(id,name)) {
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
@Override
public List<Grade> findByGradeHackfan(Integer id) {
	System.out.println("asdasdsadsa"+gradeerpDao.findByGradeHackfan(id));
	List<Grade> xx = gradeerpDao.findByGradeHackfan(id);
	
	return xx;
}
@Override
public List<Grade_to_major> findByGradeid(int id) {
	List<Grade> grade = gradeerpDao.findByGradeHackfan(id);
	if (grade!= null) {
		List<Grade_to_major> grade1 = gradeerpDao.findByGradeid(id);
		
		if (grade1 != null) {
			// 解析结果集

			// 解析结果集结束

			return grade1;
		} else {
			System.out.println("专业没有找到");
			return null;
		}
        } else {
        System.out.println("专业没有找到(暂停查找)");
		return null;
	}

}


	
}
