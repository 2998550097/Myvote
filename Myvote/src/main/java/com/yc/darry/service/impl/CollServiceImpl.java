package com.yc.darry.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yc.darry.entity.Collections;
import com.yc.darry.mapper.CollMapper;
import com.yc.darry.service.CollService;


@Service("collService")
public class CollServiceImpl implements CollService{
	@Autowired
	private CollMapper collMapper;

	@Override
	public List<Collections> findColl() {
		return collMapper.findColl();
	}

	@Override
	public List<Collections> search(String gname,String seriesname,String stylename) {
		return collMapper.search( gname,seriesname,stylename);
	}
}
