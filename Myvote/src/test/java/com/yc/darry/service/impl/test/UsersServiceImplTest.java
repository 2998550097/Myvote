package com.yc.darry.service.impl.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.darry.service.UserService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UsersServiceImplTest {
	@Autowired
	private UserService userService;
	
	@Test
	public void testdeleteUsers() {
		String [] userids={"147","146"}; 
		boolean a=userService.deleteUsers(userids);
		System.out.println(a);
		assertTrue(a);
	}

}
