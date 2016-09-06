package com.yc.darry.handler;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.darry.entity.Good;

@Controller
@RequestMapping("/Coll")
public class CollHandler {
	@Autowired
	private CollService collService;
	
	@RequestMapping("/findColl")//查找收藏商品 （收藏表&商品表）
	public void  findColl(PrintWriter out){
		
		
		Gson gson=new Gson();
		
		String a=gson.toJson(collService.findColl());
		System.out.println(a);
		out.print(a);
		out.flush();
		out.close();
	}
}
