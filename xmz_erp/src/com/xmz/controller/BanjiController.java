package com.xmz.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xmz.entity.Banji;
import com.xmz.entity.Banji_to_student;
import com.xmz.entity.Course;
import com.xmz.entity.Major;
import com.xmz.entity.Major_to_banji;
import com.xmz.entity.Major_to_course;

import com.xmz.service.BanjiErpService;
import com.xmz.service.MajorErpService;

import com.xmz.util.Result;

@Controller
@RequestMapping("/banjiadmin")
public class BanjiController {

	// 调用ErpService接口中的方法
	@Resource
	private BanjiErpService banjierpService;
	@Resource
	private MajorErpService majorerpService;

	// 增加用户
	@RequestMapping(value = "/banjiadd", method = RequestMethod.POST)
	@ResponseBody
	/*public Result banjisave(String name) {
		System.out.println(name);
		Result result = banjierpService.banjisave(name);
		return result;
	}*/
	public ModelAndView banjisave(String name) {
		ModelAndView mav = new ModelAndView();
		    banjierpService.banjisave(name);
		    mav.addObject("menu_id_o", 5);
		    mav.addObject("success", "添加成功");
		    mav.addObject("name", banjierpService.findBanjiAll());
			mav.setViewName("/html/zhuanye/gradelist");
			
			return mav;	
	}
	

	// 查看
	@RequestMapping(value = "/banjilist", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView list(Banji banji) {
		ModelAndView mav = new ModelAndView();

		// 要穿的值在erpService.findAll(),users为页面获取值（users.--）
		mav.addObject("name", banjierpService.findBanjiAll());
		mav.addObject("bid", banji.getId());
		mav.addObject("menu_id_o", 5);
		mav.setViewName("/html/zhuanye/gradelist");
		return mav;
	}
	// 查看
		@RequestMapping(value = "/xlbanjilist", method = RequestMethod.POST)
		@ResponseBody
		
			public List a(String select2) {	
				System.out.println("select2传入"+select2);
				List ll = new ArrayList();
				List<Banji> l = banjierpService.findM_BAll(select2);
				System.out.println("select2传入");
				
				for (int i = 0; i < l.size(); i++) {
					ll.add(l.get(i).getName());
				}
				return ll;
			}
	@RequestMapping(value = "/banjibdlist", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView dblist(Banji banji) {
		ModelAndView mav = new ModelAndView();

		// 要穿的值在erpService.findAll(),users为页面获取值（users.--）
		mav.addObject("name", banjierpService.findBanjiAll());
		mav.addObject("bid", banji.getId());
		mav.addObject("menu_id_o", 5);
		mav.setViewName("/html/zhuanye/bjbd");
		return mav;
	}
	
	

	// 删除
	@RequestMapping(value = "/banjidelete/{id}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView delete(@PathVariable("id") int id) {
		banjierpService.banjidelete(id);
		ModelAndView mav = new ModelAndView();
		// 删除完重新查询输出
		
		mav.addObject("name", banjierpService.findBanjiAll());
		
		  mav.addObject("menu_id_o", 5);
		mav.setViewName("/html/zhuanye/gradelist");

		return mav;
	}

	// 名称修改
	@RequestMapping(value = "/banjiupdate/{id}", method = RequestMethod.GET)
	@ResponseBody
	// 需要对要传入的值进行一个注解@PathVariable("要传的值")
	public ModelAndView update(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		// 通过id对某条信息进行查询，然后用user.xx进行页面取值，最后跳转到修改页面
		  mav.addObject("menu_id_o", 5);
		mav.addObject("name", banjierpService.findByBanjiId(id));
		mav.setViewName("/html/zhuanye/gradechange");
		return mav;
	}

	@RequestMapping(value = "/nameUpdate", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView update(int id, String name) {

		ModelAndView mav = new ModelAndView();
		// 通过findByid的方法查出该条信息
		Banji banji = new Banji();
		banji = banjierpService.findByBanjiId(id);
		banjierpService.banjiupdate(id, name);
		System.out.println("用户名修改成功" + name);
		  mav.addObject("menu_id_o", 5);
		 mav.addObject("name", banjierpService.findBanjiAll());
		mav.setViewName("/html/zhuanye/gradelist");
		return mav;
	}

	// 详情
	@RequestMapping(value = "/banjiHackfan/{id}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView findByBanjiName(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		// 把查出的数据放到集合，然后在输出
		List<Banji> banji = banjierpService.findByBanjiHackfan(id);
		// 把查出的工作详情放入集合
		List<Banji_to_student> banji1 = banjierpService.findByBanjiid(id);

		mav.addObject("banjiHackfan", banji1);
		mav.addObject("studentHackfan", banji1);
		mav.addObject("sid", id);
		// 跳转页面
		  mav.addObject("menu_id_o", 5);
		mav.setViewName("/html/zhuanye/gradexiangqing");
		// mav.setViewName("/html/zhuanye/banjixiangqing");
		return mav;
	}
	@RequestMapping(value = "/banjibdHackfan/{id}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView findbdByBanjiName(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		// 把查出的数据放到集合，然后在输出
		List<Banji> banji = banjierpService.findByBanjiHackfan(id);
		// 把查出的工作详情放入集合
		List<Banji_to_student> banji1 = banjierpService.findByBanjiid(id);

		mav.addObject("banjiHackfan", banji1);
		mav.addObject("studentHackfan", banji1);
		mav.addObject("sid", id);
		// 跳转页面
		  mav.addObject("menu_id_o", 5);
		mav.setViewName("/html/zhuanye/gradebdxiangqing");
		// mav.setViewName("/html/zhuanye/banjixiangqing");
		return mav;
	}

	// 绑定
/*	@RequestMapping(value = "/major_to_banji_binding", method = RequestMethod.POST)
	@ResponseBody
	public Result major_to_banji_binding(Integer major_id, String name) {
		System.out.println("major_to_banji_binding绑定：" + "专业id：" + major_id
				+ name);
		Banji banji = new Banji();
		Result result = new Result();
		// 解析字符串，，，对接收到的name值已逗号为单位，循环输出，
		// 在循环时，，取出一次值，走一遍流程，绑定一次
		// 绑定完后，，setresult的值
		String sourceStr = name;
		String[] sourceStrArray = sourceStr.split(",");
		for (int i = 0; i < sourceStrArray.length; i++) {
			System.out.println(sourceStrArray[i]);
			banji.setName(sourceStrArray[i]);
			System.out.println("循环" + banji.getName());
			banjierpService.major_to_banji_binding(major_id, banji.getName());
		}

		// 借用result工具类输出提示信息。引用jobService中的binding方法进行绑定
		result.setState(1);
		result.setMsg("班级绑定成功");
		return result;
	}*/
	@RequestMapping(value = "/major_to_banji_binding", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView major_to_banji_binding(Integer major_id, String name) {
		ModelAndView mav = new ModelAndView();
		Banji banji = new Banji();
		//Result result = new Result();
		// 解析字符串，，，对接收到的name值已逗号为单位，循环输出，
		// 在循环时，，取出一次值，走一遍流程，绑定一次
		// 绑定完后，，setresult的值
		if(name==null){
			List<Major> major = majorerpService.findByMajorHackfan(major_id);
			// 把查出的详情放入集合
			List<Major_to_course> major1 = majorerpService.findByMajorid(major_id);
			  mav.addObject("menu_id_o", 5);
			mav.addObject("majorHackfan", major);
			mav.addObject("courseHackfan", major1);
			mav.addObject("mid", major_id);
			mav.addObject("success", "绑定失败！班级值为空！");
			// 跳转页面
			mav.setViewName("/html/zhuanye/bjbd");
			
			return mav;
		}else{
		String sourceStr = name;
		String[] sourceStrArray = sourceStr.split(",");
		for (int i = 0; i < sourceStrArray.length; i++) {
			System.out.println(sourceStrArray[i]);
			banji.setName(sourceStrArray[i]);
			System.out.println("循环" + banji.getName());
			if(banjierpService.major_to_banji_binding(major_id, banji.getName())){
				continue;
			}else{
				List<Major> major = majorerpService.findByMajorHackfan(major_id);
				// 把查出的详情放入集合
				List<Major_to_course> major1 = majorerpService.findByMajorid(major_id);
				  mav.addObject("menu_id_o", 5);
				mav.addObject("majorHackfan", major);
				mav.addObject("courseHackfan", major1);
				mav.addObject("mid", major_id);
				mav.addObject("success", "绑定失败！");
				// 跳转页面
				mav.setViewName("/html/zhuanye/bjbd");
				
				return mav;
				
			}
			
		}
		}
		List<Major> major = majorerpService.findByMajorHackfan(major_id);
		// 把查出的详情放入集合
		List<Major_to_banji> major1 = majorerpService.findByMajorbid(major_id);
		mav.addObject("menu_id_o", 5);
		mav.addObject("majorHackfan", major);
		mav.addObject("banjiHackfan", major1);
		mav.addObject("mid",major_id);
		// 跳转页面
		mav.setViewName("/html/zhuanye/banjixiangqing");
		return mav;
		// 借用result工具类输出提示信息。引用jobService中的binding方法进行绑定
		/*result.setState(1);
		result.setMsg("班级绑定成功");
		return result;*/
	}

	// 删除
	@RequestMapping(value = "/banji_to_studentdelete/{id}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView banjidelete(@PathVariable("id") int id) {
		banjierpService.banji_to_studentdelete(id);
		ModelAndView mav = new ModelAndView();
		// 删除完重新查询输出
		  mav.addObject("menu_id_o", 5);
		mav.setViewName("/html/student/liebiao");
		mav.addObject("name", banjierpService.findBanjiAll());
		return mav;
	}

	// 删除
	@RequestMapping(value = "/banjistudentdelete/{id}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView majorcoursedelete(@PathVariable("id") int id) {
		banjierpService.banjistudentdelete(id);
		ModelAndView mav = new ModelAndView();
		// 删除完重新查询输出
		List<Banji> banji = banjierpService.findByBanjiHackfan(id);
		// 把查出的工作详情放入集合
		List<Banji_to_student> banji1 = banjierpService.findByBanjiid(id);
		  mav.addObject("menu_id_o", 5);
		mav.addObject("banjiHackfan", banji);
		mav.addObject("studentHackfan", banji1);
		mav.addObject("sid", id);
		// 跳转页面
		mav.setViewName("/html/zhuanye/gradebdxiangqing");

		// mav.addObject("name", banjierpService.findBanjiAll());
		return mav;
	}
}
