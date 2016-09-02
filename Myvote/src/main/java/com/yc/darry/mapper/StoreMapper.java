package com.yc.darry.mapper;

import java.util.List;

import com.yc.darry.entity.Store;

public interface StoreMapper {
	//后台店铺查询操作
	List<Store> findStores();
	Store addStores(Store store);
	Store updateStores(Store store);
	Store deleteStores(Store store);
	
}