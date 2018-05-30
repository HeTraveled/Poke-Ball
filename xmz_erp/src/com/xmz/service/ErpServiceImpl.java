package com.xmz.service;

import java.sql.Timestamp;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.xmz.dao.ErpDao;
import com.xmz.entity.Admin;

import com.xmz.entity.Grade;

import com.xmz.entity.Student;
import com.xmz.util.MSUtil;
import com.xmz.util.Result;

/**
 * erpService接口的实现方法
 */

@Service
public class ErpServiceImpl implements ErpService {

	// 调用ErpDao方法与数据库判断返回结果
	@Resource
	private ErpDao erpDao;

	/**
	 * state=0，为用户不存在 ，state=00，密码错误 ，state=1，登录成功
	 */

	/**
	 * 登录方法
	 */
	public Result checkLogin(String username, String password) {
		Result result = new Result();
		// 调用erpDao中方法判断username是否为空，如果没有这个username会返回一个null
		Admin admin = erpDao.findByName(username);
		if (admin == null) {
			result.setState(0);
			result.setMsg("用户不存在");
			System.out.println("用户不存在");
			return result;
		} else {
			// 使用MD5加密，对接收的密码进行加密，然后在与数据库加密密码进行对比
			String md5_pwd = MSUtil.md5(password);
			if (!md5_pwd.equals(admin.getPassword())) {
				result.setState(00);
				result.setMsg("密码错误，登录失败");
				System.out.println("密码错误，登录失败");
				return result;
			} else {
				// 修改最后登陆时间开始
				Admin updateAdmin = new Admin();
				int adminId = admin.getId();
				updateAdmin.setId(adminId);
				Timestamp now = new Timestamp(System.currentTimeMillis());
				updateAdmin.setLtime(now);
				erpDao.dynamicUpdate(updateAdmin);
				admin.setLtime(erpDao.findById(adminId).getLtime());
				// 修改最后登陆时间结束
				result.setState(1);
				result.setMsg("登录成功");
				System.out.println("登录成功");
				return result;
			}
		}
	}

	/**
	 * 注册方法
	 */
	public Result save(String username, String password, Integer phone) {
		Result result = new Result();
		// 使用findbyname方法，判断是否有这个username，如果有返回00，注册失败，没有返回11注册成功
		Admin admin = erpDao.findByName(username);
		// 如果用户名为空，输出可以注册，引用save方法进行插入数据
		if (admin == null) {
			// 使用实体类进行添加
			Admin ad = new Admin();
			// 加密密码
			String md5_pwd = MSUtil.md5(password);
			// 保存数据
			ad.setUsername(username);
			ad.setPassword(md5_pwd);
			ad.setPhone(phone);
			// 把添加的数据进行保存
			/*
			 * SqlSession session = sqlSessionFactory.openSession(); try {
			 * IUserOperation
			 * userOperation=session.getMapper(IUserOperation.class);
			 * userOperation.addUser(user); session.commit();
			 * System.out.println("当前增加的用户 id为:"+user.getId()); } finally {
			 * session.close(); }
			 */
			erpDao.save(ad);
			// 返回state=11，提示注册成功
			result.setState(11);
			result.setMsg("注册成功");
			return result;

		} else {
			result.setState(00);
			result.setMsg("用户已存在，注册失败");
			return result;
		}
	}

	/**
	 * 查询所有用户
	 */
	public List<Admin> findAll() {
		List<Admin> admin1 = erpDao.findAll();
		return admin1;

	}

	/**
	 * 用户详情查询
	 */
	@Override
	public List<Admin> findByHackfan(String username) {
		List<Admin> xx = erpDao.findByHackfan(username);
		return xx;
	}

	/**
	 * 删除用户
	 */
	@Override
	public String delete(int id) {
		int d = erpDao.delete(id);
		String message = "";
		if (d > 0) {
			message = "删除成功";
		} else {
			message = "删除失败";
		}
		return message;
	}

	/**
	 * 修改用户密码 先使用findbyid查询出来要修改的 数据 然后使用update进行更新数据
	 */
	@Override
	public Admin findById(int id) {
		Admin admin = erpDao.findById(id);
		return admin;
	}

	@Override
	public boolean update(int id, String password) {
		boolean b = false;
		if (erpDao.update(id, password)) {
			System.out.println("修改成功");
			b = true;
			return b;
		}
		System.out.println("修改失败");
		return b;

	}

	/**
	 * 用户详情修改
	 */
	// 根据用户名查询用户详情
	@Override
	public Admin findByName(String username) {
		Admin adminxq = erpDao.findByName(username);
		return adminxq;
	}

	// 用户详情修改
	@Override
	public boolean updatexq(int id, String username, Integer phone, String email,
			String idCard, String comment) {
		boolean b = true;
		if (erpDao.updatexq(id, username, phone, email, idCard, comment)) {
			b = true;
			return b;
		}
		return false;
	}

	// 用户权限修改
	@Override
	public boolean chmod(int id, int power_id) {
		boolean b = true;
			if(erpDao.chmod(id, power_id)){
				System.out.println("恭喜，您已成为会员！");
				b = true;
				return b;
			}
			System.out.println("您已经是会员了修改失败！");
			return false;
		}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	
	
	
}
		


