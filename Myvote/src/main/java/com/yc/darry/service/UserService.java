package com.yc.darry.service;

import java.util.List;

import com.yc.darry.entity.User;

public interface UserService {

	boolean register(User user);

	boolean isFirstEmail(String uemail);

	boolean active(String uemail);

	User login(User user);

	boolean reset(User user);
	
	List<User> findUsers();

	boolean deleteUsers(String...userids);
	
	int getUserCount();

}
