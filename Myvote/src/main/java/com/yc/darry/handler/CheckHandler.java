package com.yc.darry.handler;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yc.darry.entity.User;

@Controller
@RequestMapping("/check")
public class CheckHandler {
	
	@RequestMapping("/check")
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
	
}
