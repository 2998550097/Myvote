package com.yc.darry.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.darry.entity.Good;
import com.yc.darry.mapper.GoodMapper;
import com.yc.darry.service.GoodService;
@Service("goodService")
public class GoodServiceImpl implements GoodService {
	@Autowired
	private GoodMapper goodMapper;
	
	@Override
	public List<Good> getAll() {
		return goodMapper.getAll();
	}

}
