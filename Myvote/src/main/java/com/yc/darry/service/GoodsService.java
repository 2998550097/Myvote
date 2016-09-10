package com.yc.darry.service;

import java.util.List;

import com.yc.darry.entity.Good;
import com.yc.darry.entity.Paramter;

public interface GoodsService {


	List<Good> getAll();

	Good addGoods(Good good);

	boolean addParamter(Paramter paramter);

	boolean deleteGoods(String goodid);

}
