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
		List<Good> goods =goodsService.getAll();
		return goods;
	}
	
	
}