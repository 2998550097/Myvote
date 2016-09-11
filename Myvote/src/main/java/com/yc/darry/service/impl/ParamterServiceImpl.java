package com.yc.darry.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yc.darry.entity.Paramter;
import com.yc.darry.mapper.ParamterMapper;
import com.yc.darry.service.ParamterService;


@Service("paramterService")
public class ParamterServiceImpl implements ParamterService{
	@Autowired
	private ParamterMapper paramterMapper;

	@Override
	public boolean addParamter(Paramter paramter) {
		return paramterMapper.addParamter(paramter);
		
	}

	@Override
	public boolean updateParamter(Paramter paramter) {
		return paramterMapper.updateParamter(paramter);
		
	}

	@Override
	public boolean deleteParamter(Integer goodid) {
		return paramterMapper.deleteParamter(goodid);
		
	}

	
}
