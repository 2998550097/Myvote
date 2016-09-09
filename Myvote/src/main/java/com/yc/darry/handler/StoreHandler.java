package com.yc.darry.handler;

import java.io.PrintWriter;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.darry.entity.Store;
import com.yc.darry.service.StoreService;

@Controller
@RequestMapping("/store")
public class StoreHandler {
	@Autowired
	private StoreService storeService;
	
	/**
	 * 店铺查找所有
	 * @param map
	 * @param out
	 */
	@ResponseBody
	@RequestMapping("/findStore")
	public List<Store>  findStore(){
		List<Store> stores=(List<Store>) storeService.findStore();
		return stores;
	}
	
	
	/**
	 * 添加店铺
	 * @param store
	 * @param map
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/addStore")
	public boolean addStore(Store store){
		System.out.println("我进来了"+store);
		return storeService.addStore(store);
	}
	
	@ResponseBody
	@RequestMapping(value="/updateStore",method=RequestMethod.POST)
	public boolean updateStore(Store store){
		System.out.println("update我进来了"+store);
		return storeService.updateStore(store);
		
	}
	
	@RequestMapping(value="/deleteStore",method=RequestMethod.POST)
	public void deleteStore(String storeid,PrintWriter out){
		String[] storeids=storeid.split(",");
		boolean flag=storeService.deleteStore(storeids);
		out.println(flag);
		out.flush();
		out.close();
	}
}
