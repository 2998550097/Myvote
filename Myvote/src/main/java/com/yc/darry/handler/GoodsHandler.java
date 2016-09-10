package com.yc.darry.handler;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.yc.darry.entity.Good;
import com.yc.darry.service.GoodsService;


@Controller
@RequestMapping("/goods")
public class GoodsHandler {
	
	@Autowired
	private GoodsService goodsService;
	
	@ResponseBody
	@RequestMapping("/findAll")
	public List<Good>  findAll(){
		List<Good> goods =goodsService.findAll();
		if(goods.size()>0){
			return goods;
		}
		return null;
	}
	
//	@ResponseBody
//	@RequestMapping("/search")//组合查询商品 （收藏表&商品表）
//	public List<Good>  search(HttpServletRequest request){
//		String gname=request.getParameter("gname");
//		String seriesname=request.getParameter("seriesname");
//		String stylename=request.getParameter("stylename");
//		System.out.println(gname+seriesname+stylename);
//		return goodsService.search(gname,seriesname,stylename);
//	}
}
