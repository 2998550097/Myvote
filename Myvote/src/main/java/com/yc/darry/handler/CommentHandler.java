package com.yc.darry.handler;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	 */
	@ResponseBody
	@RequestMapping("/findAllComment")
	public List<Comments>  findComments(){
		List<Comments> comments=commentService.findComments();
		return comments;
	}
	
	@ResponseBody
	@RequestMapping(value="/deleteComment",method=RequestMethod.POST)
	public boolean deleteComment(int commentid,PrintWriter out){
		return commentService.deleteComments(commentid);
	}
}