<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>我的DR</title>
		<link rel="stylesheet" href="css/mydr.css" />
		<link rel="stylesheet" href="css/left.css"  />
		
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
						<span>您当前的位置：</span>
						<span id="ctl00_content_website_SiteMapPath1">
							<a href="#ctl00_content_website_SiteMapPath1_SkipLink"></a>
							<span><a target="_blank" href="/">Darry Ring</a></span>
							<span><em>&gt;</em></span>
							<span><span>我的DR</span></span>
				            <a id="ctl00_content_website_SiteMapPath1_SkipLink"></a>
						</span>
					</div>
					<div class="meber_cort">
						<div class="member_cort-left fl">
						    <!--我的DR-->
						    <div class="member_cortleft-tittle">
						        <i class="mb_home"></i><a href="/member/mydr.html" rel="nofollow"> 我的  DR</a>
						    </div>
						    <!--我的DR end-->
						    <ul class="member_cort-ul">
						        <li>
						            <h3>-订单中心-</h3>
						            <ul class="member_ul-dr">
						                <li id="order"><a href="page/myOrder/myOrder.jsp" rel="nofollow">我的订单</a></li>
						                <li id="ask"><a href="page/myOrder/myEvaluate.jsp" rel="nofollow">我要评价</a></li>
						                <li id="cart"><a target="_blank" href="page/Cart.jsp" rel="nofollow">我的购物车</a></li>
						                <li id="collect"><a href="page/myOrder/myFavorites.jsp" rel="nofollow">我的收藏</a></li>
						                <li id="yuyue" class="no_border"><a href="page/myOrder/myAppointment.jsp" rel="nofollow">我的预约</a></li>
						            </ul>
						        </li>
						        <li>
						            <h3>-售后服务-</h3>
						            <ul class="member_ul-dr">
						                <li id="aftersale"><a href="page/myOrder/afterSale.jsp" rel="nofollow">售后办理</a></li>
						            </ul>
						        </li>
						        <li>
						            <h3>-帐户管理-</h3>
						            <ul class="member_ul-dr">
						                <li id="myinfo"><a href="/member/personinfo.html" rel="nofollow">个人信息</a></li>
						                <li id="password"><a href="/member/mypwd.html" rel="nofollow">修改密码</a></li>
						                <li id="address"><a href="/member/myaddress.html" rel="nofollow">收货地址</a></li>
						                <li id="li_jnr"><a href="/member/mydr_jnr.html">纪念日维护</a></li>
						                <li id="zhuanshu"><a href="/member/DarryHome.aspx">专属空间</a></li>
						                <li id="news" class="no_border"><a href="/member/mynews.html" rel="nofollow">系统消息</a></li>
						            </ul>
						        </li>
						    </ul>
						</div>
						<script> $(function () {
					        if ("" == "news") { $("#").addClass("no_border"); }
					          $("#").addClass("speacil_color");
					      });
					      
						</script>
						<div class="member_cort-right fr">
							<!--我的dr首页-->
							<div class="member_my_index">
								<!--第一块-->
								<div class="member_cortr-first">
									<!--左边-->
									<div class="member_cortr-first-left fl">
										<!--名字-->
										<div class="member_first-left-top">
							
											<div class="mb_theleft fl">
												<span>您好！</span> <a href="/member/personinfo.html">（个人信息完善）</a>
											</div>
											<div class="mb_theright fl">
												<i class="mb_email"></i> <a href="/member/mynews.html"><span
													class="vtop">系统消息</span>（0）</a>
											</div>
							
										</div>
										<!--名字end-->
										<!--订单提醒-->
										<div class="member_first-left-sec">
											<div class="mb_theright-sec fl">
												<p>
													<span>订单提醒：</span> <a href="/member/myorder.html"><span
														class="vtop">待处理订单</span>（0）</a> <a href="/member/myevaluate.html"><span
														class="vtop">待评价</span>（0）</a>
							
												</p>
							
											</div>
											<div class="mb_theright fl">
												<p>
													<span>安全级别：</span> <em id="rou" class="mb_red-color">弱</em> <em
														id="zhong">中</em> <em id="strong">强</em>
												</p>
												<span id="span_pwd" style="display: none"></span>
												<script language="javascript" type="text/javascript">
													$(function() {
														var pwd = document.getElementById("span_pwd").innerHTML;
							
														if (pwd.length >= 5 && pwd.length < 9) {
															$("#rou").addClass('mb_red-color');
															$("#zhong").removeClass('mb_red-color');
															$("#strong").removeClass('mb_red-color');
														}
														if (pwd.length >= 9 && pwd.length < 12) {
															$("#rou").addClass('mb_red-color');
															$("#zhong").addClass('mb_red-color');
															$("#strong").removeClass('mb_red-color');
							
														}
														if (pwd.length >= 12 && pwd.length < 20) {
															$("#rou").addClass('mb_red-color');
															$("#zhong").addClass('mb_red-color');
															$("#strong").addClass('mb_red-color');
														}
							
													});
												</script>
												<p class="oth_span">
													<span>为了您帐户安全，建议进行</span> <a href="/member/mypwd.html">设置</a>
												</p>
											</div>
										</div>
										<!--订单提醒end-->
									</div>
									<!--左边end-->
							
									<!--右边-->
									<div class="member_cortr-first-right fr">
										<img src="page/myOrder/images/mem.jpg" height="90" width="90">
										<p>
											<a href="/member/personuploadtx.html">编辑个人资料</a>
										</p>
									</div>
									<!--右边end-->
								</div>
								<!--第一块end-->
								<!--第二块-->
								<!--快捷通道-->
								<h3>快捷通道</h3>
								<ul class="member_cortr-sec">
									<li class="mb_border">
										<div class="member_cortr-sec-left fl"></div>
										<div class="member_cortr-sec-right fl">
											<h4>
												<a href="myorder.html">订单查询</a>
											</h4>
											<p>-修改订单</p>
											<p>-订单详情</p>
										</div>
									</li>
									<li class="">
										<div class="member_cortr-sec-left member_secimg_2 fl"></div>
										<div class="member_cortr-sec-right fl">
											<h4>
												<a href="aftersale.html">办理售后</a>
											</h4>
											<p>-更换手寸</p>
											<p>-终身保养</p>
										</div>
									</li>
									<li class="">
										<div class="member_cortr-sec-left member_secimg_3 fl"></div>
										<div class="member_cortr-sec-right fl">
											<h4>
												<a href="mypwd.html">修改密码</a>
											</h4>
											<p>-手机修改</p>
											<p>-邮箱修改</p>
										</div>
									</li>
									<li class="">
										<div class="member_cortr-sec-left member_secimg_4 fl"></div>
										<div class="member_cortr-sec-right fl">
											<h4>
												<a href="DarryHome.aspx">专属空间</a>
											</h4>
											<p>-记录幸福</p>
											<p>-分享幸福</p>
										</div>
									</li>
								</ul>
								<!--快捷通道end-->
								<!--第二块end-->
								<!--第三块-->
							
								<!--我的足迹-->
							
							
								<div class="">
									<div class="read_it">
										<p class="read_jl">您的浏览记录</p>
											<ul class="read_ul" id="u_history">
												<li>
													<div class="read_top">
														<a rel="nofollow" href="/darry_ring/A06004/Z03022478801.html"
															target="_blank"> <img alt="TRUE LOVE系列 典雅 30分G色"
															src="http://img.darryring.com/userfiles/image/product/2015093019140361614ead1d.jpg">
														</a>
													</div>
													<p>
														<a href="/darry_ring/A06004/Z03022478801.html" target="_blank">
															TRUE LOVE系列 典雅 30分G色 </a>
													</p>
													<p>
														<span>¥15699</span>
													</p>
												</li>
											</ul>
										<ul class="read_ul" id="u_rx" style="display: none;">
							
										</ul>
									</div>
									<!--向左-->
									<div class="read_pre" style="display: none"></div>
									<div class="read_next" style="display: none"></div>
								</div>
							
								<!--我的足迹end-->
								<!--第三块end-->
								<script language="javascript" type="text/javascript">
									function getPro(id) {
										if (id == 1) {//历史记录
											document.getElementById("u_history").style.display = "block";
											document.getElementById("u_rx").style.display = "none";
										} else { //热销
											document.getElementById("u_history").style.display = "none";
											document.getElementById("u_rx").style.display = "block";
										}
									}
								</script>
							</div>
							<!--我的dr首页end-->

						</div>
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
