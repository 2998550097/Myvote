package com.yc.darry.handler;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	
	/**
	 * 店铺查找所有
	 * @param map
	 * @param out
	 */
	@RequestMapping("/store")
	public void findStore(ModelMap map,PrintWriter out){
		List<Store> stores=(List<Store>) storeService.findStore();
		if(stores.size()<=0){
			map.put("errorMsg", "店铺信息获取错误");
		}
		Gson gson=new Gson();
		out.println(gson.toJson(stores));
		out.flush();
		out.close();
	}
	
	
	/**
	 * 添加店铺
	 * @param store
	 * @param map
	 * @return
	 */
	@RequestMapping("/addStore")
	public void addStore(HttpServletRequest request,PrintWriter out){
		String param=request.getParameter("param");
		System.out.println("!!!!"+param);
		Gson gson=new Gson();
		String simagelogo=request.getParameter("simagelogo");
		Store store=gson.fromJson(param, Store.class);
		store.setSimagelogo(simagelogo);
		System.out.println("我进来了"+store);
		boolean a=storeService.addStore(store);
		if(a){
			out.println(a);
			out.flush();
			out.close();
		}
	}
	
	
	@RequestMapping(value="/updateStore",method=RequestMethod.POST)
	public void updateStore(HttpServletRequest request,PrintWriter out){
		String param=request.getParameter("param");
		System.out.println("!!!!"+param);
		Gson gson=new Gson();
		String simagelogo=request.getParameter("simagelogo");
		Store store=gson.fromJson(param, Store.class);
		store.setSimagelogo(simagelogo);
		System.out.println("我进来了"+store);
		boolean a=storeService.updateStore(store);
		if(a){
			out.println(a);
			out.flush();
			out.close();
		}
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
