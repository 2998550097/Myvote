package com.yc.darry.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.darry.service.ArticleService;

@Controller
@RequestMapping("/article")
public class ArticleHandler {
	
	@Autowired
	private ArticleService articleService;
	
	@ResponseBody
	@RequestMapping(value="/articlecount",method=RequestMethod.POST)
	private int getArticleCount(){
		int articleCount = articleService.articleCount();
		System.out.println(articleCount);
		return articleCount;
	}

}
