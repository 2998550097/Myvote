package com.yc.darry.mapper;

import com.yc.darry.entity.User;

public interface UserMapper {

	int add(User user);

	int getUserByEmail(String uemail);

	int updateStatus(String uemail);

	User getUserByEmailAndPwd(User user);

	int updatePwdByEmail(User user);

}
