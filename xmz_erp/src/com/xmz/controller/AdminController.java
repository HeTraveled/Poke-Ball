package com.xmz.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.xmz.entity.Admin;
import com.xmz.service.AdminService;
import com.xmz.util.MSUtil;
import com.xmz.util.Result;

@Controller
@RequestMapping("/admin")
public class AdminController {

	// 调用adminService接口中的方法
	@Resource
	private AdminService adminService;

	// 调用login
	// 登录

	/*
	 * @RequestMapping(value = "/login", method = RequestMethod.POST)
	 * 
	 * @ResponseBody public Result login(HttpServletRequest request, String
	 * username, String password) {
	 * System.out.println("controller+login被调用"+username+password); //
	 * 使用AdminServiceimpl处理，（使用AdminService接口中checkLogin方法调用result工具包传入参数）
	 * Result result = adminService.checkLogin(username, password); //
	 * 存入session，，， HttpSession session = request.getSession();
	 * session.setAttribute("username", username); // 后台输出session的，要加引号，输入一个字符串
	 * // System.out.println("session"+session.getAttribute("username"));
	 * System.out.println(result.getMsg()); return result; }
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView login(HttpServletRequest request, String username,
			String password) {

		ModelAndView mav = new ModelAndView();
		// System.out.println("controller+login被调用"+username+password);
		// 使用AdminServiceimpl处理，（使用AdminService接口中checkLogin方法调用result工具包传入参数）
		Result result = adminService.checkLogin(username, password);
		// 存入session，，，session中如果已经存在应该不能登录或者提示
		HttpSession session = request.getSession();
		session.setAttribute("username", username);
		// 后台输出session的，要加引号，输入一个字符串
		// System.out.println("session"+session.getAttribute("username"));
		// 跳转之后没样式

		if (result.getState() == 0) {
			System.out.println(result.getMsg());
			mav.addObject("menu_id_o", 6);
			mav.addObject("msg", result.getMsg());
			mav.setViewName("html/user/login");
			return mav;
		} else if (result.getState() == 100) {
			System.out.println(result.getMsg());
			mav.addObject("menu_id_o", 6);
			mav.addObject("msg", result.getMsg());
			mav.setViewName("html/user/login");
			return mav;
		} else {
			System.out.println(result.getMsg());
			mav.addObject("menu_id_o", 6);
			mav.addObject("msg", result.getMsg());
			mav.setViewName("html/index/index");
			return mav;
		}

	}

	// 增加用户

	@RequestMapping(value = "/login_add", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView save(String username, String password,
			String password2, Integer phone) {
		List<Admin> ad = adminService.findByHackfan(username);
		ModelAndView mav = new ModelAndView();
		// 判断用户名是否为英文数字，，
		String regEx = "^[a-zA-Z][a-zA-Z0-9_]{4,15}$";
		Pattern pattern = Pattern.compile(regEx);
		Matcher matcher = pattern.matcher(username);
		boolean rs1 = matcher.matches();
		// 判断密码是否合法，以字母开头，长度在6~18之间，只能包含字符、数字和下划线。
		String regEx1 = "^[a-zA-Z]\\w{5,17}$";
		Pattern pattern1 = Pattern.compile(regEx1);
		Matcher matcher1 = pattern1.matcher(password);
		boolean rs2 = matcher1.matches();
		// 先判断密码---重定向到注册页面，同时给页面一个变量值。
		// 加个密码为空的判段
		if (username.equals("")) {
			System.out.println("用户名不能为空");
			mav.addObject("menu_id_o", 6);
			mav.addObject("msg", "用户不能为空 ！");
			mav.setViewName("/html/user/join");
			return mav;
		} else if (ad != null) {
			System.out.println("用户名已存在");
			mav.addObject("menu_id_o", 6);
			mav.addObject("msg", "用户名已存在！");
			mav.setViewName("/html/user/join");
			return mav;
		} else if (rs1 == false) {
			System.out.println("用户名为英文数字组合");
			mav.addObject("menu_id_o", 6);
			mav.addObject("msg", "用户名必须为英文数字组合 ！");
			mav.setViewName("/html/user/join");
			return mav;
		} else if (password.equals("") & password2.equals("")) {
			System.out.println("密码不能为空");
			mav.addObject("menu_id_o", 6);
			mav.addObject("msg", "密码不能为空 ！");
			mav.setViewName("/html/user/join");
			return mav;
		} else if (rs2 == false) {
			System.out.println("以字母开头，长度在6~18之间，只能包含字符、数字和下划线。");
			mav.addObject("menu_id_o", 6);
			mav.addObject("msg", "密码需以字母开头，长度在6~18之间，只能包含字符、数字和下划线!");
			mav.setViewName("/html/user/join");
			return mav;
		} else if (!password.equals(password2)) {
			mav.addObject("menu_id_o", 6);
			mav.addObject("msg", "密码不一致 ！");
			mav.setViewName("/html/user/join");
			return mav;
		} else if (username.equals(password) & username.equals(password2)) {
			System.out.println("用户名不能与密码相同");
			mav.addObject("menu_id_o", 6);
			mav.addObject("msg", "用户名不能与密码相同 ！");
			mav.setViewName("/html/user/join");
			return mav;
		}
		System.out.println("密码匹配正确，开始注册！");
		adminService.save(username, password, phone);
		mav.addObject("menu_id_o", 6);
		mav.setViewName("/jsp/Admin/success");
		return mav;

	}

	/*
	 * // 增加用户
	 * 
	 * @RequestMapping(value = "/login_add", method = RequestMethod.POST)
	 * 
	 * @ResponseBody public Result save(String username, String password, String
	 * password2, Integer phone) { List<Admin> ad =
	 * adminService.findByHackfan(username); //判断用户名是否为英文数字，， String regEx =
	 * "^[a-zA-Z][a-zA-Z0-9_]{4,15}$"; Pattern pattern = Pattern.compile(regEx);
	 * Matcher matcher = pattern.matcher(username); boolean rs1 =
	 * matcher.matches(); //判断密码是否合法，以字母开头，长度在6~18之间，只能包含字符、数字和下划线。 String
	 * regEx1 = "^[a-zA-Z]\\w{5,17}$"; Pattern pattern1 =
	 * Pattern.compile(regEx1); Matcher matcher1 = pattern1.matcher(password);
	 * boolean rs2 = matcher1.matches();
	 * 
	 * Result rs = new Result(); //添加个用户名存在的判断
	 * 
	 * if(username.equals("")){
	 * 
	 * rs.setMsg("用户名不能为空"); rs.setState(100); return rs; }else if(ad==null){
	 * rs.setMsg("用户名已存在"); rs.setState(001); return rs; }else if(rs1==false){
	 * rs.setMsg("用户名必须以字母开头，允许5-16字节，允许字母数字下划线"); rs.setState(002); return rs;
	 * }else if(password.equals("")&password2.equals("")){ rs.setMsg("密码不能为空");
	 * rs.setState(003); return rs; }else if(!password.equals(password2)){
	 * rs.setMsg("密码输入不同"); rs.setState(004); return rs; }else if(rs2==false){
	 * rs.setMsg("密码必须以字母开头，长度在6~18之间，只能包含字符、数字和下划线"); rs.setState(005); return
	 * rs; }else if(username.equals(password)&username.equals(password2)){
	 * rs.setMsg("用户名不能和密码相同"); rs.setState(006); return rs; }
	 * adminService.save(username, password, phone); rs.setMsg("注册成功！");
	 * rs.setState(111); return rs; }
	 */

	// 删除
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	@ResponseBody
	// @PathVariable("id")可以去除值取不到的情况，，，
	public ModelAndView delete(HttpServletRequest request,
			@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		if (session.getAttribute("username").equals("admin")) {
			adminService.delete(id);

			// 删除完重新查询输出，users随意定义，吧查出的值adminService.findAll()给users
			mav.addObject("menu_id_o", 6);
			mav.addObject("users", adminService.findAll());
			// 跳转页面
			mav.setViewName("/html/user/userlist");
			return mav;
		} else {
			mav.addObject("menu_id_o", 6);
			mav.addObject("userserr", "您不是管理员用户，没有权限操作！如要删除请联系管理员！！！");
			mav.addObject("users", adminService.findAll());
			// 跳转页面
			mav.setViewName("/html/user/userlist");
			return mav;
		}

	}

	// 用户密码修改
	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	@ResponseBody
	// 需要对要传入的值进行一个注解@PathVariable("要传的值")
	public ModelAndView update(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView();
		// 通过id对某条信息进行查询，然后用user.xx进行页面取值，最后跳转到修改页面
		mav.addObject("menu_id_o", 6);
		mav.addObject("user", adminService.findById(id));
		mav.setViewName("/jsp/Admin/update");
		return mav;
	}

	@RequestMapping(value = "/useUpdate", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView update2(int id, String username, String password,
			String password1, String password2) {
		// System.out.println("controller修改密码被调用");
		// 优先对传入的原密码进行加密
		String md5_pwd = MSUtil.md5(password);
		ModelAndView mav = new ModelAndView();
		// 通过findByid的方法查出该条信息
		Admin admin = new Admin();
		admin = adminService.findById(id);
		// 对加密 的密码进行匹配判断，如果数据库里面的密码与刚刚加密的原密码不一样就重新跳转修改页面并提示原密码错误
		if (!md5_pwd.equals(admin.getPassword())) {
			System.out.println("原密码错误");
			mav.addObject("user", admin);
			Result r = new Result();
			r.setMsg("原密码错误");
			mav.addObject("menu_id_o", 6);
			mav.addObject("result", r);
			mav.setViewName("/jsp/Admin/update");
			return mav;
		} else {
			System.out.println("原密码正确");
			// 正确。。。。。。。
			String md5_pwd1 = MSUtil.md5(password1);
			String md5_pwd2 = MSUtil.md5(password2);
			if (md5_pwd1.equals(md5_pwd2)) {
				adminService.update(id, md5_pwd2);
				System.out.println("密码修改成功" + md5_pwd2);
				mav.addObject("menu_id_o", 6);
				mav.setViewName("/jsp/Admin/successUpdate");
				return mav;
			} else {
				mav.addObject("user", admin);
				Result r = new Result();
				r.setMsg("两次密码输入不一致");
				mav.addObject("menu_id_o", 6);
				mav.addObject("result", r);
				mav.setViewName("/jsp/Admin/update");
				return mav;
			}
		}
	}

	// 用户密码找回
	@RequestMapping(value = "/discover", method = RequestMethod.POST)
	@ResponseBody
	public Result Discover(String phone, String password1, String password2) {
		Result r = new Result();
		// 判断通过身份证能不能查到这条信息
		if (adminService.findByPhone(phone) != null) {
			// 判断密码是否合法
			String regEx1 = "^[a-zA-Z]\\w{5,17}$";
			Pattern pattern1 = Pattern.compile(regEx1);
			Matcher matcher1 = pattern1.matcher(password1);
			boolean pw = matcher1.matches();

			if (pw == true) {
				String md5_pwd1 = MSUtil.md5(password1);
				String md5_pwd2 = MSUtil.md5(password2);
				// 判断密码是否相同
				if (md5_pwd1.equals(md5_pwd2)) {
					Admin admin = adminService.findByPhone(phone);
					adminService.discover(admin.getId(), md5_pwd1);
					System.out.println("密码修改成功");
					r.setState(1);
					r.setMsg("您的密码已经修改为:" + password1);
					return r;
				} else {
					r.setState(0);
					r.setMsg("两次密码输入不同，请重新输入！");
					return r;
				}
			} else {
				r.setState(200);
				r.setMsg("密码必须以字母开头，长度在6~18之间，只能包含字符、数字和下划线！");
				return r;
			}
		} else {
			r.setState(100);
			r.setMsg("手机号不正确，请重新输入！");
			System.out.println("手机号输入有误，找不到数据！");
			return r;
		}

	}

	// 用户详情修改
	@RequestMapping(value = "/PeopleUpdateSuccess", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView PeopleUpdateSuccess(int id, Integer phone,
			String email, String idCard, String comment) {

		// System.out.println("详情修改222已进入,各项数据接收情况" + id + phone + email +
		// idCard + comment);

		ModelAndView mav = new ModelAndView();
		adminService.updatexq(id, phone, email, idCard, comment);
		// 修改完成后，通过id查询输出
		Admin ad = adminService.findById(id);
		// 把查出的数据放到list集合中，然后跳转详情页面进行输出
		List<Admin> ap = new ArrayList<Admin>();
		ap.add(ad);
		mav.addObject("menu_id_o", 6);
		mav.addObject("userHackfan", ap);
		mav.addObject("success", "修改成功！");
		mav.setViewName("/html/user/userxiangqing");
		return mav;
	}

	// 用户权限修改1
	@RequestMapping(value = "/chmod", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView chmod() {
		ModelAndView mav = new ModelAndView();
		// 判断登录用户，如果为Admin用户，则进入修改页面，如果不是Admin用户则提示没有权限
		mav.addObject("menu_id_o", 6);
		mav.addObject("result", adminService.findAll());
		mav.setViewName("/html/user/quanxianchange");
		return mav;

	}

	// 用户权限修改成功2
	@RequestMapping(value = "/ChmodSuccess", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView chmodsuccess(Integer id, Integer power_id, String chmod) {
		ModelAndView mav = new ModelAndView();
		// 方法中id等值有的需要类型转换.先判断页面chmod的值是什么，在根据值做出相应的回应，后期有了更多角色可直接后面介入
		// 判断选的值是否是会员。如果是会员，，，power_id为1，默认为0，管理员为2。。。。先判断权限id是什么，在判断选的角色名称
		/*
		 * if (chmod.equals("member")) { // 判断权限是否为0,0就是默认权限，如果为0 ，改为1，会员 if
		 * (power_id == 0) { adminService.chmod(id, power_id);
		 * mav.setViewName("/successUpdate"); return mav; } else {
		 * System.out.println("您已成功变身会员！"); mav.setViewName("/err"); return mav;
		 * } } else { //加个写入普通会员的方法...权限降低 if(chmod.equals("consumer")){
		 * 
		 * return mav; } //下拉菜单值为空 //一般不会执行 mav.setViewName("/err"); return mav;
		 * }
		 */System.out.println("quanxian修改成功进入");
		if (power_id == 0) {
			// 判断是否为0 ，如果为0 ，在根据选择的角色名称。提为相应权限
			if (chmod.equals("member")) {
				power_id = 1;
				adminService.chmod(id, power_id);
				mav.addObject("menu_id_o", 6);
				mav.addObject("power", "修改成功,成为会员！");
				mav.setViewName("/html/user/userxiangqing");
				return mav;
			} else {
				chmod.equals("consumer");
				power_id = 0;
				System.out.println("您是普通用户，不需要修改！");
				mav.addObject("menu_id_o", 6);
				mav.addObject("power", "您是普通用户，不需要修改！");
				mav.setViewName("/html/user/quanxianchange");
				return mav;
			}
		} else {
			if (power_id == 1) {
				if (chmod.equals("member")) {
					power_id = 0;
					System.out.println("您已经是会员用户，修改失败！");
					mav.addObject("menu_id_o", 6);
					mav.addObject("power", "您已经是会员用户，修改失败！");
					mav.setViewName("/html/user/quanxianchange");
					return mav;
				} else {
					if (chmod.equals("consumer")) {
						power_id = 0;
						adminService.chmod(id, power_id);
						System.out.println("权限降级成功！");
						mav.addObject("power", "权限降级成功！");
						mav.addObject("menu_id_o", 6);
						mav.setViewName("/html/user/userxiangqing");
						return mav;
					}
				}
			} else {
				System.out.println("admin不允许修改");
				mav.addObject("menu_id_o", 6);
				mav.addObject("power", "没有权限,用户修改失败 ！");
				mav.setViewName("/html/user/quanxianchange");
				return mav;
			}
		}
		return mav;
	}

	// 查看
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView list(Admin admin) {
		ModelAndView mav = new ModelAndView();
		// 要穿的值在adminService.findAll(),users为页面获取值（users.--）
		mav.addObject("users", adminService.findAll());
		mav.setViewName("/html/user/userlist");
		mav.addObject("menu_id_o", 6);
		return mav;
	}

	// 用户详情查询
	@RequestMapping(value = "/Hackfan/{username}", method = RequestMethod.GET)
	@ResponseBody
	public ModelAndView findByName(HttpServletRequest request,
			@PathVariable("username") String username) {
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		// 引用根据用户名详情查询的方法
		List<Admin> admin = adminService.findByHackfan(username);
		mav.addObject("LoginName", session.getAttribute("username"));
		mav.addObject("userHackfan", admin);
		// System.out.println("查询结果：" + adminService.findByHackfan(username) +
		// ":"+ username);
		mav.addObject("menu_id_o", 6);
		mav.setViewName("/html/user/userxiangqing");
		return mav;
	}

}
