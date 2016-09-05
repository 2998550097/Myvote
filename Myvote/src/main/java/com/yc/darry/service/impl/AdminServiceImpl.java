package com.yc.darry.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.darry.entity.Admin;
import com.yc.darry.mapper.AdminMapper;
import com.yc.darry.service.AdminService;


@Service("adminService")
public class AdminServiceImpl implements AdminService{
	@Autowired
	private AdminMapper adminMapper;
	@Override
	public Admin login(Admin admin) {
		return adminMapper.login(admin);
	}
	@Override
	public List<Admin> findAdmin() {
		return adminMapper.findAdmin();
	}
	@Override
	public int addAdmin(Admin admin) {
		return adminMapper.addAdmin(admin);
	}
	@Override
	public int delAdmin(int adminId) {
		return adminMapper.delAdmin(adminId);
	}

}
