package com.yc.darry.mapper;

import java.util.List;

import com.yc.darry.entity.Good;
import com.yc.darry.entity.Pagination;

public interface GoodsMapper {
	List<Good> getAll();//前台取值
	
	List<Good> getGoods();//后端取值
	
	Pagination getGoodByPage(Pagination page);
	
	int addGoods(Good good);
	
	int updateGoods(Good good);

	boolean deleteGoods(Integer goodid);
}
