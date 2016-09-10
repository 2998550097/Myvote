package com.yc.darry.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yc.darry.entity.Good;
import com.yc.darry.entity.Pagination;
import com.yc.darry.mapper.GoodsMapper;
import com.yc.darry.service.GoodsService;


@Service("goodsService")
public class GoodsServiceImpl implements GoodsService{
	@Autowired
	private GoodsMapper goodsMapper;
	
	@Override
	public List<Good> getAll() {
		return goodsMapper.getAll();
	}

	@Override
	public Pagination getGoodByPage(Pagination page) {
		return goodsMapper.getGoodByPage(page);
	}

}
