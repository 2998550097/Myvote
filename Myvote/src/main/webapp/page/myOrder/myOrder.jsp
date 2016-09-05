<%@ page  pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单中心</title>
<link rel="stylesheet" href="css/left.css" />
<link rel="stylesheet" href="css/myorder.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
	function qbd() {
		$("#qbd").addClass("member_all-nav-click");
		$("#yqx").removeClass("member_all-nav-click");
	}

	function yqx() {
		$("#yqx").addClass("member_all-nav-click");
		$("#qbd").removeClass("member_all-nav-click");
	}
</script>
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
									<li class="speacil_color" id="order"><a
										href="page/myOrder/myOrder.jsp" rel="nofollow"
										class="speacil_color">我的订单</a></li>
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
									<li id="password"><a href="/member/mypwd.html"
										rel="nofollow">修改密码</a></li>
									<li id="address"><a href="/member/myaddress.html"
										rel="nofollow">收货地址</a></li>
									<li id="li_jnr"><a href="/member/mydr_jnr.html">纪念日维护</a></li>
									<li id="zhuanshu"><a href="/member/DarryHome.aspx">专属空间</a></li>
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


					<!--右边的主要内容-->
					<div class="member_cort-right fr">
						<!--我的订单-->
						<div class="member_myorder">
							<!--切换nav-->
							<div class="member_all-nav">
								<div class="member_all-nav-top">
									<ul class="member_all-nav-ul fl">
										<li onclick="qbd()" id="qbd" class="member_all-nav-click">全部订单</li>
										<li onclick="yqx()" id="yqx">已取消订单</li>
									</ul>
									<!--右边-->
									<div class="member_all-nav-right fr" style="">
										<i class="member_tz"></i> <span>订单如需加急处理，请及时联系</span> <a
											onclick="javascript:showxiaon();" style="cursor: pointer"
											target="_blank"> 在线客服&gt;&gt;</a>
									</div>
									<!--右边end-->
								</div>
								<!--黄色线-->
								<div class="member_all-nav-line"></div>
								<!--黄色线end-->
							</div>
							<!--切换nav end-->
							<!--订单-->

							<div class="member_myorder-allorder">
								<div class="member_news-it">

									<script type="text/javascript" src="/njs/orderlist.js"></script>
									<script language="javascript" type="text/javascript">
										function deleteOrder(orderid) {
											if (confirm("确定要取消订单吗?")) {
												window.location.href = "/member/myorder.aspx?action=delete&orderid="
														+ orderid + "&lan=0";
											}

										}
									</script>
									<table class="member_title-table" border="0" cellpadding="0"
										cellspacing="0">
										<tbody>
											<tr class="member_myorder-table-first">
												<td class="myorder-table_td1">订单商品</td>
												<td class="myorder-table_td2">订单金额</td>
												<td class="myorder-table_td2">已付金额</td>
												<td class="myorder-table_td4">预计到货日期</td>
												<td class="myorder-table_td5">订单状态</td>
												<td class="myorder-table_td6">操作</td>
											</tr>
										</tbody>
									</table>

									<table class="member_myorder-table" border="0" cellpadding="0"
										cellspacing="0">
									</table>
								</div>
								<div class="member_news-it" style="display: none">

									<script type="text/javascript" src="/njs/orderlist.js"></script>
									<script language="javascript" type="text/javascript">
										function deleteOrder(orderid) {
											if (confirm("确定要取消订单吗?")) {
												window.location.href = "/member/myorder.aspx?action=delete&orderid="
														+ orderid + "&lan=0";
											}
										}
									</script>
									<table class="member_title-table" border="0" cellpadding="0"
										cellspacing="0">
										<tbody>
											<tr class="member_myorder-table-first">
												<td class="myorder-table_td1">订单商品</td>
												<td class="myorder-table_td2">订单金额</td>
												<td class="myorder-table_td2">已付金额</td>
												<td class="myorder-table_td4">预计到货日期</td>
												<td class="myorder-table_td5">订单状态</td>
												<td class="myorder-table_td6">操作</td>
											</tr>
										</tbody>
									</table>

									<table class="member_myorder-table" border="0" cellpadding="0"
										cellspacing="0">

										<tbody>
											<tr class="member_myorder-table-sec">
												<td colspan="4" class="myorder-table-sec_td1">订单号：20160831091924558523</td>
												<td colspan="2" class="myorder-table-sec_td2">下单时间：2016/8/31</td>
											</tr>
											<tr class="member_myorder-table-third">
												<td class="myorder-table_td1">

													<div class="myorder-table-third-cp">
														<div class="img_left fl">
															<a href="/darry_ring/A06004/Z03023278801.html"> <img
																src="http://img.darryring.com/userfiles/image/product/2015093019140361614ead1d.jpg"
																height="55" width="55">
															</a>
														</div>
														<div class="img_right fr">
															<a href="/darry_ring/A06004/Z03023278801.html">
																<p>TRUE LOVE系列 典雅 [A06004]</p>
															</a>

														</div>
													</div>

												</td>
												<td class="myorder-table_td3">

													<div class="myorder-table-third-cp"
														style="height: 55px; line-height: 55px; font-family: 微软雅黑;">
														¥13999</div>

												</td>
												<td class="myorder-table_td2" style="font-family: 微软雅黑;">
													¥0</td>
												<td class="myorder-table_td4" style=""></td>
												<td class="myorder-table_td5">已取消</td>
												<td class="myorder-table_td6"><a
													href="/darry_ring/A06004/Z03023278801.html"
													class="myorder-table_pay">重新购买</a>
													<p>
														<a
															href="/member/orderview.aspx?orderid=20160831091924558523&amp;lan=0">查看</a>
													</p>
													<p style="display: normal"></p></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!--我的订单end-->
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
