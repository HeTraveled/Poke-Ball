package com.xmz.service;

import java.util.List;

import com.xmz.entity.Job;
import com.xmz.util.Result;

public interface JobService {

	// 增加岗位
	public Result jobsave(String name, String miaoshu);

	// 岗位企业绑定
	public boolean enterprise_to_job_binding(Integer enterprise_id, String name);

	// 删除岗位
	public String job_delete(int id);

	// 查看所有岗位
	public List<Job> findAllJob();

	// 岗位详情修改
	public boolean JobUpdatexq(int id, String name, String miaoshu);

	// 通过id查询岗位详情
	public List<Job> findByJobId(int id);
}
