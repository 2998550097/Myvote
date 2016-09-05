package com.yc.darry.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.darry.entity.User;
import com.yc.darry.mapper.UserMapper;
import com.yc.darry.service.UserService;
import com.yc.darry.util.ChineseName;
import com.yc.darry.util.Encrypt;

@Service("userService")
public class UserServiceImpl implements UserService {
	private ChineseName name=new ChineseName();
	@Autowired
	private UserMapper userMapper;
	
	public boolean register(User user) {
		user.setUpassword(Encrypt.md5(user.getUpassword()));
		user.setUname(name.getName());
		try{
			return userMapper.add(user)>0;
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean isFirstEmail(String uemail) {
		try {
			return userMapper.getUserByEmail(uemail)==0;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean active(String uemail) {
		try {
			return userMapper.updateStatus(uemail)>0;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public User login(User user) {
		user.setUpassword(Encrypt.md5(user.getUpassword()));
		try {
			return userMapper.getUserByEmailAndPwd(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean reset(User user) {
		user.setUpassword(Encrypt.md5(user.getUpassword()));
		try {
			return userMapper.updatePwdByEmail(user)>0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}