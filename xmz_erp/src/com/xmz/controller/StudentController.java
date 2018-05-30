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
import com.xmz.entity.Student;

import com.xmz.service.BanjiErpService;
import com.xmz.service.GradeErpService;
import com.xmz.service.MajorErpService;
import com.xmz.service.StudentErpService;

import com.xmz.util.Result;

@Controller
@RequestMapping("/studentadmin")
public class StudentController {

	// 调用ErpService接口中的方法
	@Resource
	private StudentErpService studenterpService;
	@Resource
	private GradeErpService gradeerpService;
	@Resource
	private MajorErpService majorService;


	// 增加用户
	@RequestMapping(value = "/studentadd", method = RequestMethod.POST)
	@ResponseBody
	/*public Result studentsave(String name,String gender,Integer age,String nation,
			String brithday,String email,Integer stuid,String idCard,String address,Integer qq,
			Integer phone,String danger_phone) {
		System.out.println(name);
			Result result = studenterpService.studentsave(name, gender,age,nation,email, idCard, stuid,idCard,address,
					qq,phone,danger_phone);
			return result;	
	}*/
	public ModelAndView studentsave(String name,String gender,Integer age,String nation,
			String brithday,String email,String stuid,String idCard,String address,String qq,
			String phone,String danger_phone) {
		ModelAndView mav = new ModelAndView();
		//修改开始
		Student stu = new Student();
		stu.setAddress(address);
		stu.setAge(age);
		stu.setBrithday(brithday);
		stu.setDanger_phone(danger_phone);
		stu.setEmail(email);
		stu.setGender(gender);
		stu.setIdCard(idCard);
		stu.setName(name);
		stu.setNation(nation);
		stu.setPhone(phone);
		stu.setQq(qq);
		stu.setStuid(stuid);
		
		    studenterpService.studentsave(stu);
			System.out.println("studentsave");
			mav.addObject("menu_id_o", 1);
			mav.setViewName("html/student/liebiao");
			mav.addObject("uu", studenterpService.findStudentAll());
			return mav;	
	}
	// 查看
		@RequestMapping(value = "/studentlist", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView list(Student student) {
			ModelAndView mav = new ModelAndView();
			// 要穿的值在erpService.findAll(),users为页面获取值（users.--）
			mav.addObject("menu_id_o", 1);
			mav.addObject("uu", studenterpService.findStudentAll());
			mav.setViewName("/html/student/liebiao");
			
			return mav;
		}
		@RequestMapping(value = "/glstudentlist", method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView list(String n_name,String m_name,String b_name) {
			ModelAndView mav = new ModelAndView();
			if(n_name.equals("0")){
				System.out.println("请选择年级继续操作");
				mav.setViewName("html/student/liebiao");
				return mav;
			}else if(m_name.equals("0")){
				System.out.println("请选择专业继续操作");
				mav.setViewName("html/student/liebiao");
				return mav;
			}else{
			mav.addObject("StudentAll", studenterpService.findglS(b_name));
			mav.setViewName("html/student/liebiao");
			return mav;
			}
		}
		
		@RequestMapping(value = "/studentbdlist", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView bdlist(Student student) {
			ModelAndView mav = new ModelAndView();
			// 要穿的值在erpService.findAll(),users为页面获取值（users.--）
			mav.addObject("menu_id_o", 1);
			mav.addObject("uu", studenterpService.findStudentAll());
			mav.setViewName("/html/student/xsbd");
			
			return mav;
		}
		// 删除
		@RequestMapping(value = "/studentdelete/{id}", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView delete(@PathVariable("id") int id) {
			studenterpService.studentdelete(id);
			ModelAndView mav = new ModelAndView();
			// 删除完重新查询输出
			mav.addObject("menu_id_o", 1);
			mav.setViewName("html/student/liebiao");
			mav.addObject("name", studenterpService.findStudentAll());
			return mav;
		}
		// 名称修改
		@RequestMapping(value = "/studentupdate/{id}", method = RequestMethod.GET)
		@ResponseBody
		// 需要对要传入的值进行一个注解@PathVariable("要传的值")
		public ModelAndView update(@PathVariable("id") int id) {
			ModelAndView mav = new ModelAndView();
			// 通过id对某条信息进行查询，然后用name.xx进行页面取值，最后跳转到修改页面
			mav.addObject("menu_id_o", 1);
			mav.addObject("student",studenterpService.findByStudentHackfan(id));
			System.out.println("修改页面"+studenterpService.findByStudentHackfan(id));
			mav.addObject("sid", id);
			//mav.addObject("name", studenterpService.findByStudentId(id));
		mav.setViewName("/html/student/change");
			return mav;
		}

		@RequestMapping(value = "/nameUpdate", method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView update(int id, String name) {
		
			ModelAndView mav = new ModelAndView();
			// 通过findByid的方法查出该条信息
	
		
			studenterpService.studentupdate(id, name);
			System.out.println("用户名修改成功dfvcsxdsadsafdsa" + name);
			mav.addObject("menu_id_o", 1);
			mav.addObject("uu", studenterpService.findStudentAll());
			mav.setViewName("/html/student/liebiao");
			return mav;
		}
		// 用户详情查询
		@RequestMapping(value = "/studentHackfan/{id}", method = RequestMethod.GET)
		@ResponseBody
		public ModelAndView findByStudentName(@PathVariable("id") Integer id) {
			ModelAndView mav = new ModelAndView();
			List<Student> student = studenterpService.findByStudentHackfan(id);
			mav.addObject("nameHackfan",student);
			System.out.println("查询结果：" + studenterpService.findByStudentHackfan(id) + ":"
					+ student);
			mav.addObject("menu_id_o", 1);
			mav.addObject("sid",id);
			
			mav.setViewName("/html/student/xiangqing");
			return mav;
		}
		// 岗位与企业的绑定
		/*@RequestMapping(value = "/banji_to_student_binding", method = RequestMethod.POST)
		@ResponseBody
		public Result banji_to_student_binding( Integer banji_id, String name) {
			System.out.println("banji_to_student_binding绑定：" + "班级id："
					+ banji_id + name);
			Student student = new Student();
			Result result = new Result();
			// 解析字符串，，，对接收到的name值已逗号为单位，循环输出，
			// 在循环时，，取出一次值，走一遍流程，绑定一次
			// 绑定完后，，setresult的值
			String sourceStr = name;
			String[] sourceStrArray = sourceStr.split(",");
			for (int i = 0; i < sourceStrArray.length; i++) {
				System.out.println(sourceStrArray[i]);
				student.setName(sourceStrArray[i]);
				System.out.println("循环" + student.getName());
				studenterpService.banji_to_student_binding(banji_id, student.getName());
			}

			// 借用result工具类输出提示信息。引用jobService中的binding方法进行绑定
			result.setState(1);
			result.setMsg("学生绑定成功");
			return result;
		}		*/
		@RequestMapping(value = "/banji_to_student_binding", method = RequestMethod.POST)
		@ResponseBody
		public ModelAndView banji_to_student_binding( Integer banji_id, String name) {
			ModelAndView mav = new ModelAndView();
			Student student = new Student();
			//Result result = new Result();
			// 解析字符串，，，对接收到的name值已逗号为单位，循环输出，
			// 在循环时，，取出一次值，走一遍流程，绑定一次
			// 绑定完后，，setresult的值
			if(name==null){
				mav.addObject("menu_id_o", 1);
				mav.addObject("success", "绑定失败,请选择学生！");
				mav.addObject("uu", studenterpService.findStudentAll());
				mav.setViewName("/html/student/liebiao");
			}else{
			String sourceStr = name;
			String[] sourceStrArray = sourceStr.split(",");
			for (int i = 0; i < sourceStrArray.length; i++) {
				//System.out.println(sourceStrArray[i]);
				student.setName(sourceStrArray[i]);
				//System.out.println("循环" + student.getName());
				if(banji_id==null){
					mav.addObject("menu_id_o", 1);
					mav.addObject("success", "绑定失败,请选择年级！");
					mav.setViewName("/html/student/liebiao");
				}else if(studenterpService.banji_to_student_binding(banji_id, student.getName())==false){
					mav.addObject("menu_id_o", 1);
					mav.addObject("success", "绑定失败");
					mav.addObject("uu", studenterpService.findStudentAll());
					mav.setViewName("/html/student/liebiao");
				}
			else{
				continue;
			}
			}
			}
			mav.addObject("menu_id_o", 1);
			mav.addObject("uu", studenterpService.findStudentAll());
			mav.setViewName("/html/student/liebiao");
			return mav;
		}		

}
		