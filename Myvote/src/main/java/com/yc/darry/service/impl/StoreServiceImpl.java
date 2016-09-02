package com.yc.darry.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.yc.darry.entity.Store;
import com.yc.darry.mapper.StoreMapper;
import com.yc.darry.service.StoreService;


@Service("storeService")
public class StoreServiceImpl implements StoreService{
	@Autowired
	private StoreMapper storeMapper;
	
	@Override
	public List<Store> findStore() {
		return storeMapper.findStores();
	}

	@Override
	public Store addStore(Store store) {
		return storeMapper.addStores(store);
	}

	@Override
	public Store updateStore(Store store) {
		return storeMapper.updateStores(store);
	}

	@Override
	public Store deleteStore(Store store) {
		return storeMapper.deleteStores(store);
	}

}
