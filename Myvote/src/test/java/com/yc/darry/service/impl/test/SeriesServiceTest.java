package com.yc.darry.service.impl.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.darry.entity.Series;
import com.yc.darry.service.SeriesService;
import com.yc.darry.service.impl.SeriesServiceImpl;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class SeriesServiceTest {
	
	@Autowired
	private SeriesService seriesService; 

	@Test
	public void testGetSeries() {
		List<Series> series = seriesService.getSeries();
		System.out.println(series);
		assertNotNull(series);
	}

}
