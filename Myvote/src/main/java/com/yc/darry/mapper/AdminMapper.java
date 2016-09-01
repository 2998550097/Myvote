package com.yc.darry.mapper;

import com.yc.darry.entity.Admin;

public interface AdminMapper {
	//后台管理员登录操作
	Admin findAdmin(Admin admin);
}
