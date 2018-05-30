package com.xmz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import com.xmz.entity.Enterprise_to_job;
import com.xmz.entity.Job;

public interface JobDao {

	/**
	 * Dao层提供各种数据库操作方法 单个参数需要加@Param("参数值")，注解，不然无法找到值，如果为Admin等，不需改变
	 * 
	 * @param admin
	 * @return
	 */

	// 增加岗位
	public boolean jobsave(Job job);

	// 岗位与企业关联
	public boolean enterprise_to_job_binding(Enterprise_to_job enterprise_to_job);

	// 删除岗位
	public int job_delete(int id);

	// 岗位详情修改
	public boolean JobUpdatexq(@Param("id") int id, @Param("name") String name,
			@Param("miaoshu") String miaoshu);

	// 查询所有 岗位
	public List<Job> findAllJob();

	// 查询岗位详情
	public List<Job> findByJobId(int id);

	// 查询企业与该岗位是否已经绑定过
	public Enterprise_to_job findBinding(
			@Param("enterprise_id") int enterprise_id,
			@Param("job_id") int job_id);

	// 通过名字查询岗位名
	public Job findByNameJob(String name);
}
