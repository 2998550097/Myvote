package com.yc.darry.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.darry.entity.Style;
import com.yc.darry.service.StyleService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class StyleMapperTest {
	@Autowired
	private StyleService styleService;
	@Test
	public void testGetAll() {
		List<Style> series=styleService.getStyle();
		System.out.println(series);
	}

}
