package com.yc.darry.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.darry.entity.Admin;
import com.yc.darry.entity.Good;
import com.yc.darry.handler.CollService;
import com.yc.darry.mapper.AdminMapper;
import com.yc.darry.mapper.CollMapper;
import com.yc.darry.service.AdminService;


@Service("collService")
public class CollServiceImpl implements CollService{
	@Autowired
	private CollMapper collMapper;

	@Override
	public List<Good> findColl() {
		return collMapper.findColl();
	}
	
}
