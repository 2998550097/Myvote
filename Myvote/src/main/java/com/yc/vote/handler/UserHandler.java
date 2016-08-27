package com.yc.vote.handler;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.vote.entity.User;
import com.yc.vote.service.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes("users")
public class UserHandler {
	@Autowired
	private UserService userService;
	
	@ModelAttribute
	public void getModel(ModelMap map){
		map.put("users", new User());
	}
	@RequestMapping("/active")
	public String active(String name){
		System.out.println("active register user....");
		
		return "login";
	}
	
	@RequestMapping("/register")
	public String register(User user,ModelMap map,HttpServletRequest request){
		System.out.println("register==>"+user);
		if(userService.register(user)){
			//成功注册，发送邮件，激活帐号
			activeAccountMail("激活用户",getSendContent(request,user.getVuUsername()),"13142391445@163.com",user.getVuEmail().trim());
			return "login";
		}
		map.put("regErrorMsg", "注册失败");
		return "register";
	}
	private String getSendContent(HttpServletRequest request, String vuUsername) {
		String activeURL=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+
				request.getContextPath()+"/user/active?username="+vuUsername;
		activeURL = String.format("<a href='%s'>%s</a><br><br>如果连接点击无效，请把此链接%s拷贝到地址栏激活", activeURL,"激活用户",activeURL);
		return activeURL;
	}
	@Autowired
	private JavaMailSender mailSender;
	private void activeAccountMail(String subject, String content, String from, String to) {
			try {
				MimeMessage mm=mailSender.createMimeMessage();
				MimeMessageHelper mmh=new MimeMessageHelper(mm, true,"UTF-8");
				mmh.setTo(to);//邮件接受者
				mmh.setFrom(from);//发送者
				mmh.setSubject(subject);//主题
				mmh.setText(content,true);//内容
				mailSender.send(mm);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
	}

	@RequestMapping("/login")
	public String login(User user,ModelMap map){
		System.out.println("login==>"+user);
		user=userService.login(user);
		if(user!=null){//说明查到了数据
			if(user.getVuVersion()==1){
				map.put("users", user);
				return "index";
			}
			map.put("loginErrorMsg", "对不起，你的帐号没有激活<br><a href='user/active?username="+user.getVuUsername()+"' style='text-align:center;'>重新发送邮箱</a>");
			return "login";
		}
		map.put("loginErrorMsg", "用户名或密码不正确！！！");
		return "login";
	}
}
