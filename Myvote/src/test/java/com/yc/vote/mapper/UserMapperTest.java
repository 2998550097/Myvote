package com.yc.vote.mapper;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.vote.entity.User;
import com.yc.vote.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UserMapperTest {
	@Autowired
	private UserService userService;
	
	@Test
	public void testLogin() {
		User user=new User("tt", "a"); 
		user=userService.login(user);
		System.out.println(user);
	}

}
