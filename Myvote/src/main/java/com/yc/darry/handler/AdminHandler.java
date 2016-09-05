package com.yc.darry.handler;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.yc.darry.entity.Admin;
import com.yc.darry.entity.Store;
import com.yc.darry.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminHandler {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/login")
	public String login(Admin admin,ModelMap map){
		admin=adminService.login(admin);
		System.out.println("admin login..."+admin);
		if(admin==null){
			map.put("errorMsg", "用户名或密码错误");
			return "login";
		}
		return "redirect:../backstage/back/manager/index.html";
	}
	@RequestMapping("/findAdmin")
	public void findAdmin(ModelMap map,HttpServletRequest request,PrintWriter out){
		List<Admin> admins=(List<Admin>) adminService.findAdmin();
		System.out.println(admins);
		if(admins.size()<=0){
			map.put("errorMsg", "管理员信息获取错误");
		}
		Gson gson=new Gson();
		out.println(gson.toJson(admins));
		out.flush();
		out.close();
	}
	@RequestMapping("/addAdmin")
	public void addAdmin(ModelMap map,HttpServletRequest request,PrintWriter out){
		String aname=request.getParameter("aname");
		String apassword=request.getParameter("apassword");
		System.out.println(aname+"!!!"+apassword);
		if(aname==null & apassword==null){
			map.put("errorMsg", "请输入用户名或密码");
		}
		Admin admin=new Admin(aname,apassword);
		adminService.addAdmin(admin);
		out.println(1);
		out.flush();
		out.close();
	}
	@RequestMapping("/delAdmin")
	public void delAdmin(ModelMap map,HttpServletRequest request,PrintWriter out){
		int adminId=Integer.valueOf(request.getParameter("adminId"));
		System.out.println(adminId+"!!!");
		adminService.delAdmin(adminId);
		out.println(1);
		out.flush();
		out.close();
	}
}
