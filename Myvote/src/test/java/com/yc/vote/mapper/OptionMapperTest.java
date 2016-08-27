package com.yc.vote.mapper;



import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.vote.entity.Option;
import com.yc.vote.service.OptionService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class OptionMapperTest {
	
	@Autowired
	private OptionService optionService;
	@Test
	public void testGetOptionById() {
		List<Option> option=optionService.getOptionByVsId(103);
		System.out.println(option);
	}


}
