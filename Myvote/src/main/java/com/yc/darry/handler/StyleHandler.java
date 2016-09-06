package com.yc.darry.handler;

import java.io.PrintWriter;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.darry.entity.Style;
import com.yc.darry.service.StyleService;

@Controller
@RequestMapping("/style")
public class StyleHandler {
	@Autowired
	private StyleService styleService;
	
	@RequestMapping("/getname")
	public void getSeriesName(PrintWriter out){
		List<Style> style=styleService.getStyle();
		System.out.println("getname进来了"+style);
		Gson gson=new Gson();
		out.println(gson.toJson(style));
		out.flush();
		out.close();
	}
}
