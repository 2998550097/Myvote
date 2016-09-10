package com.yc.darry.service.impl;

import java.util.List;
<<<<<<< HEAD
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yc.darry.entity.Good;
import com.yc.darry.mapper.GoodsMapper;
import com.yc.darry.service.GoodsService;


@Service("goodsService")
public class GoodsServiceImpl implements GoodsService{
	@Autowired
	private GoodsMapper goodsMapper;
	
	@Override
	public List<Good> findAll() {
		return goodsMapper.findAll();
	}
=======

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.darry.entity.Good;
import com.yc.darry.mapper.GoodsMapper;
import com.yc.darry.service.GoodsService;
@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsMapper goodMapper;
	
	@Override
	public List<Good> getAll() {
		return goodMapper.getAll();
	}

>>>>>>> branch 'master' of ssh://git@github.com/2998550097/Myvote.git
}
