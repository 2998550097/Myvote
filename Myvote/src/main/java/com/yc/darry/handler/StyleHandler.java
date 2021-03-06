package com.yc.darry.handler;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.yc.darry.entity.Style;
import com.yc.darry.entity.User;
import com.yc.darry.service.StyleService;

@Controller
@RequestMapping("/style")
public class StyleHandler {
	@Autowired
	private StyleService styleService;
	
	@RequestMapping("/getname")
	public void getSeriesName(PrintWriter out){
		List<Style> style=styleService.getStyle();
		System.out.println("getname进来了"+style);
		Gson gson=new Gson();
		out.println(gson.toJson(style));
		out.flush();
		out.close();
	}
	
	@ResponseBody
	@RequestMapping("/check")
	public void check(PrintWriter out,HttpSession session){
		User user=(User) session.getAttribute("users");
		if(user==null){
			out.println(0);
			out.flush();
			out.close();
		}else{
			Gson gson=new Gson();
			out.println(gson.toJson(user));
			out.flush();
			out.close();
		}
		System.out.println(user);
	}
	@RequestMapping("/exit")
	public void exit(PrintWriter out,HttpSession session){
		session.removeAttribute("users");
		out.println(1);
		out.flush();
		out.close();
	}
	
	@RequestMapping("/checks")
	public String check(int id,HttpSession session){
		String str="";
		System.out.println(id);
		User user=(User)session.getAttribute("users");
		if(user==null){
			str="login";
		}else{
			if(id==1){
				str="Cart";
			}else if(id==2){
				str="myOrder/myOrder";
			}else if(id==3){
				str="myOrder/myFavorites";
			}
		}
		return str;
	}
	
	@ResponseBody
	@RequestMapping("/findStyle")
	public List<Style> findStyle(){
		List<Style> styles=(List<Style>) styleService.getStyle();
		return styles;
	}
	
	@RequestMapping("/addStyle")
	public void addStyle(String stylename,PrintWriter out){
		boolean flag=styleService.addStyle(stylename);
		out.println(flag);
		out.flush();
		out.close();
	}
	
	@RequestMapping("/deleteStyle")
	public void deleteStyle(String styleid,PrintWriter out){
		String[] styleids=styleid.split(",");
		boolean flag=styleService.deleteStyle(styleids);
		out.println(flag);
		out.flush();
		out.close();
	}
}
