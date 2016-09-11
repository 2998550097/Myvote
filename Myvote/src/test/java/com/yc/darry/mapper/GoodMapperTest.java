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

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class GoodMapperTest {
	@Autowired
	private GoodsService goodsService;
	@Test
	public void testGetAll() {
		List<Good> good=goodsService.getAll();
		System.out.println(good);
	}
	@Test
	public void testGetByPage() {
		Pagination pagination=goodsService.getGoodByPage(new Pagination(15, 1));
		System.out.println(pagination);
	}
	
}
