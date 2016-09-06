package com.yc.darry.handler;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.darry.entity.Series;
import com.yc.darry.service.SeriesService;

@Controller
@RequestMapping("/series")
public class SeriesHandler {
	@Autowired
	private SeriesService seriesService;
	
	@RequestMapping("/getname")
	public void getSeriesName(PrintWriter out){
		List<Series> series=seriesService.getSeries();
		System.out.println("getname进来了"+series);
		Gson gson=new Gson();
		out.println(gson.toJson(series));
		out.flush();
		out.close();
	}
}
