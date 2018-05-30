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


import com.xmz.entity.Admin;
import com.xmz.entity.Banji;
import com.xmz.entity.Banji_to_student;
import com.xmz.entity.Course;
import com.xmz.entity.Major;
import com.xmz.entity.Major_to_banji;
import com.xmz.entity.Major_to_course;
import com.xmz.service.MajorErpService;
import com.xmz.util.MSUtil;
import com.xmz.util.Result;

@Controller
@RequestMapping("/majoradmin")
public class MajorController {

	// 调用ErpService接口中的方法
	@Resource
	private MajorErpService majorerpService;

	// 增加用户
	@RequestMapping(value = "/majorlogin_add", method = RequestMethod.POST)
	@ResponseBody
	/*public Result majorsave(String name) {
		System.out.println(name);
			Result result = majorerpService.majorsave(name);
			return result;	
	}*/
	public ModelAndView majorsave(String name) {
		ModelAndView mav = new ModelAndView();
			majorerpService.majorsave(name);
			mav.addObject("menu_id_o", 5);
			mav.setViewName("/html/zhuanye/zhuanyelist");
			mav.addObject("name", majorerpService.findMajorAll());
			return mav;	
	}
	// 查看
		@RequestMapping(value = "/majorlist", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView list(Major major) {
			ModelAndView mav = new ModelAndView();
			mav.addObject("name", majorerpService.findMajorAll());
			mav.addObject("gid", major.getId());
			mav.addObject("menu_id_o", 5);
			mav.setViewName("/html/zhuanye/zhuanyelist");
			return mav;
		}
		
				@RequestMapping(value = "/xlmajorlist", method = RequestMethod.POST)
				@ResponseBody
				public List a(String select1 ) {	
					System.out.println("select1传入"+select1);
					List ll = new ArrayList();
					List<Major> l = majorerpService.findG_MAll(select1);
					System.out.println("select1传入");
					System.out.println("xlmajorlist"+l);
					for (int i = 0; i < l.size(); i++) {
						ll.add(l.get(i).getName());
					}
					return ll;
				}
				
				
		@RequestMapping(value = "/majorlistbd", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView listbd(Major major) {
			ModelAndView mav = new ModelAndView();
			mav.addObject("name", majorerpService.findMajorAll());
			mav.addObject("gid", major.getId());
			mav.addObject("menu_id_o", 5);
			mav.setViewName("/html/zhuanye/zhuanyebdlist");
			return mav;
		}
		
		// 删除
		@RequestMapping(value = "/majordelete/{id}", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView delete(@PathVariable("id") int id) {
			majorerpService.majordelete(id);
			ModelAndView mav = new ModelAndView();
			// 删除完重新查询输出
			mav.addObject("menu_id_o", 5);
			mav.addObject("success","删除成功！");
			mav.setViewName("/html/zhuanye/zhuanyelist");
			mav.addObject("name", majorerpService.findMajorAll());
			return mav;
		}
		// 名称修改
		@RequestMapping(value = "/majorupdate/{id}", method = RequestMethod.GET)
		@ResponseBody
		// 需要对要传入的值进行一个注解@PathVariable("要传的值")
		public ModelAndView update(@PathVariable("id") int id) {
			ModelAndView mav = new ModelAndView();
			// 通过id对某条信息进行查询，然后用user.xx进行页面取值，最后跳转到修改页面
			mav.addObject("menu_id_o", 5);
			mav.addObject("name", majorerpService.findByMajorId(id));
			mav.setViewName("/html/zhuanye/zhuanyechange");
			return mav;
		}

		@RequestMapping(value = "/nameUpdate", method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView update(int id, String name) {
		
			ModelAndView mav = new ModelAndView();
			// 通过findByid的方法查出该条信息
			
			majorerpService.majorupdate(id, name);
			List<Major> major = majorerpService.findByMajorHackfan(id);
			// 把查出的详情放入集合
			List<Major_to_course> major1 = majorerpService.findByMajorid(id);
			mav.addObject("menu_id_o", 5);
			mav.addObject("majorHackfan", major);
			mav.addObject("courseHackfan", major1);
			mav.addObject("success", "修改成功！");
			System.out.println("用户名修改成功" + name);
			mav.addObject("name", majorerpService.findMajorAll());
			mav.setViewName("/html/zhuanye/zhuanyelist");
			return mav;
		}
		@RequestMapping(value = "/majorHackfan/{id}", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView findByMajorName(@PathVariable("id") int id) {
			
			ModelAndView mav = new ModelAndView();
			// 把查出的数据放到集合，然后在输出
			List<Major> major = majorerpService.findByMajorHackfan(id);
			// 把查出的详情放入集合
			List<Major_to_course> major1 = majorerpService.findByMajorid(id);
			mav.addObject("menu_id_o", 5);
			mav.addObject("majorHackfan", major);
			mav.addObject("courseHackfan", major1);
			mav.addObject("mid", id);
			// 跳转页面
			mav.setViewName("/html/zhuanye/zhuanyexiangqing");
			return mav;
		}	
		
		@RequestMapping(value = "/majorbdHackfan/{id}", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView findbdByMajorName(@PathVariable("id") int id) {
			
			ModelAndView mav = new ModelAndView();
			// 把查出的数据放到集合，然后在输出
			List<Major> major = majorerpService.findByMajorHackfan(id);
			// 把查出的详情放入集合
			List<Major_to_course> major1 = majorerpService.findByMajorid(id);
			mav.addObject("menu_id_o", 5);
			mav.addObject("majorHackfan", major);
			mav.addObject("courseHackfan", major1);
			mav.addObject("mid", id);
			// 跳转页面
			mav.setViewName("/html/zhuanye/zhuanyebdxiangqing");
			return mav;
		}
		
		
		// 绑定
		/*@RequestMapping(value = "/grade_to_major_binding", method = RequestMethod.POST)
		@ResponseBody
		public Result grade_to_major_binding( Integer grade_id, String name) {
			System.out.println("grade_to_major_binding绑定：" + "年级id："
					+ grade_id + name);
			Major major = new Major();
			Result result = new Result();
			// 解析字符串，，，对接收到的name值已逗号为单位，循环输出，
			// 在循环时，，取出一次值，走一遍流程，绑定一次
			// 绑定完后，，setresult的值
			String sourceStr = name;
			String[] sourceStrArray = sourceStr.split(",");
			for (int i = 0; i < sourceStrArray.length; i++) {
				System.out.println(sourceStrArray[i]);
				major.setName(sourceStrArray[i]);
				System.out.println("循环" + major.getName());
				
				majorerpService.grade_to_major_binding(grade_id, major.getName());
			}

			// 借用result工具类输出提示信息。引用jobService中的binding方法进行绑定
			result.setState(1);
			result.setMsg("专业绑定成功");
			return result;
		}		*/
		//年级与专业的绑定
		@RequestMapping(value = "/grade_to_major_binding", method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView grade_to_major_binding( Integer grade_id, String name) {
			ModelAndView mav = new ModelAndView();
			Major major = new Major();
			Result result = new Result();
			// 解析字符串，，，对接收到的name值已逗号为单位，循环输出，
			// 在循环时，，取出一次值，走一遍流程，绑定一次
			// 绑定完后，，setresult的值
			String sourceStr = name;
			String[] sourceStrArray = sourceStr.split(",");
			for (int i = 0; i < sourceStrArray.length; i++) {
				System.out.println(sourceStrArray[i]);
				major.setName(sourceStrArray[i]);
				System.out.println("循环" + major.getName());
				//判断年级id是否为空，
				if(grade_id==null){
					mav.addObject("menu_id_o", 5);
					mav.addObject("success", "绑定失败，请选择年级！");
					mav.setViewName("/html/zhuanye/zhuanyelist");
				}else{
				if(majorerpService.grade_to_major_binding(grade_id, major.getName())==false){
					//判断是否已经绑定过
					mav.addObject("menu_id_o", 5);
					mav.addObject("success", "绑定失败，已经绑定过了！");
					mav.setViewName("/html/zhuanye/zhuanyelist");
					
				}else{
					continue;
				}
				}
			}
			mav.addObject("menu_id_o", 5);
			mav.addObject("success", "绑定成功！");
			mav.setViewName("/html/zhuanye/zhuanyelist");
			return mav;
		}		
		
		@RequestMapping(value = "/majorbHackfan/{id}", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView findByMajorbName(@PathVariable("id") int id) {
			
			ModelAndView mav = new ModelAndView();
			// 把查出的数据放到集合，然后在输出
			List<Major> major = majorerpService.findByMajorHackfan(id);
			// 把查出的详情放入集合
			List<Major_to_banji> major1 = majorerpService.findByMajorbid(id);
			mav.addObject("menu_id_o", 5);
			mav.addObject("majorHackfan", major);
			mav.addObject("banjiHackfan", major1);
			mav.addObject("mid",id);
			// 跳转页面
			mav.setViewName("/html/zhuanye/banjixiangqing");
			return mav;
		}	
		@RequestMapping(value = "/majorbbdHackfan/{id}", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView findbdByMajorbName(@PathVariable("id") int id) {
			
			ModelAndView mav = new ModelAndView();
			// 把查出的数据放到集合，然后在输出
			List<Major> major = majorerpService.findByMajorHackfan(id);
			// 把查出的详情放入集合
			List<Major_to_banji> major1 = majorerpService.findByMajorbid(id);
			mav.addObject("menu_id_o", 5);
			mav.addObject("majorHackfan", major);
			mav.addObject("banjiHackfan", major1);
			mav.addObject("mid",id);
			// 跳转页面
			mav.setViewName("/html/zhuanye/banjibdxiangqing");
			return mav;
		}
		// 删除
		@RequestMapping(value = "/majorbanjidelete/{id}", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView majordelete(@PathVariable("id") int id) {
			majorerpService.majorbanjidelete(id);
			ModelAndView mav = new ModelAndView();
			// 删除完重新查询输出
			mav.addObject("menu_id_o", 5);
			
		
			// 跳转页面
			mav.addObject("name", majorerpService.findMajorAll());
			mav.setViewName("/html/zhuanye/zhuanyelist");
			return mav;
		}
		
		// 删除
				@RequestMapping(value = "/majorcoursedelete/{id}", method = RequestMethod.GET)
				@ResponseBody
				public ModelAndView majorcoursedelete(@PathVariable("id") int id) {
					majorerpService.majorcoursedelete(id);
					ModelAndView mav = new ModelAndView();
					// 删除完重新查询输出
					mav.addObject("menu_id_o", 5);
					mav.addObject("name", majorerpService.findMajorAll());
					mav.setViewName("/html/zhuanye/zhuanyelist");
					
					return mav;
				}

}