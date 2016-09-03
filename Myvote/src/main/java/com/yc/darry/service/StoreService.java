package com.yc.darry.service;

import java.util.List;

import com.yc.darry.entity.Store;

public interface StoreService {
	List<Store> findStore() ;
	int addStore(Store store);
	Store updateStore(Store store);
	Store deleteStore(Store store);
	

}
