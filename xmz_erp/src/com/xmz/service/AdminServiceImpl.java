package com.xmz.service;

import java.sql.Timestamp;
import java.util.List;
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xmz.dao.AdminDao;
import com.xmz.entity.Admin;
import com.xmz.util.MSUtil;
import com.xmz.util.Result;

@Service
public class AdminServiceImpl implements AdminService {
	// 调用adminDao方法与数据库判断返回结果
	@Resource
	private AdminDao adminDao;

	/**
	 * state=0，为用户不存在 ，state=00，密码错误 ，state=1，登录成功
	 */

	/**
	 * 登录方法
	 */
	public Result checkLogin(String username, String password) {
		Result result = new Result();
		// 调用adminDao中方法判断username是否为空，如果没有这个username会返回一个null
		Admin admin = adminDao.findByName(username);
		if (admin == null) {
			result.setState(0);
			result.setMsg("用户不存在");
			System.out.println("用户不存在");
			return result;
		} else {
			// 使用MD5加密，对接收的密码进行加密，然后在与数据库加密密码进行对比
			String md5_pwd = MSUtil.md5(password);
			if (!md5_pwd.equals(admin.getPassword())) {
				result.setState(100);
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
				adminDao.dynamicUpdate(updateAdmin);
				admin.setLtime(adminDao.findById(adminId).getLtime());
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
	/*
	 * public Result save(String username, String password, Integer phone) {
	 * Result result = new Result(); //
	 * 使用findbyname方法，判断是否有这个username，如果有返回00，注册失败，没有返回11注册成功 Admin admin =
	 * adminDao.findByName(username); // 如果用户名为空，输出可以注册，引用save方法进行插入数据 if (admin
	 * == null) { // 使用实体类进行添加 Admin ad = new Admin(); // 加密密码 String md5_pwd =
	 * MSUtil.md5(password); // 保存数据 ad.setUsername(username);
	 * ad.setPassword(md5_pwd); ad.setPhone(phone); // 把添加的数据进行保存
	 * adminDao.save(ad); // 返回state=11，提示注册成功 result.setState(1);
	 * result.setMsg("注册成功"); return result;
	 * 
	 * } else { result.setState(0); result.setMsg("用户已存在，注册失败"); return result;
	 * } }
	 */
	public boolean save(String username, String password, Integer phone) {

		boolean b = false;

		// 使用实体类进行添加
		// 加密密码

		String md5_pwd = MSUtil.md5(password);
		// 保存数据
		Admin ad = new Admin();
		ad.setUsername(username);
		ad.setPassword(md5_pwd);
		ad.setPhone(phone);
		// 把添加的数据进行保存
		if (adminDao.save(ad)) {
			b = true;
			return b;
		}

		return b;

	}

	/**
	 * 删除用户
	 */
	@Override
	public String delete(int id) {
		// 引用删除方法
		int d = adminDao.delete(id);
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
	 * 查询所有用户
	 */
	public List<Admin> findAll() {
		// 查出的值返回该实体类的集合
		List<Admin> admin1 = adminDao.findAll();
		return admin1;

	}

	/**
	 * 修改用户密码 先使用findbyid查询出来要修改的 数据 然后使用update进行更新数据
	 */
	@Override
	public Admin findById(int id) {
		// 先查出该用户的信息
		Admin admin = adminDao.findById(id);
		return admin;
	}

	@Override
	public boolean update(int id, String password) {
		boolean b = false;
		// 引用boolean类型了。对新建的密码进行传入修改，在controller中进行 了原密码的判断
		if (adminDao.update(id, password)) {
			System.out.println("修改成功");
			b = true;
			return b;
		}
		System.out.println("修改失败");
		return b;

	}

	/**
	 * 根据手机号查询，用户密码找回
	 */

	@Override
	public Admin findByPhone(String phone) {
		// 密码找回就是根据判断手机号，从新创建密码
		Admin admin = adminDao.findByPhone(phone);
		return admin;
	}

	@Override
	public boolean discover(int id, String password) {
		boolean b = true;
		// 吧id密码传入
		if (adminDao.discover(id, password)) {
			System.out.println("impl,密码修改成功");
			b = true;
			return b;
		}
		return false;
	}

	// 用户详情修改
	@Override
	public boolean updatexq(int id, Integer phone, String email, String idCard,
			String comment) {
		boolean b = true;
		// 对传入的新值进行修改写入数据，返回true
		if (adminDao.updatexq(id, phone, email, idCard, comment)) {
			b = true;
			return b;
		}
		return false;
	}

	// 用户权限修改
	@Override
	public boolean chmod(int id, int power_id) {
		boolean b = true;
		// 权限修改：目前就是把权限写成1
		if (adminDao.chmod(id, power_id)) {
			System.out.println("修改成功！");
			b = true;
			return b;
		}
		System.out.println("修改失败！");
		return false;
	}

	/**
	 * 用户详情查询
	 */
	@Override
	public List<Admin> findByHackfan(String username) {
		// 查出的值返回该实体类的集合
		List<Admin> xx = adminDao.findByHackfan(username);
		return xx;
	}

}
