package com.xmz.service;

import java.util.List;

import com.xmz.entity.Admin;

import com.xmz.entity.Grade;

import com.xmz.entity.Student;
import com.xmz.util.Result;

/**
 * 存储操作方法的各种接口
 */

public interface ErpService {
	// 登录
	public Result checkLogin(String username, String password);

	// 增加用户
	public Result save(String username, String password, Integer phone);

	// 查看所有用户
	public List<Admin> findAll();

	// 查看单个用户详情
	public List<Admin> findByHackfan(String username);

	// 删除用户
	public String delete(int id);

	// 通过id查询
	public Admin findById(int id);

	// 通过用户名查询
	public Admin findByName(String username);

	// 用户密码修改
	public boolean update(int id, String password);

	// 用户详情修改
	public boolean updatexq(int id, String username, Integer phone, String email,
			String idCard, String comment);

	// 用户权限修改
	public boolean chmod(int id, int power_id);
	
	
	
	
	
		
		
		
		     
				
			
				
				
			
	
}
