package com.yc.darry.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.darry.mapper.ArticleMapper;
import com.yc.darry.service.ArticleService;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService{
	
	@Autowired
	private ArticleMapper articleMapper;

	@Override
	public int articleCount() {
		return articleMapper.articleCount();
	}

}
