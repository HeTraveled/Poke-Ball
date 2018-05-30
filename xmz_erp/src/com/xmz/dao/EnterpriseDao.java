package com.xmz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xmz.entity.Enterprise;
import com.xmz.entity.Enterprise_to_job;

public interface EnterpriseDao {
	// 通过名字查询企业名
	public Enterprise findByNameEnterprise(String name);

	// 增加企业
	public boolean enterprise_save(Enterprise enterprise);

	// 删除企业
	public int enterprise_delete(int id);

	// 删除企业下的岗位
	public int enterprise_job_delete(int id);

	// 查询所有企业
	public List<Enterprise> findAllEnterprise();

	// 企业详情修改
	/*
	 * public boolean EnterpriseUpdatexq(@Param("id") int id,
	 * 
	 * @Param("name") String name, @Param("phone") Integer phone,
	 * 
	 * @Param("address") String address, @Param("email") String email,
	 * 
	 * @Param("linkman") String linkman);
	 */
	public boolean EnterpriseUpdatexq(@Param("id") int id,
			@Param("phone") Integer phone, @Param("address") String address,
			@Param("email") String email, @Param("linkman") String linkman);

	// 查询企业详情
	public List<Enterprise> findByEnterpriseid(int id);

	// 通过企业名查询
	public List<Enterprise> findByEnterpriseName(@Param("name") String name);

	// 查询该企业下所有的岗位
	public List<Enterprise_to_job> findByEnterpriseId(int id);
}
