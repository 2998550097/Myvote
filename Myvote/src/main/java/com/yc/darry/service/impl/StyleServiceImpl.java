package com.yc.darry.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.darry.entity.Style;
import com.yc.darry.mapper.StyleMapper;
import com.yc.darry.service.StyleService;

@Service("styleService")
public class StyleServiceImpl implements StyleService {
	@Autowired
	private StyleMapper styleMapper;
	
	public List<Style> getStyle() {
		return styleMapper.getAll();
	}

	@Override
	public boolean addStyle(String stylename) {
		return styleMapper.addStyle(stylename);
	}

	@Override
	public boolean deleteStyle(String... styleids) {
		return styleMapper.deleteStyle(styleids);
	}

}
