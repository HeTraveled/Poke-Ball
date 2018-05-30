package com.xmz.controller;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.xmz.entity.Enterprise;
import com.xmz.entity.Enterprise_to_job;
import com.xmz.service.EnterpriseService;


/**
 * 企业控制类
 * 
 * @author Administrator
 * 
 */
@Controller
@RequestMapping("/Enterprise")
public class EnterpriseController {

	// 调用enterpriseService接口中的方法
	@Resource
	private EnterpriseService enterpriseService;

	// 企业的添加
	@RequestMapping(value = "/enterprise_add", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView enterprise_add(String name, Integer phone,
			String address, String email, String linkman) {
		ModelAndView mav = new ModelAndView();
		// 判断企业名字是否存在

		if (enterpriseService.findByEnterpriseName(name) == null) {
			mav.addObject("menu_id_o", 2);
			mav.addObject("saveErr", "企业已存在！");
			mav.setViewName("/html/qiye/add");
			return mav;
		} else if (name.equals("")) {
			mav.addObject("menu_id_o", 2);
			mav.addObject("saveErr", "企业名不能为空！");
			mav.setViewName("/html/qiye/add");
			return mav;
		} else if (phone.equals("")) {
			mav.addObject("menu_id_o", 2);
			mav.addObject("saveErr", "联系电话不能为空！");
			mav.setViewName("/html/qiye/add");
			return mav;
		} else if (address.equals("")) {
			mav.addObject("menu_id_o", 2);
			mav.addObject("saveErr", "联系地址不能为空！");
			mav.setViewName("/html/qiye/add");
			return mav;
		} else if (email.equals("")) {
			mav.addObject("menu_id_o", 2);
			mav.addObject("saveErr", "邮箱不能为空！");
			mav.setViewName("/html/qiye/add");
			return mav;
		} else if (linkman.equals("")) {
			mav.addObject("menu_id_o", 2);
			mav.addObject("saveErr", "负责人不能为空！");
			mav.setViewName("/html/qiye/add");
			return mav;
		}
		// 增加
		enterpriseService.enterprise_add(name, phone, address, email, linkman);
		// 查询，传值
		mav.addObject("menu_id_o", 2);
		mav.addObject("list", enterpriseService.findAllEnterprise());
		mav.setViewName("/html/qiye/liebiao");
		return mav;
	}

	// 企业删除
	@RequestMapping(value = "/enterprise_delete/{id}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView delete(@PathVariable("id") int id) {
		enterpriseService.enterprise_delete(id);
		ModelAndView mav = new ModelAndView();
		// 删除完重新查询输出
		mav.addObject("menu_id_o", 2);
		mav.addObject("list", enterpriseService.findAllEnterprise());
		mav.addObject("delSuccess", "删除成功");
		mav.setViewName("/html/qiye/liebiao");
		return mav;
	}

	// 企业下岗位的删除
	@RequestMapping(value = "/enterprise_job_delete/{id}", method = RequestMethod.GET)
	@ResponseBody
	/*
	 * public Result enterprise_job_delete(@PathVariable("id") int id){
	 * enterpriseService.enterprise_job_delete(id); Result result = new
	 * Result(); //System.out.println("企业下岗位删除已进入:"+id); // 删除完成
	 * result.setMsg("删除成功！"); return result; }
	 */public ModelAndView enterprise_job_delete(@PathVariable("id") int id) {
		enterpriseService.enterprise_job_delete(id);
		ModelAndView mav = new ModelAndView();

		// System.out.println("企业下岗位删除已进入:"+id);
		// 删除完成
		mav.addObject("Enterprise_Hackfan",enterpriseService.findByEnterpriseid(id));
		mav.addObject("menu_id_o", 2);
		mav.addObject("delSuccess", "岗位删除成功，返回查看岗位信息！");
		mav.addObject("EnId", id);
		mav.setViewName("/html/qiye/xiangqing");
		return mav;
	}

	// 企业信息详情的修改
	@RequestMapping(value = "/EnterpriseUpdateSuccess", method = RequestMethod.POST)
	@ResponseBody
	/*
	 * public ModelAndView EnterpriseUpdateSuccess(int id, String name, Integer
	 * phone, String address, String email, String linkman) { //
	 * System.out.println("id 更新成功："+id); ModelAndView mav = new ModelAndView();
	 * // 吧需要修改的值传进去修改 enterpriseService.EnterpriseUpdatexq(id, name, phone,
	 * address, email, linkman); mav.setViewName("/jsp/Admin/successUpdate");
	 * return mav; }
	 */
	public ModelAndView EnterpriseUpdateSuccess(int id, Integer phone,
			String address, String email, String linkman) {
		// System.out.println("id 更新成功："+id);
		ModelAndView mav = new ModelAndView();
		// 吧需要修改的值传进去修改
		enterpriseService.EnterpriseUpdatexq(id, phone, address, email, linkman);
		mav.addObject("menu_id_o", 2);
		mav.addObject("success", "修改成功！");
		mav.addObject("list", enterpriseService.findAllEnterprise());
		mav.setViewName("/html/qiye/liebiao");
		return mav;
	}

	// 企业列表信息的查看
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView list(Enterprise enterprise) {
		System.out.println("enterprise调用");
		ModelAndView mav = new ModelAndView();
		// 调用findAll方法，查出数据传给list，然后页面用list接收值
		mav.addObject("list", enterpriseService.findAllEnterprise());
		// 传值2，，侧边框的用值
		mav.addObject("menu_id_o", 2);
		mav.setViewName("/html/qiye/liebiao");

		return mav;
	}
	@RequestMapping(value = "/bdlist", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView bdlist(Enterprise enterprise) {
		System.out.println("enterprise调用");
		ModelAndView mav = new ModelAndView();
		// 调用findAll方法，查出数据传给list，然后页面用list接收值
		mav.addObject("list", enterpriseService.findAllEnterprise());
		// 传值2，，侧边框的用值
		mav.addObject("menu_id_o", 2);
		mav.setViewName("/html/qiye/bdliebiao");

		return mav;
	}

	// 企业详情

	@RequestMapping(value = "/enterprise_Hackfan/{id}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView findByEnterpriseName(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		// 把查出的数据放到集合，然后在输出
		List<Enterprise> enterprise = enterpriseService.findByEnterpriseid(id);
		// 把查出的工作详情放入集合
		List<Enterprise_to_job> enterprise1 = enterpriseService
				.findByEnterpriseId(id);
		/*
		 * //企业id传去页面方便删除。。。。。暂时没有什么用，，，，企业岗位删除不需这个 int EnterpriseId = id;
		 * mav.addObject("EnterpriseId", EnterpriseId);
		 */
		// ...........
		mav.addObject("menu_id_o", 2);
		mav.addObject("Enterprise_Hackfan", enterprise);
		mav.addObject("Job_Hackfan", enterprise1);
		// 跳转页面
		mav.setViewName("/html/qiye/xiangqing");
		return mav;
	}
	@RequestMapping(value = "/enterprise_bdHackfan/{id}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView findbdByEnterpriseName(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		// 把查出的数据放到集合，然后在输出
		List<Enterprise> enterprise = enterpriseService.findByEnterpriseid(id);
		// 把查出的工作详情放入集合
		List<Enterprise_to_job> enterprise1 = enterpriseService
				.findByEnterpriseId(id);
		/*
		 * //企业id传去页面方便删除。。。。。暂时没有什么用，，，，企业岗位删除不需这个 int EnterpriseId = id;
		 * mav.addObject("EnterpriseId", EnterpriseId);
		 */
		// ...........
		mav.addObject("menu_id_o", 2);
		mav.addObject("eid", id);
		mav.addObject("Enterprise_Hackfan", enterprise);
		mav.addObject("Job_Hackfan", enterprise1);
		// 跳转页面
		mav.setViewName("/html/qiye/bdxiangqing");
		return mav;
	}

}
