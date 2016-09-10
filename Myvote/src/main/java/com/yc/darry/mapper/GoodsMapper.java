package com.yc.darry.mapper;

import java.util.List;

import com.yc.darry.entity.Good;
import com.yc.darry.entity.Paramter;

public interface GoodsMapper {
	List<Good> getAll();

	Good addGoods(Good good);

	boolean addParamter(Paramter paramter);

	boolean deleteGoods(String goodid);
}
