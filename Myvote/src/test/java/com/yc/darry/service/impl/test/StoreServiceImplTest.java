package com.yc.darry.service.impl.test;

import static org.junit.Assert.*;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.darry.entity.Store;
import com.yc.darry.service.StoreService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class StoreServiceImplTest {

	@Autowired
	private StoreService storeService;
	@Test
	public void testAddStore() {
		Store  store=new Store( null, "a", "a", 0,"a", "a", "a");
		System.out.println(storeService.addStore(store));
	}

}
