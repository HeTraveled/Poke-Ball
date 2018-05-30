package com.xmz.entity;
/**
 * 企业岗位关联类
 * @author Administrator
 *
 */
public class Enterprise_to_job {
	private Integer id;//id
	private Integer enterprise_id;//企业所属id
	private Integer job_id;//岗位id
	private Enterprise enterprise;//企业关联
	private Job job;//岗位关联
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Integer getEnterprise_id() {
		return enterprise_id;
	}
	public void setEnterprise_id(Integer enterprise_id) {
		this.enterprise_id = enterprise_id;
	}
	public Integer getJob_id() {
		return job_id;
	}
	public void setJob_id(Integer job_id) {
		this.job_id = job_id;
	}
	public Enterprise getEnterprise() {
		return enterprise;
	}
	public void setEnterprise(Enterprise enterprise) {
		this.enterprise = enterprise;
	}
	public Job getJob() {
		return job;
	}
	public void setJob(Job job) {
		this.job = job;
	}
	
}
