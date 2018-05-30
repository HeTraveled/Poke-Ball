package com.xmz.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.xmz.entity.Admin;



public interface ErpDao {

	/**
	 * Dao层提供各种数据库操作方法 单个参数需要加@Param("参数值")，注解，不然无法找到值，如果为Admin等，不需改变
	 * 
	 * @param admin
	 * @return
	 */

	// 注册方法
	public boolean save(Admin admin);

	// 删除用户
	public int delete(int id);

	// 更新数据
	public boolean dynamicUpdate(Admin admin);

	// 修改密码
	public boolean update(@Param("id") int id,
			@Param("password") String password);

	// 用户详情修改
	public boolean updatexq(@Param("id") int id,
			@Param("username") String username, @Param("phone") Integer phone,
			@Param("email") String email, @Param("idCard") String idCard,
			@Param("comment") String comment);

	// 用户权限修改
	public boolean chmod(@Param("id") int id, @Param("power_id") int power_id);

	// 查询所有用户
	public List<Admin> findAll();

	// 通过名称查询用户
	public Admin findByName(String username);

	// 通过id查询
	public Admin findById(int id);

	// 查询用户详情
	public List<Admin> findByHackfan(String username);
	
	
	
		
     
				
				
				
			
				
			
				
			
}
