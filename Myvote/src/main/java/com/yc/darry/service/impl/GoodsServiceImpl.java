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
	
	@Override
	public int addGoods(Good good) {
		return goodsMapper.addGoods( good);
	}
	
	public boolean deleteGoods(Integer goodid) {
		return goodsMapper.deleteGoods(goodid);
		
	}

	@Override
	public int updateGoods(Good good) {
		return goodsMapper.updateGoods(good);
	}

	@Override
	public List<Good> getGoods() {
		return  goodsMapper.getGoods();
	}

	@Override
	public List<Good> search(String gname, String seriesname, String stylename) {
		return goodsMapper.search(gname,seriesname,stylename);
	}

}
