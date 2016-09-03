package com.yc.darry.handler;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.yc.darry.entity.Admin;
import com.yc.darry.service.AdminService;

@Controller

public class AdminHandler {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/login")
	public String login(Admin admin,ModelMap map){
		System.out.println("admin login..."+admin);
		admin=adminService.login(admin);
		if(admin==null){
			map.put("errorMsg", "用户名或密码错误");
			return "login";
		}
		return "redirect:backstage/back/manager/index.html";
	}
	@RequestMapping("/findAdmin")
	public void findAdmin(ModelMap map,HttpServletRequest request,PrintWriter out){
		out.print(adminService.findAdmin());
		out.flush();
		out.close();
	}
//	@RequestMapping("/findadminById")
//	public void findadminById(ModelMap map,HttpServletRequest request,PrintWriter out){
//		String aname=request.getParameter("aname");
//		String apassword=request.getParameter("apassword");
//		if(aname==null & apassword==null){
//			map.put("errorMsg", "请输入用户名或密码");
//		}
//		Admin admin=new Admin(aname,apassword);
//		out.print(adminService.findAdmin(admin));
//		out.flush();
//		out.close();
//	}
}
