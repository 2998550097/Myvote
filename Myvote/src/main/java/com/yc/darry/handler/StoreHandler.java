package com.yc.darry.handler;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
	
	
/*	@ResponseBody
	@RequestMapping("/addStore")
	public boolean addStore(Store store){
	}*/
	
	@ResponseBody
	@RequestMapping("/addStore"	)
	public boolean addStore(@RequestParam(value = "imagelogo", required = false) MultipartFile[] files, HttpServletRequest request, Store store) throws IllegalStateException, IOException {
		System.out.println("===>" + store);
		String uploadPath= "";
        String path = request.getServletContext().getRealPath("/") + "/upload";
        for (int i = 0; i < files.length; i++) {
			String fileName = files[i].getOriginalFilename();
			System.out.println(path);
			File targetFile = new File(path, fileName);
			File testFile = new File("src/main/webapp/upload", fileName);
			if (!targetFile.exists()) {
				targetFile.mkdirs();
				testFile.mkdirs();
			}
			try {
				files[i].transferTo(targetFile);
				files[i].transferTo(testFile);
			} catch (Exception e) {
				e.printStackTrace();
			}
			uploadPath += "/MyDarry/upload/" + fileName + ",";
		}
        store.setSimagelogo(uploadPath.substring(0, uploadPath.length() - 1));
		System.out.println("===>" + store);
       
       return  storeService.addStore(store);
	}
	
/*	@ResponseBody
	@RequestMapping(value="/updateStore",method=RequestMethod.POST)
	public boolean updateStore(Store store){
		System.out.println("update我进来了"+store);
		return storeService.updateStore(store);
		
	}*/
	
	@ResponseBody
	@RequestMapping("/updateStore")
	public boolean updateStore(@RequestParam(value = "imagelogo", required = false) MultipartFile[] files, HttpServletRequest request, Store store) throws IllegalStateException, IOException {
		String storei=request.getParameter("storeid");
		int storeid=Integer.parseInt(storei);
		store.setStoreid(storeid);
		System.out.println("===>" + store);
		String uploadPath= "";
        String path = request.getServletContext().getRealPath("/") + "/upload";
        for (int i = 0; i < files.length; i++) {
			String fileName = files[i].getOriginalFilename();
			System.out.println(path);
			File targetFile = new File(path, fileName);
			File testFile = new File("src/main/webapp/upload", fileName);
			if (!targetFile.exists()) {
				targetFile.mkdirs();
				testFile.mkdirs();
			}
			try {
				files[i].transferTo(targetFile);
				files[i].transferTo(testFile);
			} catch (Exception e) {
				e.printStackTrace();
			}
			uploadPath += "/MyDarry/upload/" + fileName + ",";
		}
        store.setSimagelogo(uploadPath.substring(0, uploadPath.length() - 1));
		System.out.println("===>" + store);
       
       return  storeService.updateStore(store);
		
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
