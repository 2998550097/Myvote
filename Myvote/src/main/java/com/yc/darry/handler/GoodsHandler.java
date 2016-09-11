package com.yc.darry.handler;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.yc.darry.entity.Good;
import com.yc.darry.entity.Pagination;
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
	@RequestMapping("/findByPage")
	public Pagination  findByPage(int page,int num,int totalSize,String minPrice,String maxPrice){
		System.out.println(minPrice+"--"+maxPrice);
		int min=0;
		int max=0;
		if(!"".equals(minPrice)){
			min=Integer.parseInt(minPrice);
		}
		if(!"".equals(maxPrice)){
			max=Integer.parseInt(maxPrice);
		}
		Pagination paginations=new Pagination(12, num,min,max);
		paginations.setTotalSize(totalSize);
		if(page==0){
			paginations=goodsService.getGoodByPage(new Pagination(12, page+1,min,max));
		}else if(page==1){
			paginations=goodsService.getGoodByPage(new Pagination(12, paginations.getnextPageNo(),min,max));
		}else if(page==2){
			paginations=goodsService.getGoodByPage(new Pagination(12, paginations.getProPageNo(),min,max));
		}
		return paginations;
	}
}
