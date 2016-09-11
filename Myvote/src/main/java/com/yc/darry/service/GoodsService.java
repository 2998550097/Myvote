package com.yc.darry.service;

import java.util.List;
import com.yc.darry.entity.Good;

public interface GoodsService {
	
	List<Good> getAll();

	int addGoods(Good good);
	
	boolean deleteGoods(Integer goodid);

	Good updateGoods(Good good);

}
