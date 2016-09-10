package com.yc.darry.service;

import java.util.List;

import com.yc.darry.entity.Good;
import com.yc.darry.entity.Pagination;

public interface GoodsService {

	List<Good> getAll();
	
	Pagination getGoodByPage(Pagination page);
}
