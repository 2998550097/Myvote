package com.yc.darry.service;

import java.util.List;

import com.yc.darry.entity.Admin;

public interface AdminService {
	
	Admin login(Admin admin);

	List<Admin> findAdmin();

	int addAdmin(Admin admin);

	int delAdmin(int  adminId);

}
