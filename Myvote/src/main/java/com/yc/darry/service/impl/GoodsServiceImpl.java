package com.yc.darry.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yc.darry.entity.Good;
import com.yc.darry.entity.Paramter;
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
	public Good addGoods(Good good) {
		return goodsMapper.addGoods( good);
	}

	@Override
	public boolean addParamter(Paramter paramter) {
		return goodsMapper.addParamter(paramter);
	}

	@Override
	public boolean deleteGoods(String goodid) {
		return goodsMapper.deleteGoods(goodid);
		
	}

}
