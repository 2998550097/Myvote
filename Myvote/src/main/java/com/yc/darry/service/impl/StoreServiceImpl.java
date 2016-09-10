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
	public boolean addStore(Store store) {
		try {
			storeMapper.addStores(store);
			
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean updateStore(Store store) {
		try {
			storeMapper.updateStore(store);
		} catch (Exception e) {
			return false;
		}
		return true;
	}


	@Override
	public  boolean deleteStore(String...storeid) {
		try {
			storeMapper.deleteStore(storeid);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

}
