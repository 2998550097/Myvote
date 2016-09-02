package com.yc.darry.handler;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.yc.darry.entity.Store;
import com.yc.darry.service.StoreService;

@Controller
public class StoreHandler {
	@Autowired
	private StoreService storeService;
	
	@RequestMapping("/store")
	public void findStore(ModelMap map,PrintWriter out){
		List<Store> stores=(List<Store>) storeService.findStore();
		System.out.println(stores);
		if(stores.size()<=0){
			map.put("errorMsg", "店铺信息获取错误");
		}
		Gson gson=new Gson();
		out.println(gson.toJson(stores));
		out.flush();
		out.close();
	}
	@RequestMapping(value="/addStore",method=RequestMethod.POST)
	public String addStore(Store store,ModelMap map){
		System.out.println("store 显示..."+store);
		store=storeService.addStore(store);
		if(store==null){
			map.put("errorMsg", "店铺信息获取错误");
			return "redirect:backstage/back/manager/index.html";
		}
		return "redirect:backstage/back/manager/store.html";
	}
	@RequestMapping(value="/updateStore",method=RequestMethod.POST)
	public String updateStore(Store store,ModelMap map){
		System.out.println("store 显示..."+store);
		store=storeService.updateStore(store);
		if(store==null){
			map.put("errorMsg", "店铺信息获取错误");
			return "redirect:backstage/back/manager/index.html";
		}
		return "redirect:backstage/back/manager/store.html";
	}
	@RequestMapping(value="/deleteStore",method=RequestMethod.PUT)
	public String deleteStore(Store store,ModelMap map){
		System.out.println("store 显示..."+store);
		store=storeService.deleteStore(store);
		if(store==null){
			map.put("errorMsg", "店铺信息获取错误");
			return "redirect:backstage/back/manager/index.html";
		}
		return "redirect:backstage/back/manager/store.html";
	}
}
