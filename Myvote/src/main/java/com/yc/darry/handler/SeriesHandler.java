package com.yc.darry.handler;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@ResponseBody
	@RequestMapping("/findAllSeries")
	public List<Series> findAllSeries(){
		List<Series>  series=seriesService.getSeries();
		System.out.println(series);
		return series;
	}
	
	@RequestMapping("/addSeries")
	public void addSeries(String seriesname,PrintWriter out){
		boolean flag=seriesService.addSeries(seriesname);
		out.println(flag);
		out.flush();
		out.close();
	}
	
	
	@RequestMapping("/deleteSeries")
	public void deleteStore(String seriesid,PrintWriter out){
		String[] seriesids=seriesid.split(",");
		boolean flag=seriesService.deleteSeries(seriesids);
		out.println(flag);
		out.flush();
		out.close();
	}
}
