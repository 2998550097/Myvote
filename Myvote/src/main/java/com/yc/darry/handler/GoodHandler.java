package com.yc.darry.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yc.darry.entity.Good;
import com.yc.darry.service.GoodsService;

@Controller
@RequestMapping("/good")
public class GoodHandler {
	@Autowired
	private GoodsService goodsService;
	
	@ResponseBody
	@RequestMapping("/all")
	public List<Good> getAllGoods(){
		System.out.println(goodsService.getAll());
		return goodsService.getAll();
	}
}
