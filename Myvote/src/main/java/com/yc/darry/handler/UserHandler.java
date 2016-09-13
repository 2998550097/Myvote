package com.yc.darry.handler;


import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.yc.darry.entity.User;
import com.yc.darry.service.UserService;

@Controller
@RequestMapping("/user")
@SessionAttributes("users")
public class UserHandler {
	@Autowired
	private UserService userService;
	
	@ModelAttribute
	public void getInit(User user,ModelMap map){
		map.put("users", new User());
	}
	
	
	@RequestMapping("/reset")
	public String reset(String uemail,User user,ModelMap map){
		System.out.println("重置密码..."+user);
		user=new User(uemail, user.getUpassword());
		if(!userService.reset(user)){
			map.put("errorMsg", "对不起，密码重置失败...");
			return "reset";
		}
		return "login";
	}
	
	/**
	 * 确认重置
	 * @param uemail
	 * @param map
	 * @return
	 */
	@RequestMapping("/resetpwd")
	public String resetPwd(String uemail,ModelMap map){
		System.out.println("重置密码..."+uemail);
		if(userService.isFirstEmail(uemail)){//说明该邮箱没有注册
			map.put("errorMsg", "对不起，该邮箱没有注册，请先注册...");
			return "forget";
		}
		map.put("uemail", uemail);
		return "reset";
	}
	
	@RequestMapping("/sendemail")
	public String sendEmail(String uemail,HttpServletRequest request){
		//成功注册，发送邮件，激活帐号
		activeAccountMail("激活用户",getSendContent(request,uemail),"13142391445@163.com",uemail);
		return "login";
	}
	
	@RequestMapping("/login")
	public String login(User user,ModelMap map){
		user=userService.login(user);
		if(user==null){
			map.put("errorMsg", "用户名或密码错误");
			return "login";
		}
		if(!"已激活".equals(user.getUstatus())){//未激活
			map.put("errorMsg", "对不起，您的帐号没有激活,<a href='user/sendemail?uemail="+user.getUemail()+"'>点此激活</a>");
			return "login";
		}
		map.put("users", user);
		return "index";
	}
	
	/**
	 * 激活邮箱
	 * @param uemail
	 * @return
	 */
	@RequestMapping("active")
	public String active(String uemail){
		System.out.println("active进来"+uemail);
		userService.active(uemail);//激活成功
		return "login";
	}
	
	@RequestMapping("/register")
	public String register(User user,HttpSession session,ModelMap map,HttpServletRequest request){
		System.out.println("register/我进来了"+user);
		String signcode=(String)session.getAttribute("signcode");
		if(!userService.isFirstEmail(user.getUemail())){//判断该邮箱是否已经注册,已经注册过了
			map.put("errorMsg", "对不起，该邮箱已经注册过了....");
			return "register";
		}
		
		if(!signcode.equals(user.getEmailCode())){//验证码不同
			map.put("errorMsg", "验证码不同，请重新输入....");
			return "register";
		}
		if(!userService.register(user)){
			map.put("errorMsg", "对不起，注册失败....");
			return "register";
		}
		//成功注册，发送邮件，激活帐号
		activeAccountMail("激活用户",getSendContent(request,user.getUemail()),"13142391445@163.com",user.getUemail().trim());
		return "login";
	}
	
	private String getSendContent(HttpServletRequest request, String uemail) {
		String activeURL=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+
				request.getContextPath()+"/user/active?uemail="+uemail;
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
	

	/**
	 * 会员查找
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/usersfind")
	public List<User>  findUsers(){
		List<User> users=userService.findUsers();
		if(users.size()>0){
			return users;
		}else{
			return null;
		}
		
	}
	
	@RequestMapping(value="/deleteUsers",method=RequestMethod.POST)
	public void deleteStore(PrintWriter out, String uid){
		String[] userids=uid.split(",");
		System.out.println(userids);
		boolean flag=userService.deleteUsers(userids);
		out.println(flag);
		out.flush();
		out.close();
	}
	
	@ResponseBody
	@RequestMapping(value="/usercount",method=RequestMethod.POST)
	public int getUserCount(){
		int userCount = userService.getUserCount();
		return userCount;
	}
	
	
	@ResponseBody
	@RequestMapping("/search")
	public List<User> search(HttpServletRequest request){
		String useri=request.getParameter("userid");
		int userid=0;
		if(useri!=""){
			userid=Integer.parseInt(useri);
		}
		String urealname=request.getParameter("urealname");
		String utel=request.getParameter("utel");
		String usex=request.getParameter("usex");
		if(utel == null || utel.equals("")){
			utel=null;
		}
		if(usex.equals("")){
			usex=null;
		}
		if(urealname.equals("")){
			urealname=null;	
		}
		return userService.search(userid,urealname,utel,usex);
		
	}
	
}
