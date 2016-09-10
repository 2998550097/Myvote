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


@Controller
@RequestMapping("/goods")
public class GoodsHandler {
	
	@Autowired
	private GoodsService goodsService;
	
	@ResponseBody
	@RequestMapping("/findAll")
	public List<Good>  findAll(){
		List<Good> goods =goodsService.getAll();
		return goods;
	}
	@ResponseBody
	@RequestMapping("/addGoods")
	public boolean  addGoods(Good good,Paramter paramter){
		 good=goodsService.addGoods(good);
		 int  goodid=good.getGoodid();
		 //String seriesname=good;
		 paramter.setGoodid(goodid);
		 goodsService.addParamter(paramter);
		 
		return true;
	}
	@ResponseBody
	@RequestMapping("/updateGoods")
	public boolean  updateGoods(Good good,Paramter paramter){
		 good=goodsService.addGoods(good);
		 int  goodid=good.getGoodid();
		 //String seriesname=good;
		 paramter.setGoodid(goodid);
		 goodsService.addParamter(paramter);
		 
		return true;
	}
	@RequestMapping(value="/deleteGoods",method=RequestMethod.POST)
	public void  deleteGoods(String goodid,PrintWriter out){
		boolean flag = false;
		String[] goodids=goodid.split(",");
		for(int i=0;i<goodids.length;i++){
			flag=goodsService.deleteGoods(goodids[i]);
		}
		out.println(flag);
		out.flush();
		out.close();
	}
}
