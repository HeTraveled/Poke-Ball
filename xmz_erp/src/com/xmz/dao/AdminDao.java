package com.xmz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xmz.entity.Admin;

public interface AdminDao {
	// 通过名称查询用户
	public Admin findByName(String username);

	// 更新数据(主要用于登录之后修改最后一次登录时间，其他的没有发现有什么用)
	public boolean dynamicUpdate(Admin admin);

	// 通过id查询
	public Admin findById(int id);

	// 增加用户
	public boolean save(Admin admin);

	// 删除用户
	public int delete(int id);

	// 查询所有用户
	public List<Admin> findAll();

	// 修改密码
	public boolean update(@Param("id") int id,
			@Param("password") String password);

	// 通手机号查询，密码找回
	public Admin findByPhone(String phone);

	// 密码找回方法
	public boolean discover(@Param("id") int id,
			@Param("password") String password);

	// 用户详情修改
	public boolean updatexq(@Param("id") int id, @Param("phone") Integer phone,
			@Param("email") String email, @Param("idCard") String idCard,
			@Param("comment") String comment);

	// 用户权限修改
	public boolean chmod(@Param("id") int id, @Param("power_id") int power_id);

	// 查询用户详情
	public List<Admin> findByHackfan(String username);
}
