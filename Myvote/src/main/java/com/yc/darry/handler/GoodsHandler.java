package com.yc.darry.handler;
import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.yc.darry.entity.Good;
import com.yc.darry.entity.Paramter;
import com.yc.darry.service.GoodsService;
import com.yc.darry.service.ParamterService;
import com.yc.darry.service.SeriesStyleService;


@Controller
@RequestMapping("/goods")
public class GoodsHandler {
	
	@Autowired
	private GoodsService goodsService;
	@Autowired
	private ParamterService paramterService;
	@Autowired
	private SeriesStyleService seriesstyleService;
	
	
	@ResponseBody
	@RequestMapping("/findAll")
	public List<Good>  findAll(){
		List<Good> goods =goodsService.getAll();
		return goods;
	}
	@ResponseBody
	@RequestMapping("/addGoods")
	public boolean  addGoods(Good good,Paramter paramter){
		 boolean flag=false;
		 System.out.println("!!!");
		 System.out.println(good);
		 System.out.println(paramter);
		 goodsService.addGoods(good);
		 if(good!=null){
			 int  goodid=good.getGoodid();
			 System.out.println(goodid);
			 String seriesname=good.getSeriesname();
			 String stylename=good.getStylename();
			 paramter.setGoodid(goodid);
			 
			 System.out.println(paramter);
			 paramterService.addParamter(paramter);
			 flag=seriesstyleService.addSeriesStyle( goodid, seriesname, stylename);
		 }
		return flag;
	}
	@ResponseBody
	@RequestMapping("/updateGoods")
	public boolean  updateGoods(Good good,Paramter paramter){
		 boolean flag=false;
		 goodsService.updateGoods(good);
		 Integer  goodid=good.getGoodid();
		 String seriesname=good.getSeriesname();
		 String stylename=good.getStylename();
		 paramter.setGoodid(goodid);
		 paramterService.updateParamter(paramter);
		 flag=seriesstyleService.updateSeriesStyle(goodid, seriesname, stylename);
		return flag;
	}
	@RequestMapping(value="/deleteGoods",method=RequestMethod.POST)
	public void  deleteGoods(String goodid,PrintWriter out){
		boolean flag = false;
		String[] goodids=goodid.split(",");
		for(int i=0;i<goodids.length;i++){
			paramterService.deleteParamter(Integer.valueOf(goodids[i]));
			seriesstyleService.deleteSeriesStyle(Integer.valueOf(goodids[i]));
			flag=goodsService.deleteGoods(Integer.valueOf(goodids[i]));
		}
		out.println(flag);
		out.flush();
		out.close();
	}
}
