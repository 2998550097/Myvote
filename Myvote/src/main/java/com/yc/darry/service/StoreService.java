package com.yc.darry.service;

import java.util.List;

import com.yc.darry.entity.Store;

public interface StoreService {
	List<Store> findStore() ;
	
	boolean addStore(Store store);
	
	boolean updateStore(Store store);
	
	boolean deleteStore(String...storeid);

}
