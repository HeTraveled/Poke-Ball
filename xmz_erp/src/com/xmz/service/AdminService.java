package com.xmz.service;

import java.util.List;

import com.xmz.entity.Admin;
import com.xmz.util.Result;

public interface AdminService {
	// 登录
	public Result checkLogin(String username, String password);

	/*
	 * // 增加用户 public Result save(String username, String password, Integer
	 * phone);
	 */
	// 增加用户
	public boolean save(String username, String password, Integer phone);

	// 删除用户
	public String delete(int id);

	// 查看所有用户
	public List<Admin> findAll();

	// 通过id查询用户
	public Admin findById(int id);

	// 用户密码修改
	public boolean update(int id, String password);

	// 通过手机号查询
	public Admin findByPhone(String phone);

	// 密码找回，就是新加入密码
	public boolean discover(int id, String password);

	// 用户详情修改
	public boolean updatexq(int id, Integer phone, String email, String idCard,
			String comment);

	// 用户权限修改
	public boolean chmod(int id, int power_id);

	// 查看单个用户详情
	public List<Admin> findByHackfan(String username);
}
