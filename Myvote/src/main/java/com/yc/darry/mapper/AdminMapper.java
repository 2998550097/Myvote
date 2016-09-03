package com.yc.darry.mapper;

import java.util.List;

import com.yc.darry.entity.Admin;

public interface AdminMapper {
	//后台管理员登录操作
	Admin login(Admin admin);
	
	List<Admin> findAdmin();
	
	int findAdminById(Admin admin);
}
