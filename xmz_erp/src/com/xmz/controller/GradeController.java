package com.xmz.controller;

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
import com.xmz.entity.Grade;
import com.xmz.entity.Grade_to_major;
import com.xmz.service.GradeErpService;
import com.xmz.util.Result;

@Controller
@RequestMapping("/gradeadmin")
public class GradeController {

	// 调用ErpService接口中的方法
	@Resource
	private GradeErpService gradeerpService;

	// 增加用户
	@RequestMapping(value = "/gradeadd", method = RequestMethod.POST)
	@ResponseBody
	public Result studentsave(Integer name) {
		System.out.println(name);
			Result result = gradeerpService.gradesave(name);
			return result;	
	}
	// 查看
		@RequestMapping(value = "/gradelist", method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView list(Grade grade) {
			ModelAndView mav = new ModelAndView();
			
			
			// 要穿的值在erpService.findAll(),users为页面获取值（users.--）
			mav.addObject("name", gradeerpService.findGradeAll());
			
			System.out.println(gradeerpService.findGradeAll());
			mav.setViewName("/Grade/gradelist");
			return mav;
		}
		
		@RequestMapping(value = "/xlgradelist", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView xllist(Grade grade) {
			ModelAndView mav = new ModelAndView();
			
			
			// 要穿的值在erpService.findAll(),users为页面获取值（users.--）
			mav.addObject("name", gradeerpService.findGradeAll());
			
			System.out.println(gradeerpService.findGradeAll());
			mav.setViewName("html/student/liebiao");
			return mav;
		}
		
		// 删除
		@RequestMapping(value = "/gradedelete/{id}", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView delete(@PathVariable("id") int id) {
			gradeerpService.gradedelete(id);
			ModelAndView mav = new ModelAndView();
			// 删除完重新查询输出
			mav.setViewName("/Grade/gradelist");
			mav.addObject("name", gradeerpService.findGradeAll());
			return mav;
		}
		// 名称修改
		@RequestMapping(value = "/gradeupdate/{id}", method = RequestMethod.GET)
		@ResponseBody
		// 需要对要传入的值进行一个注解@PathVariable("要传的值")
		public ModelAndView update(@PathVariable("id") int id) {
			ModelAndView mav = new ModelAndView();
			// 通过id对某条信息进行查询，然后用name.xx进行页面取值，最后跳转到修改页面
			mav.addObject("name", gradeerpService.findByGradeId(id));
		mav.setViewName("/Grade/gradeupdate");
			return mav;
		}

		@RequestMapping(value = "/nameUpdate", method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView update(int id, Integer name) {
		
			ModelAndView mav = new ModelAndView();
			// 通过findByid的方法查出该条信息
			Grade grade = new Grade();
			grade = gradeerpService.findByGradeId(id);
			gradeerpService.gradeupdate(id, name);
			System.out.println("用户名修改成功" + name);
			mav.setViewName("/Grade/gradesuccessUpdate");
			return mav;
		}
	
		// 详情
		@RequestMapping(value = "/gradeHackfan/{id}", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView findByGradeName(@PathVariable("id") int id) {
			ModelAndView mav = new ModelAndView();
			// 把查出的数据放到集合，然后在输出
			List<Grade> grade = gradeerpService.findByGradeHackfan(id);
			// 把查出的工作详情放入集合
			List<Grade_to_major> grade1 = gradeerpService.findByGradeid(id);
System.out.println(id);
			mav.addObject("gradeHackfan", grade);
			mav.addObject("majorHackfan", grade1);
			System.out.println(grade1);
			mav.addObject("gradeid", id);
			
			
			// 跳转页面
			mav.setViewName("/Grade/gradeHackfan");
			return mav;
		}				
		// 删除
		@RequestMapping(value = "/grademajordelete/{id}", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView majordelete(@PathVariable("id") int id) {
			gradeerpService.grademajordelete(id);
			ModelAndView mav = new ModelAndView();
			// 删除完重新查询输出
			mav.setViewName("/Grade/gradelist");
			mav.addObject("name", gradeerpService.findGradeAll());
			return mav;
		}
}
		