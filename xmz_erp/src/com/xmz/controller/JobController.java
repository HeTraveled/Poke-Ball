package com.xmz.controller;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.xmz.entity.Job;
import com.xmz.service.JobService;
import com.xmz.util.Result;

/**
 * 岗位控制类
 * 
 * @author Administrator
 * 
 */
@Controller
@RequestMapping("/Job")
public class JobController {

	// 调用jobService接口中的方法
	@Resource
	private JobService jobService;

	// 岗位的添加
	@RequestMapping(value = "/job_add", method = RequestMethod.POST)
	@ResponseBody
	/*
	 * public Result enterprise_add(String name,String describe) { //
	 * 借用result工具类输出提示信息 Result result = jobService.jobsave(name,describe);
	 * return result; }
	 */
	public ModelAndView enterprise_add(String name, String miaoshu) {
		ModelAndView mav = new ModelAndView();
		// 借用result工具类输出提示信息
		Result result = jobService.jobsave(name, miaoshu);
		if (result.getState() == 1) {
			mav.addObject("menu_id_o", 3);
			mav.addObject("success", "添加岗位成功");
			mav.setViewName("/html/gangwei/list");
			return mav;
		}
		mav.addObject("list", jobService.findAllJob());
		mav.addObject("success", "添加岗位失败，岗位名称重复！");
		mav.addObject("menu_id_o", 3);
		mav.setViewName("/html/gangwei/list");
		return mav;
	}

	// 岗位与企业的绑定
	@RequestMapping(value = "/enterprise_to_job_binding", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView enterprise_to_job_binding(Integer enterprise_id,
			String name) {
		ModelAndView mav = new ModelAndView();
		Job job = new Job();
		// 解析字符串，，，对接收到的name值已逗号为单位，循环输出，
		// 在循环时，，取出一次值，走一遍流程，绑定一次
		// 绑定完后，，跳转页面
		if(name==null){
			mav.addObject("menu_id_o", 3);
			mav.addObject("success", "绑定失败");
			mav.addObject("list", jobService.findAllJob());
			mav.setViewName("/html/gangwei/list");
			return mav;
		}else {
		String sourceStr = name;
		String[] sourceStrArray = sourceStr.split(",");
		for (int i = 0; i < sourceStrArray.length; i++) {
			System.out.println(sourceStrArray[i]);
			job.setName(sourceStrArray[i]);
			System.out.println("循环" + job.getName());
			//判断企业id是否为空，为空停止，不为空继续
			if(enterprise_id==null){
				mav.addObject("menu_id_o", 3);
				mav.addObject("success", "绑定失败,请选择企业后进行操作！");
				mav.addObject("list", jobService.findAllJob());
				mav.setViewName("/html/gangwei/list");
				return mav;
			}else {
				//判断是否已经绑定过
			if (jobService.enterprise_to_job_binding(enterprise_id,job.getName()) == true) {
				/**
				 * 对impl接收的值判断，，，，或者换个类型，，，，如果已经绑定过就。。。 绑定成功就。。。。。
				 */

				continue;
			} else {
				System.out.println("绑定企业id失败：" + enterprise_id);
				mav.addObject("menu_id_o", 3);
				mav.addObject("success", "绑定失败，请检查岗位是否已经与企业进行绑定！");
				mav.addObject("list", jobService.findAllJob());
				mav.setViewName("/html/gangwei/list");
				return mav;
			}
			}

		}
		}
		// 跳转到列表页面
		// System.out.println("tiao1");
		mav.addObject("menu_id_o", 3);
		mav.addObject("success", "绑定成功！");
		mav.addObject("list", jobService.findAllJob());
		mav.setViewName("/html/gangwei/list");
		// System.out.println("tiao2");
		return mav;

	}

	// 岗位删除
	@RequestMapping(value = "/job_delete/{id}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView delete(@PathVariable("id") int id) {
		// 调用删除方法，根据id删除
		jobService.job_delete(id);
		ModelAndView mav = new ModelAndView();
		// 删除完重新查询输出
		mav.addObject("menu_id_o", 3);
		mav.addObject("list", jobService.findAllJob());
	
		mav.setViewName("/html/gangwei/list");
		return mav;
	}

	// 岗位信息详情的修改
	@RequestMapping(value = "/JobUpdateSuccess", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView PeopleUpdateSuccess(int id, String name, String miaoshu) {
		// 借用ModelAndView类，实现页面与controller之间的 传值，
		ModelAndView mav = new ModelAndView();
		// 实现修改的方法。，吧，id，name'传进去
		jobService.JobUpdatexq(id, name, miaoshu);
		mav.addObject("menu_id_o", 3);
		mav.addObject("success", "修改成功！");
		mav.addObject("list", jobService.findAllJob());
		mav.setViewName("/html/gangwei/list");
		return mav;
	}

	// 岗位列表信息的查看
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView list(Job job) {
		ModelAndView mav = new ModelAndView();
		// 调用findAll方法，查出数据传给list，然后页面用list接收值
		mav.addObject("list", jobService.findAllJob());
		mav.addObject("menu_id_o", 3);
		mav.setViewName("/html/gangwei/list");
		return mav;
	}
	@RequestMapping(value = "/bdlist", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView bdlist(Job job) {
		ModelAndView mav = new ModelAndView();
		// 调用findAll方法，查出数据传给list，然后页面用list接收值
		mav.addObject("list", jobService.findAllJob());
		mav.addObject("jid", job.getId());
		mav.addObject("menu_id_o", 3);
		mav.setViewName("/html/gangwei/gwbd");
		return mav;
	}


	// 岗位详情
	@RequestMapping(value = "/job_Hackfan/{id}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView findByEnterpriseName(@PathVariable("id") int id) {
		System.out.println("findbyenterprise岗位详情进入");
		ModelAndView mav = new ModelAndView();
		// 吧查出的值，放入集合。。ModelAndView值返回的需要是一个集合
		List<Job> job = jobService.findByJobId(id);
		mav.addObject("menu_id_o", 3);
		mav.addObject("job_Hackfan", job);
		mav.setViewName("/html/gangwei/particulars");
		return mav;
	}

}
