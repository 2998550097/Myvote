package com.yc.connTest;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.darry.entity.Admin;
import com.yc.darry.service.AdminService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class AdminServiceImplTest {
	@Autowired
	private AdminService adminService;
	@Test
	public void testlogin(){
		Admin admin=adminService.login(new Admin("a","a"));
		System.out.println(admin);
		assertNotNull(admin);
	}
}
