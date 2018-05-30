package com.xmz.service;

import java.util.List;

import com.xmz.entity.Enterprise;
import com.xmz.entity.Enterprise_to_job;
import com.xmz.util.Result;

public interface EnterpriseService {

	// 添加企业
	public Result enterprise_add(String name, Integer phone, String address,
			String email, String linkman);

	// 删除企业
	public String enterprise_delete(int id);

	// 删除企业下的岗位
	public String enterprise_job_delete(int id);

	// 查看所有企业列表
	public List<Enterprise> findAllEnterprise();

	// 企业详情修改
	/*
	 * public boolean EnterpriseUpdatexq(int id, String name, Integer phone,
	 * String address, String email, String linkman);
	 */
	public boolean EnterpriseUpdatexq(int id, Integer phone, String address,
			String email, String linkman);

	// 通过id查询企业详情
	public List<Enterprise> findByEnterpriseid(int id);

	// 通过名字查询企业详情
	public List<Enterprise> findByEnterpriseName(String name);

	// 通过Enterprise_Id在Enterprise_to_job中通过Enterprise_id 查询相应岗位
	public List<Enterprise_to_job> findByEnterpriseId(int id);
}
