package com.yc.darry.handler;
import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.yc.darry.entity.Good;
import com.yc.darry.entity.Paramter;
import com.yc.darry.entity.Pagination;
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
	
	/**
	 * 查询所有商品
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/findAll")
	public List<Good>  findAll(){
		return goodsService.getAll();
	}
	//后端取值
	@ResponseBody
	@RequestMapping("/getGoods")
	public List<Good>  getGoods(){
		return goodsService.getGoods();
	}
	/**
	 * 分页条件查询
	 * @param page
	 * @param num
	 * @param totalSize
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/findByPage")
	public Pagination  findByPage(int page,int num,int totalSize,String minPrice,String maxPrice,String seriesname){
		System.out.println(minPrice+"--"+maxPrice+"--"+seriesname);
		int min=0;
		int max=0;
		if(!"".equals(minPrice)){
			min=Integer.parseInt(minPrice);
		}
		if(!"".equals(maxPrice)){
			max=Integer.parseInt(maxPrice);
		}
		Pagination paginations=new Pagination(12, num,min,max,seriesname);
		paginations.setTotalSize(totalSize);
		if(page==0){
			paginations=goodsService.getGoodByPage(new Pagination(12, page+1,min,max,seriesname));
		}else if(page==1){
			paginations=goodsService.getGoodByPage(new Pagination(12, paginations.getnextPageNo(),min,max,seriesname));
		}else if(page==2){
			paginations=goodsService.getGoodByPage(new Pagination(12, paginations.getProPageNo(),min,max,seriesname));
		}else if(page==10){
			max=10;
			paginations=goodsService.getGoodByPage(new Pagination(12, paginations.getProPageNo(),min,max,seriesname));
		}else if(page==11){
			min=11;
			max=13;
			paginations=goodsService.getGoodByPage(new Pagination(12, paginations.getProPageNo(),min,max,seriesname));
		}else if(page==14){
			min=14;
			max=16;
			paginations=goodsService.getGoodByPage(new Pagination(12, paginations.getProPageNo(),min,max,seriesname));
		}else if(page==17){
			min=17;
			max=20;
			paginations=goodsService.getGoodByPage(new Pagination(12, paginations.getProPageNo(),min,max,seriesname));
		}else if(page==21){
			min=21;
			paginations=goodsService.getGoodByPage(new Pagination(12, paginations.getProPageNo(),min,max,seriesname));
		}
		return paginations;
	}
	
	/**
	 * 后台的商品添加操作
	 * @param good
	 * @param paramter
	 * @return
	 */
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
	/**
	 * 更新后台商品数据操作
	 * @param good
	 * @param paramter
	 * @return
	 */
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
	/**
	 * 删除后台商品操作  根据goodid
	 * @param goodid
	 * @param out
	 */
	@ResponseBody
	@RequestMapping("/deleteGoods")
	public boolean  deleteGoods(String goodid,PrintWriter out){
		boolean flag = false;
		String[] goodids=goodid.split(",");
		for(int i=0;i<goodids.length;i++){
			paramterService.deleteParamter(Integer.valueOf(goodids[i]));
			seriesstyleService.deleteSeriesStyle(Integer.valueOf(goodids[i]));
			flag=goodsService.deleteGoods(Integer.valueOf(goodids[i]));
		}
		return flag;
	}
	
	
	
}
