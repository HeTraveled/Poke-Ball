package com.xmz.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xmz.dao.JobDao;
import com.xmz.entity.Enterprise_to_job;
import com.xmz.entity.Job;
import com.xmz.util.Result;

@Service
public class JobServiceImpl implements JobService {
	// 调用jobDao方法与数据库判断返回结果
	@Resource
	private JobDao jobDao;

	/**
	 * 岗位增加
	 */
	@Override
	public Result jobsave(String name, String miaoshu) {
		// result工具类的引用
		Result result = new Result();
		// 岗位的实例化
		Job job = new Job();
		Job Job1 = jobDao.findByNameJob(name);
		if (Job1 == null) {
			// 把传过来的数据保存对象，再把对象传进去
			job.setName(name);
			job.setMiaoshu(miaoshu);

			// 把enterprise对象传过去
			jobDao.jobsave(job);
			result.setState(1);
			result.setMsg("岗位添加成功！");
			return result;
		}

		result.setState(0);
		result.setMsg("该岗位已经存在！");
		return result;
	}

	/**
	 * 岗位与企业的绑定
	 */
	@Override
	public boolean enterprise_to_job_binding(Integer enterprise_id, String name) {
		boolean b = true;
		// System.out.println("impl:" + name);
		// 对传过来的岗位名字进行名称查询，，把查询的数据给job方便下面绑定的使用id
		Job job = jobDao.findByNameJob(name);
		// 把企业id岗位id传过去查询是否已经绑定，，对返回值进行判断，如果为空说明可以进行绑定，如果不为空说明已经绑定过
		if (jobDao.findBinding(enterprise_id, job.getId()) == null) {
			// System.out.println("测试一下IMPL中获取id：" + job.getId());
			// 对企业与岗位绑定的实体类进行实例化
			Enterprise_to_job enterprise_to_job = new Enterprise_to_job();
			// 对这个表中的数值进行赋值，，，，把传过来的企业id放进去，，通过岗位查询的数据id传进去，完成绑操作
			enterprise_to_job.setEnterprise_id(enterprise_id);
			enterprise_to_job.setJob_id(job.getId());
			// 赋值结束，，使用dao成绑定方法，把对象传进去
			jobDao.enterprise_to_job_binding(enterprise_to_job);
			b = true;
			return b;
		} else {
			System.out.println("该岗位已经与企业绑定过!");
			return false;
		}

	}

	/**
	 * 岗位删除
	 */
	@Override
	public String job_delete(int id) {
		// 引用删除方法
		int d = jobDao.job_delete(id);
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
	 * 查询所有岗位
	 */
	@Override
	public List<Job> findAllJob() {
		List<Job> job = jobDao.findAllJob();
		return job;
	}

	/**
	 * 岗位修改
	 */
	@Override
	public boolean JobUpdatexq(int id, String name, String miaoshu) {
		boolean b = true;
		// 对传入的新值进行修改写入数据，返回true
		if (jobDao.JobUpdatexq(id, name, miaoshu)) {
			System.out.println("impl接口进入" + name + ":" + miaoshu);
			b = true;
			return b;
		}
		return false;
	}

	/**
	 * 根据id查询岗位详情，，具体有 该岗位的要求等等，
	 */
	@Override
	public List<Job> findByJobId(int id) {
		List<Job> job = jobDao.findByJobId(id);
		return job;
	}

}
