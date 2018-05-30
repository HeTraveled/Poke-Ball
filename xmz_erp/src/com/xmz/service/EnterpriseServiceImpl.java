package com.xmz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xmz.dao.EnterpriseDao;
import com.xmz.entity.Enterprise;
import com.xmz.entity.Enterprise_to_job;
import com.xmz.util.Result;

@Service
public class EnterpriseServiceImpl implements EnterpriseService {

	// 调用enterpriseDao方法与数据库判断返回结果
	@Resource
	private EnterpriseDao enterpriseDao;

	/**
	 * 企业的增加
	 */
	@Override
	public Result enterprise_add(String name, Integer phone, String address,
			String email, String linkman) {
		// 借用result工具类
		Result result = new Result();
		// 对企业进行实例化
		Enterprise enterprise = new Enterprise();
		// 对企业名进行为空的判断
		Enterprise enterprise1 = enterpriseDao.findByNameEnterprise(name);
		if (enterprise1 == null) {
			// 把传过来的数据保存对象，再把对象传进去
			enterprise.setName(name);
			enterprise.setPhone(phone);
			enterprise.setAddress(address);
			enterprise.setEmail(email);
			enterprise.setLinkman(linkman);
			// 把enterprise对象传过去
			enterpriseDao.enterprise_save(enterprise);
			result.setState(1);
			result.setMsg("企业添加成功！");
			return result;
		}

		result.setState(0);
		result.setMsg("企业名称重复！");
		return result;

	}

	/**
	 * 企业删除
	 */
	@Override
	public String enterprise_delete(int id) {
		// 引用删除方法
		int d = enterpriseDao.enterprise_delete(id);
		// 下面为删除提示。为了有一个string类型的返回值
		String message = "";
		if (d > 0) {
			message = "删除成功";
		} else {
			message = "删除失败";
		}
		return message;
	}

	/**
	 * 企业下岗位的删除
	 */
	@Override
	public String enterprise_job_delete(int id) {
		// 引用删除方法
		int d = enterpriseDao.enterprise_job_delete(id);
		// 下面为删除提示。为了有一个string类型的返回值
		String message = "";
		if (d > 0) {
			message = "删除成功";
		} else {
			message = "删除失败";
		}
		return message;
	}

	/**
	 * 查询所有企业
	 */
	@Override
	public List<Enterprise> findAllEnterprise() {
		// System.out.println("findAllEnterpriseIMPL调用");
		// 使用dao中方法查询到所有企业列表
		List<Enterprise> enterprise = enterpriseDao.findAllEnterprise();
		return enterprise;
	}

	// 企业详情修改
	/*
	 * @Override public boolean EnterpriseUpdatexq(int id, String name, Integer
	 * phone, String address, String email, String linkman) { boolean b = true;
	 * // 对传入的新值进行修改写入数据，返回true if (enterpriseDao.EnterpriseUpdatexq(id, name,
	 * phone, address, email, linkman)) { b = true; return b; } return false;
	 * 
	 * }
	 */
	@Override
	public boolean EnterpriseUpdatexq(int id, Integer phone, String address,
			String email, String linkman) {
		boolean b = true;
		// 对传入的新值进行修改写入数据，返回true
		if (enterpriseDao
				.EnterpriseUpdatexq(id, phone, address, email, linkman)) {
			b = true;
			return b;
		}
		return false;

	}

	// 企业详情查询

	@Override
	public List<Enterprise> findByEnterpriseid(int id) {
		// 查出的值返回该实体类的集合
		List<Enterprise> enterprise = enterpriseDao.findByEnterpriseid(id);
		return enterprise;
	}

	/**
	 * 查询该企业下所有的岗位
	 */

	@Override
	public List<Enterprise_to_job> findByEnterpriseId(int id) {
		List<Enterprise> enterprise = enterpriseDao.findByEnterpriseid(id);
		// 先根据传的值判断该企业有没有，在执行下面查找岗位的
		if (enterprise != null) {
			List<Enterprise_to_job> enterprise1 = enterpriseDao
					.findByEnterpriseId(id);
			// 判断岗位是否有，有就返回，没有就返回空
			if (enterprise1 != null) {
				// 解析结果集

				// 解析结果集结束

				return enterprise1;
			} else {
				System.out.println("岗位没有找到");
				return null;
			}

		} else {

			System.out.println("企业详情没有找到(岗位暂停查找)");
			return null;
		}

	}

	/**
	 * 通过企业名判断查询企业是否存在
	 */
	@Override
	public List<Enterprise> findByEnterpriseName(String name) {
		List<Enterprise> enterprise = enterpriseDao.findByEnterpriseName(name);
		return enterprise;
	}

}
