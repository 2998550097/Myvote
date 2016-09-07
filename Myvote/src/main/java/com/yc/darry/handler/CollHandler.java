package com.yc.darry.handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.yc.darry.entity.Collections;
import com.yc.darry.service.CollService;

@Controller
@RequestMapping("/Coll")
public class CollHandler {
	@Autowired
	private CollService collService;
	@ResponseBody
	@RequestMapping("/findColl")//查找收藏商品 （收藏表&商品表）
	public List<Collections>  findColl(){
		return collService.findColl();
	}
	@ResponseBody
	@RequestMapping("/search")//组合查询商品 （收藏表&商品表）
	public List<Collections>  search(HttpServletRequest request){
		String gname=request.getParameter("gname");
		String seriesname=request.getParameter("seriesname");
		String stylename=request.getParameter("stylename");
		System.out.println(gname+seriesname+stylename);
		return collService.search(gname,seriesname,stylename);
	}
}
