package com.yc.darry.handler;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.yc.darry.entity.Comments;
import com.yc.darry.entity.Store;
import com.yc.darry.service.CommentService;
import com.yc.darry.service.StoreService;

@Controller
public class CommentHandler {

	@Autowired
	private CommentService commentService;
	
	/**
	 * 评论查找所有
	 * @param map
	 * @param out
	 */
	@RequestMapping("/findAllComment")
	public void findComments(ModelMap map,PrintWriter out){
		List<Comments> comments=commentService.findComments();
		if(comments.size()<=0){
			map.put("errorMsg", "评论信息获取错误");
		}
		Gson gson=new Gson();
		out.println(gson.toJson(comments));
		out.flush();
		out.close();
	}
}
