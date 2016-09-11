package com.yc.darry.mapper;

import java.util.List;

import com.yc.darry.entity.Good;
import com.yc.darry.entity.Pagination;

public interface GoodsMapper {
	List<Good> getAll();
	
	Pagination getGoodByPage(Pagination page);
	
	int addGoods(Good good);

	boolean deleteGoods(Integer goodid);
}
