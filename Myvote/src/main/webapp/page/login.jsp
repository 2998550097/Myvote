<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/MyDarry/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="css/register/common.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/hm.js"></script>
<script async="" src="js/analytics.js"></script>
<script type="text/javascript" src="js/login/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="js/login/common.js"></script>
<script type="text/javascript" src="js/login/banner.js"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/login/zh_cn.js" data-requiremodule="lang"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/chat.in.js" data-requiremodule="chatManage"></script>
<script type="text/javascript" async="async" charset="utf-8" src="js/comet.chat.js" data-requiremodule="TChat"></script>

<script type="text/javascript">

$(function(){
	var errorMsg=$("#loginError").html();
	if(errorMsg==""){
		$("#loginError").css("display","none");
	}else{
		$("#loginError").css("display","block");
	}
})

function changeCode(){
    $('#signcode').attr('src','signcode/authcode?abc='+Math.random());//链接后添加Math.random，确保每次产生新的验证码，避免缓存问题。
}


//邮箱校验
function eamilValidate(){
	var uemail=$("#txtName").val();
	var reg=/^\d{6,12}@qq.com$/ig;
	if(reg.test(uemail)==false){
		$("#loginError").css("display","block");
		$("#loginError").html("邮箱格式不正确");
	}else{
		$("#loginError").css("display","none");
	}
}

function passwordValidate(){
	var upassword=$("#txtPwd").val().length;
	var reg=/[\\s\\S]{6,20}/;
	if(upassword<6 || upassword>20){
		$("#loginError").css("display","block");
		$("#loginError").html("密码长度应在6-20之间");
	}else{
		$("#loginError").css("display","none");
	}
	
}

</script>
</head>
<body>
    <header class="cart_head">
    <div class="w1000">
        <div class="dr_logo fl">
            <a href="http://www.darryring.com/"><img src="images/login/logo.png" alt=""></a>
        </div>
        <div class="dr_member fr">
            <div class="drmember_sec">
                <div class="dr_member-left fl">
                    <a href="page/index.jsp">登录</a>
                    <a href="page/register.jsp" class="drtojoin">加入DR族</a>
                </div>
                <div class="dr_member-left fl">
                    <i>
                        <img src="images/telleft.png">
                        400 01 13520
                    </i>
                </div>
                <div class="dr_member-left fl">
                    <a href="http://www.darryring.com/help.html" target="_blank" class="help-right">帮助中心<span></span></a>
                </div>
            </div>
        </div>
    </div>
</header>
    <div class="dr_banner">
	<!--通行证操作区-->
		<div class="dr_actionMain w1000">
			<div class="dr_passprt">
				<form id="loginform" action="user/login" method="post">
					<div class="dr_form">
						<h3>DR族-登录</h3>
						<div class="dr_minAction">
							<div class="errorMsg" id="loginError" style="">${errorMsg }</div>
                            
							<input type="text" class="ipTxt ico-user" value="2998550097@qq.com" id="txtName" name="uemail" placeholder="请输入您的邮箱/手机号码" required="required" onblur="eamilValidate()">
							<input type="password" class="ipTxt ico-pwd" value="123456" id="txtPwd" name="upassword" placeholder="请输入密码" required="required" onblur="passwordValidate()">
							<p class="dr_actionPwd"><a class="fr" href="page/forget.jsp">忘记密码?</a><input id="isRemember" type="checkbox"><label for="isRemember">记住密码</label></p>
						</div>
						<div id="login" class="dr_Btns">
							<input type="image" class="defaultBtn focus" value="登录" />
							<a class="colorBtn left" href="page/register.jsp">加入DR族</a>
						</div>
					</div>
					<div class="dr_otherLogin">
						<h4>第三方账户登录</h4>
						<a class="qqdl" href="http://passport.darryring.com/syncLogin/qq"></a>
						<a class="wxdl" href="http://passport.darryring.com/syncLogin/weixin"></a>
						<a class="wbdl" href="http://passport.darryring.com/syncLogin/weibo"></a>
						<a class="zfbdl" href="http://passport.darryring.com/syncLogin/alipay"></a>
					</div>
					<input type="hidden" name="forward" value="http://www.darryring.com">
				</form>
			</div>
		</div>
		<!--通行证操作区 end-->
		<!--banner轮播图-->
		        <ul class="dr_bannerul fix" id="drHomeBan">

               <li style="display: block;">
               <a href="http://www.darryring.com/culture_mr" target="_blank">
                    <img src="images/login//login.jpg">
                </a>
            </li>
             <li style="display: none;">
                <a href="http://www.darryring.com/zt/loveline.html" target="_blank">
                    <img src="images/login//login2.jpg">
                </a>
            </li>
        </ul>
        <!--banner轮播图 end-->
                
        <div class="drbanner_xdcort">
            <ul class="drbanner_xd" id="banBtns">
                                <li class="drbanner_click"><span></span></li>
                <li class="nobg"><span></span></li>
            </ul>
        </div>	</div>
        
        
        <jsp:include page="footer.jsp"/>
        
</body>
</html>