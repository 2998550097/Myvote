package com.yc.darry.mapper;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.darry.service.StoreService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class StoreMapperTest {
	@Autowired
	private StoreService storeService;
	@Test
	public void testDel() {
		boolean flag=storeService.deleteStore("11","12");
		System.out.println(flag);
	}

}
