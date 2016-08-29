<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/register/common.css">
<link rel="stylesheet" type="text/css" href="css/register/style.css">
<script type="text/javascript" src="js/hm.js"></script>
<script async="" src="js/analytics.js"></script>
<script type="text/javascript" src="js/login/jquery-1.10.1.min.js"></script>
<script type="text/javascript" src="js/register/common.js"></script>
<script type="text/javascript" src="js/register/banner.js"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="js/login/zh_cn.js" data-requiremodule="lang"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="js/chat.in.js" data-requiremodule="chatManage"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="js/comet.chat.js" data-requiremodule="TChat"></script>
<title>注册</title>
</head>
<body>
	<header class="cart_head">
		<div class="w1000">
			<div class="dr_logo fl">
				<a href="http://www.darryring.com/"><img src="images/logo.png"
					alt=""></a>
			</div>
			<div class="dr_member fr">
				<div class="drmember_sec">
					<div class="dr_member-left fl">
						<a href="http://passport.darryring.com/login?lang=cn">登录</a> <a
							href="./戴瑞珠宝官网会员注册登录_Darry Ring求婚钻戒价格 戴瑞珠宝官网注册_files/戴瑞珠宝官网会员注册登录_Darry Ring求婚钻戒价格 戴瑞珠宝官网注册.html"
							class="drtojoin">加入DR族</a>
					</div>
					<div class="dr_member-left fl">
						<i> <img src="images/telleft.png"> 400 01 13520
						</i>
					</div>
					<div class="dr_member-left fl">
						<a href="http://www.darryring.com/help.html" target="_blank"
							class="help-right">帮助中心<span></span></a>
					</div>
				</div>
			</div>
		</div>
	</header>
	
	<div class="dr_banner">
        <!--通行证操作区-->
        <div class="dr_actionMain w1000">
            <div class="dr_passprt dr_passprt-h">
                <ul class="dr_formTabTitle fix">
                                        <li class="dr_formTableft">手机注册</li>
                    <li class="dr_formTabright  em activite">邮箱注册</li>
                                    </ul>
                <div class="dr_form">
                    <div class="dr_formTabMain" id="formTabs">
                        <!--手机end-->
                        <form class="form_first" action="./戴瑞珠宝官网会员注册登录_Darry Ring求婚钻戒价格 戴瑞珠宝官网注册_files/戴瑞珠宝官网会员注册登录_Darry Ring求婚钻戒价格 戴瑞珠宝官网注册.html" method="post">
                        <input type="hidden" name="type" value="1">
                        <input type="hidden" name="forward" value="http://passport.darryring.com/login?">
                        <input type="hidden" name="skey" value="msgkFNMb">
                        <input type="hidden" name="retype" value="1">
                        <div class="dr_formTabCon" style="display: none;">
                            <div class="higheVssel higheVssel_phone ">
                                <!--错误提示-->
                                <div class="errorMsg" id="prError"></div>
                                <!--错误提示-->
                                <input type="text" name="mobile" id="mobile" value="" class="ipTxt ico-phone" placeholder="请输入您注册的手机号码">
                                                                <input type="password" name="mobile_pwd" class="ipTxt ico-pwd" placeholder="请输入长度为6-20位数的密码">
                                <input type="password" name="mobile_pwd_confirm" class="ipTxt ico-pwd" placeholder="请再次确认密码">
                                <div class="fix"><input type="text" name="mobile_code" value="" class="ipTxt ico-send inputCode" placeholder="输入验证码">
                                <a class="getCodeBtn mobile_action" id="getPhoneCode" href="javascript:void(0)">获取语音验证码</a>
                                </div>
                                                                    <div class="fix">
                                        <input type="hidden" name="imgcode" value="1">
                                        <input type="text" name="mobile_img_code" value="" class="ipTxt ico-send inputCode" placeholder="请输入验证码">
                                        <a class="yxCode fr" href="javascript:void(0)" title="点击刷新验证码"><img src="./戴瑞珠宝官网会员注册登录_Darry Ring求婚钻戒价格 戴瑞珠宝官网注册_files/code" onclick="javascript:this.src = &#39;/code?&#39; + Math.random();"></a>
                                    </div>
                                                                <div class="checkTerms">
                                    <input type="checkbox" name="mobile_check" id="phoneCheck" checked="checked"><label for="phoneCheck">同意Darry Ring用户</label><a href="http://www.darryring.com/help_se/85.html">注册协议</a>和<a href="http://www.darryring.com/help_se/86.html">隐私条款</a>
                                </div>
                            </div>
                            <div class="dr_Btns">
                                <!-- <a class="colorBtn" id="mobile_reg">立即加入DR族</a> -->
                                <input class="colorBtn" type="button" id="mobile_reg" value="立即加入DR族">
                            </div>
                            <div class="loginLink">
                                <!--简体版第三方登录-->
                                <!-- <div class="regOtherLogin">
                                    <a class="qqdl" href="javascript:;"></a>
                                    <a class="wxdl" href="javascript:;"></a>
                                    <a class="wbdl" href="javascript:;"></a>
                                    <a class="zfbdl" href="javascript:;"></a>
                                </div> -->
                                                                <div class="regOtherLogin">
                                    <a class="qqdl" href="http://passport.darryring.com/syncLogin/qq"></a>
                                    <a class="wxdl" href="http://passport.darryring.com/syncLogin/weixin"></a>
                                    <a class="wbdl" href="http://passport.darryring.com/syncLogin/weibo"></a>
                                    <a class="zfbdl" href="http://passport.darryring.com/syncLogin/alipay"></a>
                                </div>
                                
                                <!--简体版第三方登录end-->
                                <a href="http://passport.darryring.com/login?lang=cn">&gt; 已有帐户 登录</a>
                            </div>
                        </div>
                        </form>
                        <!--手机end-->
                        <!--邮箱注册-->
                        <form class="form_second" action="./戴瑞珠宝官网会员注册登录_Darry Ring求婚钻戒价格 戴瑞珠宝官网注册_files/戴瑞珠宝官网会员注册登录_Darry Ring求婚钻戒价格 戴瑞珠宝官网注册.html" method="post">
                        <input type="hidden" name="type" value="2">
                        <input type="hidden" name="forward" value="http://passport.darryring.com/login?">
                        <input type="hidden" name="retype" value="1">

                        <div class="dr_formTabCon" style="display: block;">
                            <div class="higheVssel">
                                <!--错误提示-->
                                <div class="errorMsg" id="erError"></div>
                                <!--错误提示-->
                                <input type="text" name="email" value="" class="ipTxt ico-email" placeholder="请输入您的邮箱地址">
                                <input type="password" name="email_pwd" value="" class="ipTxt ico-pwd" placeholder="请输入长度为6-20位数的密码">
                                <input type="password" name="email_pwd_confirm" value="" class="ipTxt ico-pwd" placeholder="请再次确认密码">
                                <div class="fix">
                                    <input type="text" name="email_code" value="" class="ipTxt ico-send inputCode" placeholder="请输入验证码">
                                    <a class="yxCode fr" href="javascript:void(0)" title="点击刷新验证码"><img src="./戴瑞珠宝官网会员注册登录_Darry Ring求婚钻戒价格 戴瑞珠宝官网注册_files/code" onclick="javascript:this.src = &#39;/code?&#39; + Math.random();"></a>
                                </div>
                                <div class="checkTerms">
                                    <input type="checkbox" name="email_check" id="emailCheck" checked="checked"><label for="emailCheck">同意Darry Ring用户</label><a href="http://www.darryring.com/help_se/85.html">注册协议</a>和<a href="http://www.darryring.com/help_se/86.html">隐私条款</a>
                                </div>
                            </div> 
                            <div class="dr_Btns">
                                <input class="colorBtn" type="button" id="email_reg" value="立即加入DR族">
                                <!-- <a class="colorBtn" id="email_reg">立即加入DR族</a> -->
                            </div>
                            <div class="loginLink">
                                <!--简体版第三方登录-->
                                                                <div class="regOtherLogin">
                                    <a class="qqdl" href="http://passport.darryring.com/syncLogin/qq"></a>
                                    <a class="wxdl" href="http://passport.darryring.com/syncLogin/weixin"></a>
                                    <a class="wbdl" href="http://passport.darryring.com/syncLogin/weibo"></a>
                                    <a class="zfbdl" href="http://passport.darryring.com/syncLogin/alipay"></a>
                                </div>
                                                                
                                <!-- <div class="regOtherLogin">
                                    <a class="qqdl" href="javascript:;"></a>
                                    <a class="wxdl" href="javascript:;"></a>
                                    <a class="wbdl" href="javascript:;"></a>
                                    <a class="zfbdl" href="javascript:;"></a>
                                </div> -->
                                <!--简体版第三方登录end-->
                                <a href="http://passport.darryring.com/login?lang=cn">&gt; 已有帐户 登录</a>
                            </div>
                        </div>
                        </form>
                        <!--邮箱注册end-->
                        
                    </div>
                </div>
            </div>
        </div>
        <!--通行证操作区 end-->
        <!--banner轮播图-->
                <ul class="dr_bannerul fix" id="drHomeBan">

               <li style="display: none;">
               <a href="http://www.darryring.com/culture_mr" target="_blank">
                    <img src="images/login/login.jpg">
                </a>
            </li>
             <li style="display: list-item;">
                <a href="http://www.darryring.com/zt/loveline.html" target="_blank">
                    <img src="images/login/login2.jpg">
                </a>
            </li>
        </ul>
        <!--banner轮播图 end-->
                
        <div class="drbanner_xdcort">
            <ul class="drbanner_xd" id="banBtns">
                                <li class=""><span></span></li>
                <li class="nobg drbanner_click"><span></span></li>
            </ul>
        </div>        <!--banner轮播图 end-->
    </div>
    
	<jsp:include page="footer.jsp"/>
</body>
</html>