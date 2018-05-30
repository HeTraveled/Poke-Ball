package com.xmz.controller;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;



import com.xmz.entity.Course;
import com.xmz.entity.Job;
import com.xmz.entity.Student;
import com.xmz.service.CourseErpService;
import com.xmz.service.MajorErpService;

import com.xmz.util.Result;




@Controller
@RequestMapping("/courseadmin")
public class CourseController {

	// 调用ErpService接口中的方法
	@Resource
	private CourseErpService courseerpService;
	@Resource
	private MajorErpService majorerpService;
	

	// 增加用户
	@RequestMapping(value = "/courseadd", method = RequestMethod.POST)
	@ResponseBody
	/*public Result coursesave(String name) {
		System.out.println(name);
			Result result = courseerpService.coursesave(name);
			return result;	
	}*/
	public ModelAndView coursesave(String name) {
		ModelAndView mav = new ModelAndView();
		    courseerpService.coursesave(name);
		    mav.addObject("menu_id_o", 4);
		    mav.addObject("name", courseerpService.findCourseAll());
			mav.setViewName("/html/lesson/list");
			return mav;	
	}
	// 查看
		@RequestMapping(value = "/courselist", method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView list(Course course) {
			ModelAndView mav = new ModelAndView();
			
			
			// 要穿的值在erpService.findAll(),users为页面获取值（users.--）
			mav.addObject("name", courseerpService.findCourseAll());
			mav.addObject("mid",course.getId() );
			mav.addObject("menu_id_o", 4);
			mav.setViewName("/html/lesson/list");
		
			return mav;
		}
		@RequestMapping(value = "/coursebdlist", method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView bdlist(Course course) {
			ModelAndView mav = new ModelAndView();
			
			
			// 要穿的值在erpService.findAll(),users为页面获取值（users.--）
			mav.addObject("name", courseerpService.findCourseAll());
			mav.addObject("gid",course.getId());
			mav.addObject("menu_id_o", 4);
			mav.setViewName("/html/lesson/kcbd");
		
			return mav;
		}
		
		
		@RequestMapping(value = "/courselist_g", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView list_g(Course course) {
			ModelAndView mav = new ModelAndView();
			
			
			// 要穿的值在erpService.findAll(),users为页面获取值（users.--）
			mav.addObject("name", courseerpService.findCourseAll());
			mav.addObject("mid",course.getId() );
			mav.addObject("menu_id_o", 4);
			mav.setViewName("/html/lesson/list");
		
			return mav;
		}
		// 删除
		@RequestMapping(value = "/coursedelete/{id}", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView delete(@PathVariable("id") int id) {
			courseerpService.coursedelete(id);
			ModelAndView mav = new ModelAndView();
			// 删除完重新查询输出
			mav.addObject("menu_id_o", 4);
			mav.setViewName("/html/lesson/list");
			mav.addObject("name", courseerpService.findCourseAll());
			return mav;
		}
		// 名称修改
		@RequestMapping(value = "/courseupdate/{id}", method = RequestMethod.GET)
		@ResponseBody
		// 需要对要传入的值进行一个注解@PathVariable("要传的值")
		public ModelAndView update(@PathVariable("id") int id) {
			System.out.println("Mi名称修改11111111111111111111：：：：：："+id);
			ModelAndView mav = new ModelAndView();
			// 通过id对某条信息进行查询，然后用user.xx进行页面取值，最后跳转到修改页面
			mav.addObject("name", courseerpService.findByCourseId(id));
			mav.addObject("menu_id_o", 4);
			
		mav.setViewName("/html/lesson/change");
			return mav;
		}
		

		@RequestMapping(value = "/nameUpdate", method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView update(int id, String name) {
		System.out.println("名称修阿哥i2222222222222222222222：：：：：：：：：："+id+name);
			ModelAndView mav = new ModelAndView();
			// 通过findByid的方法查出该条信息
		//courseerpService.findByCourseId(id);
			courseerpService.courseupdate(id, name);
			System.out.println("用户名修改成功" + name);
			mav.addObject("menu_id_o", 4);
			mav.addObject("name", courseerpService.findCourseAll());
			mav.setViewName("/html/lesson/list");
			return mav;
		}
		/*// 绑定
				@RequestMapping(value = "/major_to_course_binding", method = RequestMethod.POST)
				@ResponseBody
				public Result major_to_course_binding( Integer major_id, String name) {
					System.out.println("major_to_course_binding绑定：" + "专业id："
							+ major_id + name);
					Course course = new Course();
					Result result = new Result();
					// 解析字符串，，，对接收到的name值已逗号为单位，循环输出，
					// 在循环时，，取出一次值，走一遍流程，绑定一次
					// 绑定完后，，setresult的值
					String sourceStr = name;
					String[] sourceStrArray = sourceStr.split(",");
					for (int i = 0; i < sourceStrArray.length; i++) {
						System.out.println(sourceStrArray[i]);
						course.setName(sourceStrArray[i]);
						System.out.println("循环" + course.getName());
						courseerpService.major_to_course_binding(major_id, course.getName());
					}

					// 借用result工具类输出提示信息。引用jobService中的binding方法进行绑定
					result.setState(1);
					result.setMsg("课程绑定成功");
					return result;
				}	*/	
		@RequestMapping(value = "/major_to_course_binding", method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView major_to_course_binding( Integer major_id, String name) {
			ModelAndView mav = new ModelAndView();
			Course course = new Course();

			// 解析字符串，，，对接收到的name值已逗号为单位，循环输出，
			// 在循环时，，取出一次值，走一遍流程，绑定一次
			// 绑定完后，，setresult的值
			if(name==null){
				mav.addObject("menu_id_o", 4);
				mav.addObject("success", "没有选择课程！");	
				mav.addObject("name", majorerpService.findMajorAll());
				mav.setViewName("/html/zhuanye/zhuanyelist");
				return mav;
			}else{
			String sourceStr = name;
			String[] sourceStrArray = sourceStr.split(",");
			for (int i = 0; i < sourceStrArray.length; i++) {
				System.out.println(sourceStrArray[i]);
				course.setName(sourceStrArray[i]);
				System.out.println("循环" + course.getName());
				if(major_id==null){
				//判断有无选择专业，如果选择了继续循环绑定，没有选择，跳出训换，返回页面
					mav.addObject("menu_id_o", 4);
					mav.addObject("success", "没有选择专业！请在专业栏下进行操作！");
					mav.addObject("name", majorerpService.findMajorAll());
					mav.setViewName("/html/zhuanye/zhuanyelist");
					System.out.println("出错的！");
					return mav;
				}else{
					courseerpService.major_to_course_binding(major_id, course.getName());	
				}
				
			}
			}
			mav.addObject("menu_id_o", 4);
			mav.addObject("success", "课程绑定成功！");
			System.out.println("成功的" );
			mav.addObject("name", majorerpService.findMajorAll());
			mav.setViewName("/html/zhuanye/zhuanyelist");
			System.out.println("成功的" );
			return mav;
			
		}	
		
		
		}
		

/*@Controller
@RequestMapping("/courseadmin")
public class CourseController {

	// 调用ErpService接口中的方法
	@Resource
	private CourseErpService courseerpService;

	// 增加用户
		@RequestMapping(value = "/courseadd", method = RequestMethod.POST)
		@ResponseBody
		public Result coursesave(String name) {
			System.out.println(name);
				Result result = courseerpService.coursesave(name);
				return result;	
		}
		public ModelAndView coursesave(String name) {
			ModelAndView mav = new ModelAndView();
			    courseerpService.coursesave(name);
				
				mav.setViewName("/html/lesson/list");
				return mav;	
		}
	// 查看
		@RequestMapping(value = "/courselist", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView list(Course course) {
			ModelAndView mav = new ModelAndView();
			
			
			// 要穿的值在erpService.findAll(),users为页面获取值（users.--）
			mav.addObject("name", courseerpService.findCourseAll());
			mav.addObject("mid",course.getId() );
			mav.setViewName("/html/lesson/list");
			mav.addObject("menu_id_o", 4);
			return mav;
		}
		// 删除
		@RequestMapping(value = "/coursedelete/{id}", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView delete(@PathVariable("id") int id) {
			courseerpService.coursedelete(id);
			ModelAndView mav = new ModelAndView();
			// 删除完重新查询输出
			mav.addObject("menu_id_o", 4);
			mav.setViewName("/Course/courselist");
			mav.addObject("name", courseerpService.findCourseAll());
			return mav;
		}
		// 名称修改
		@RequestMapping(value = "/courseupdate/{id}", method = RequestMethod.GET)
		@ResponseBody
		// 需要对要传入的值进行一个注解@PathVariable("要传的值")
		public ModelAndView update(@PathVariable("id") int id) {
			ModelAndView mav = new ModelAndView();
			// 通过id对某条信息进行查询，然后用user.xx进行页面取值，最后跳转到修改页面
			mav.addObject("menu_id_o", 4);
			mav.addObject("name", courseerpService.findByCourseId(id));
		mav.setViewName("/Course/courseupdate");
			return mav;
		}

		@RequestMapping(value = "/nameUpdate", method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView update(int id, String name) {
		
			ModelAndView mav = new ModelAndView();
			// 通过findByid的方法查出该条信息
			Course course = new Course();
			course = courseerpService.findByCourseId(id);
			courseerpService.courseupdate(id, name);
			System.out.println("用户名修改成功" + name);
			mav.addObject("menu_id_o", 4);
			mav.setViewName("/Course/coursesuccessUpdate");
			return mav;
		}
		// 绑定
				@RequestMapping(value = "/major_to_course_binding", method = RequestMethod.POST)
				@ResponseBody
				public Result major_to_course_binding( Integer major_id, String name) {
					System.out.println("major_to_course_binding绑定：" + "专业id："
							+ major_id + name);
					Course course = new Course();
					Result result = new Result();
					// 解析字符串，，，对接收到的name值已逗号为单位，循环输出，
					// 在循环时，，取出一次值，走一遍流程，绑定一次
					// 绑定完后，，setresult的值
					String sourceStr = name;
					String[] sourceStrArray = sourceStr.split(",");
					for (int i = 0; i < sourceStrArray.length; i++) {
						System.out.println(sourceStrArray[i]);
						course.setName(sourceStrArray[i]);
						System.out.println("循环" + course.getName());
						courseerpService.major_to_course_binding(major_id, course.getName());
					}

					// 借用result工具类输出提示信息。引用jobService中的binding方法进行绑定
					result.setState(1);
					result.setMsg("课程绑定成功");
					return result;
				}		
		@RequestMapping(value = "/major_to_course_binding", method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView major_to_course_binding( Integer major_id, String name) {
			ModelAndView mav = new ModelAndView();
			Course course = new Course();
			Result result = new Result();
			// 解析字符串，，，对接收到的name值已逗号为单位，循环输出，
			// 在循环时，，取出一次值，走一遍流程，绑定一次
			// 绑定完后，，setresult的值
			String sourceStr = name;
			String[] sourceStrArray = sourceStr.split(",");
			for (int i = 0; i < sourceStrArray.length; i++) {
				System.out.println(sourceStrArray[i]);
				course.setName(sourceStrArray[i]);
				System.out.println("循环" + course.getName());
				if(major_id==null){
				//判断有无选择专业，如果选择了继续循环绑定，没有选择，跳出训换，返回页面
					mav.addObject("menu_id_o", 4);
					mav.addObject("success", "没有选择专业！请在专业栏下进行操作！");
					mav.setViewName("/html/lesson/list");
					return mav;
				}else{
					courseerpService.major_to_course_binding(major_id, course.getName());	
				}
				
			}
			mav.addObject("menu_id_o", 4);
			mav.addObject("success", "课程绑定成功！");
			mav.setViewName("/html/lesson/list");
			return mav;
			
		}	
		
		}
		*/