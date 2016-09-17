package com.yc.darry.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.darry.entity.Good;
import com.yc.darry.entity.Pagination;
import com.yc.darry.service.GoodsService;
import com.yc.darry.service.ParamterService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ParamterMapperTest {
	@Autowired
	private ParamterService paramterService;
	@Test
	public void testGetAll() {
		List<String> pcarat=paramterService.getPcaratById(100001);
		System.out.println(pcarat);
	}
}
