<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/Myvote/">   
<meta content="text/html; charset=utf-8" />
<title>注   册</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	function checkRegister(){
		$("#vuUsernameMsg").html("");
		$("#vuPasswordMsg").html("");
		$("#confirmPasswordMsg").html("");
		var vuUsername=$.trim($("#vuUsername").val());
		var vuPassword=$.trim($("#vuPassword").val());
		var confirmPassword=$.trim($("#confirmPassword").val());
		var namestr="";
		var pwdstr="";
		var confirmstr="";
		if(vuUsername==""){
			str="用户名不能为空！！";
			$("#vuUsernameMsg").html(str);
			return;
		}
		if(vuPassword==""){
			pwdstr="密码不能为空！！";
			$("#vuPasswordMsg").html(pwdstr);
			return;
		}
		if(vuPassword!=confirmPassword){
			confirmstr="第一次和第二次密码不同";
			$("#confirmPasswordMsg").html(confirmstr);
			return;
		}
		$("#registerForm").submit();
	}
	
</script>
</head>
<body>
<div id="header" class="wrap">
	<img src="images/logo.gif" />
</div>
<div id="navbar" class="wrap">
	<div class="search">
	<!--  
		<form method="get" action="index.html">
			<input type="text" name="keywords" class="input-text" /><input type="submit" name="submit" class="input-button" value="" />
		</form>
	-->	
	</div>
</div>
<div id="register" class="box">
	<h2>新用户注册</h2>
	<div class="content">
	   <form method="post" action="user/register" id="registerForm">
			<dl>
				<dt>用户名：</dt>
				<dd><input type="text" class="input-text" name="vuUsername" id="vuUsername" placeholder="请输入用户名..." required="required"/>&nbsp;&nbsp;<span class="regErrorMsg" id="vuUsernameMsg"></span></dd>
				<dt>密码：</dt>
				<dd><input type="password" class="input-text" name="vuPassword" id="vuPassword" placeholder="请输入密码..." required="required"/>&nbsp;&nbsp;<span class="regErrorMsg" id="vuPasswordMsg"></span></dd>
				<dt>确认密码：</dt>
				<dd><input type="password" class="input-text" name="confirmPassword" id="confirmPassword" placeholder="请重新输入密码" required="required"/>&nbsp;&nbsp;<span class="regErrorMsg" id="confirmPasswordMsg"></span></dd>
				<dt>电子邮箱：</dt>
				<dd><input type="email" class="input-text" name="vuEmail" id="vuEmail" placeholder="请输入电子邮箱" required="required"/>&nbsp;&nbsp;<span class="regErrorMsg" id="vuEmailMsg"></span></dd>
				<dt></dt>
				<dd><input type="button" class="input-button" value="" onclick="checkRegister()"/></dd>
			</dl>
			<div class="error">${regErrorMsg }</div>
		</form>
	</div>
</div>
<div id="footer" class="wrap">
	源辰信息 &copy; 版权所有
</div>
</body>
</html>
