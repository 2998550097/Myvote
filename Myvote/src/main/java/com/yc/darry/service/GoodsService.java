package com.yc.darry.service;

import java.util.List;
import com.yc.darry.entity.Good;
import com.yc.darry.entity.Pagination;

public interface GoodsService {
	
	List<Good> getAll();
	
	List<Good> getGoods();
	
	Pagination getGoodByPage(Pagination page);

	int addGoods(Good good);
	
	boolean deleteGoods(Integer goodid);

	int updateGoods(Good good);

	Good getGoodsById(int goodid,String pcarat);

}
