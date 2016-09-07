<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改密码</title>
<link rel="stylesheet" href="css/left.css" />
<link rel="stylesheet" href="css/mypwd.css" />
<style type="text/css">
.person-sp-button {
	margin-top: 10px;
	margin-left: 72px;
	cursor: pointer;
	height: 30px;
	line-height: 30px;
}
em {
	font-style: normal;
}
.person-cort_left-password em {
	display: inline-block;
	width: 44px;
	height: 11px;
	border: 1px solid #f2f2f2;
	padding: 1px;
	font-size: 12px;
	color: #fff;
	margin: 0;
	background: #ccc;
	line-height: 11px;
	text-align: center;
}
</style>
<base href="/MyDarry/">
		<link rel="stylesheet" href="css/kefu.css" />
		<link rel="stylesheet" href="css/same.css" />
		<script type="text/javascript" src="headerJs/header.js"></script>
		<link rel="stylesheet" href="css/common.css" />
		<link rel="stylesheet" href="css/valentine_index.css" />
		<link rel="stylesheet" href="css/drindex.css">
		<!--实体店应急20160122-->
		<link rel="stylesheet" href="css/help.css">
		<script type="text/javascript" src="headerJs/jquery-1.11.3.min.js"></script>
		<script src="js/hm.js"></script>
		<script charset="utf-8" src="js/lxb.js"></script>
		<script src="js/hm(1).js"></script>
		<script async="" src="js/gt.js"></script>
		<script charset="utf-8" src="js/lxb.js"></script>
		<script charset="utf-8" src="js/v.js"></script>
		<script async="" src="js/analytics.js"></script>
		<script async="" src="headerJs/index.js"></script>
		<script async="" src="headerJs/banner.js"></script>
		<script type="text/javascript" src="headerJs/header.js"></script>
		<script type="text/javascript" src="headerJs/sea.js"></script>
	<script type="text/javascript">
		// seajs 配置
		seajs.config({
		    debug: true,
		    base: "",
		    alias: {
		        "jquery":"MyDarry/headerJs/jquery.js"
		    }
		});
		// 加载头部入口模块
		seajs.use("MyDarry/headerJs/header.js");
		</script>
</head>
<body>
	<jsp:include page="../../page/header.jsp"/>
	<jsp:include page="../../page/nav.jsp"/>
	<div class="cort">
		<div class="tobuy cmain">
			<div class="cmain mb_back">
				<div class="zbk_top spalid">
					<span>您当前的位置：</span> <span id="ctl00_content_website_SiteMapPath1"><span>
							<a href="/" target="_blank">Darry Ring</a>
					</span><span> <em>&gt;</em>
					</span><span> <a href="/member/mydr.html" target="_blank">我的DR</a>
					</span><span> <em>&gt;</em>
					</span><span> <span>我的订单</span>
					</span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span>
				</div>
				<div class="member_cort">
					<div class="member_cort-left fl">
						<!--我的DR-->
						<div class="member_cortleft-tittle">
							<i class="mb_home"></i><a href="/member/mydr.html" rel="nofollow">
								我的 DR</a>
						</div>
						<!--我的DR end-->
						<ul class="member_cort-ul">
							<li>
								<h3>-订单中心-</h3>
								<ul class="member_ul-dr">
									<li id="orders"><a href="page/myOrder/myOrder.jsp"
										rel="nofollow">我的订单</a></li>
									<li id="ask"><a href="page/myOrder/myEvaluate.jsp"
										rel="nofollow">我要评价</a></li>
									<li id="cart"><a target="_blank" href="page/Cart.jsp"
										rel="nofollow">我的购物车</a></li>
									<li id="collect"><a href="page/myOrder/myFavorites.jsp"
										rel="nofollow">我的收藏</a></li>
									<li id="yuyue" class="no_border"><a
										href="page/myOrder/myAppointment.jsp" rel="nofollow">我的预约</a></li>
								</ul>
							</li>
							<li>
								<h3>-售后服务-</h3>
								<ul class="member_ul-dr">
									<li id="aftersale"><a href="/member/aftersale.html"
										rel="nofollow">售后办理</a></li>
								</ul>
							</li>
							<li>
								<h3>-帐户管理-</h3>
								<ul class="member_ul-dr">
									<li id="myinfo"><a href="/member/personinfo.html"
										rel="nofollow">个人信息</a></li>
									<li id="password" class="speacil_color"><a
										href="/member/mypwd.html" rel="nofollow">修改密码</a></li>
									<li id="address"><a href="/member/myaddress.html"
										rel="nofollow">收货地址</a></li>
									<li id="li_jnr"><a href="/member/mydr_jnr.html">纪念日维护</a></li>
									<li id="news" class="no_border"><a
										href="/member/mynews.html" rel="nofollow">系统消息</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<script type="text/javascript">
						$(function() {
							if ("order" == "news") {
								$("#order").addClass("no_border");
							}
							$("#order").addClass("speacil_color");
						});
					</script>
					<!--右边开始 -->
					<div class="member_cort-right fr">
						<!--找回密码-->
						<div class="member_password">
							<div class="member_ask-tittle">
								<h4>修改密码</h4>
								<p>为保障账户安全，建议避免使用与其他网站相同密码。</p>
							</div>
							<!--找回密码-->
							<div class="member_password-find">
								<div class="person-cort_left-write person-cort_left-spwrite">
									<span>原始密码：</span> <input type="password" class="write_text"
										id="ctl00_content_pwd" name="ctl00$content$pwd"> <a
										href="http://passport.darryring.com/forget?lang=">忘记密码&gt;&gt;</a>
								</div>
								<div style="float: left"
									class="person-cort_left-write person-cort_left-password person-cort_left-spwrite">
									<span>&nbsp;新密码：</span> <input type="password"
										class="write_text" id="ctl00_content_pwd1"
										name="ctl00$content$pwd1"> <em id="rou">弱</em> <em
										id="zhong">中</em> <em id="strong">强</em>
								</div>
								<div style="display: none;" id="showr"
									class="person-cort_left-write">
									<i id="pwdwrong" class="writer_wrong pwd"></i><em class="pwd"
										id="txtshow"></em>
								</div>
								<div style="clear: both"
									class="person-cort_left-write person-cort_left-spwrite">
									<span>确认新密码：</span> <input type="password" class="write_text"
										id="ctl00_content_pwd2" name="ctl00$content$pwd2"> <i
										id="wrong" style="display: none" class="writer_wrong againpwd"></i><em
										style="display: none" class="againpwd" id="txtwrong"></em>
								</div>
							</div>
							<div style="margin-left: 90px">
								<input type="submit" style="border-style: None;"
									class="bt1 person-sp-button" id="btnsubmit"
									onclick="return check();" value="立即提交"
									name="ctl00$content$btnsubmit">
							</div>
							<!--找回密码end-->
						</div>
						<!--找回密码end-->
					</div>
					<!-- 右边结束-->
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../../page/footer.jsp"/>
		<script>
	    // 加载底部入口模块
	   		seajs.use("MyDarry/footerJs/footer.js");
		</script>
</body>
</html>

