package com.yc.darry.service.impl.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.darry.service.ArticleService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class ArticleServiceImplTest {
	@Autowired
	private ArticleService articleService;
	
	@Test
	public void testArticleCount() {
		int articleCount = articleService.articleCount();
		System.out.println(articleCount);
		assertNotNull(articleCount);
	}

}
