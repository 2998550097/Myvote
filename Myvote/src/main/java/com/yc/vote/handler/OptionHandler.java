package com.yc.vote.handler;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.vote.entity.Option;
import com.yc.vote.service.OptionService;


@Controller
@RequestMapping("/option")
public class OptionHandler {
	@Autowired
	private OptionService optionService;
	
	@RequestMapping("/view")
	public void showOption(int vsId,PrintWriter out){
			System.out.println("hah我进来了...");
			List<Option> options=optionService.getOptionByVsId(vsId);
			Gson gson=new Gson();
			out.println(gson.toJson(options));
			out.flush();
			out.close();
	}
	
	
}
