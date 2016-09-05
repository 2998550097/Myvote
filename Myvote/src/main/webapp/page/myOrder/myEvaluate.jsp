<%@ page  pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>我要评价</title>
<link rel="stylesheet" href="css/myevaluate.css" />
<link rel="stylesheet" href="css/left.css" />
<link rel="stylesheet" href="css/myorder.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
	function ypl() {
		$("#ypl").addClass("member_all-nav-click");
		$("#dpl").removeClass("member_all-nav-click");
	}

	function dpl() {
		$("#dpl").addClass("member_all-nav-click");
		$("#ypl").removeClass("member_all-nav-click");
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
									<li id="order"><a href="page/myOrder/myOrder.jsp"
										rel="nofollow">我的订单</a></li>
									<li class="speacil_color" id="ask"><a
										href="page/myOrder/myEvaluate.jsp" rel="nofollow">我要评价</a></li>
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

					<!--右边开始 -->
					<script type="text/javascript">
						function ypl() {
							$("#ypl").addClass("member_all-nav-click");
							$("#dpl").removeClass("member_all-nav-click");
						}

						function dpl() {
							$("#dpl").addClass("member_all-nav-click");
							$("#ypl").removeClass("member_all-nav-click");
						}
					</script>

					<div class="member_cort-right fr">
						<!--我的评价-->
						<div class="member_ask">
							<!--切换nav-->
							<div class="member_all-nav">
								<div class="member_all-nav-top">
									<ul class="member_all-nav-ul fl">
										<li id="dpl" class="member_all-nav-click" onclick="dpl()">待评论商品(0)</li>
										<li id="ypl" onclick="ypl()">已发表的评论</li>
									</ul>
									<!--右边-->
									<div class="member_all-nav-right fr">
										<i class="member_tz"></i> <span>您可以对已成功购买的<em>0件</em>商品进行评论,和大家说说您的切身感受吧。
										</span>
									</div>
									<!--右边end-->
								</div>
								<!--黄色线-->
								<div class="member_all-nav-line"></div>
								<!--黄色线end-->
							</div>
							<!--切换nav end-->
							<!--评论以及已经评论-->
							<div class="member_ask-all">
								<!--评论的产品-->
								<div class="member_news-it">
									<table class="member_ask-table" border="0" cellpadding="0"
										cellspacing="0">
										<tbody>
											<tr class="ask-table-trfirst">
												<td class="ask-table-td1">商品</td>
												<td class="ask-table-td2">购买时间</td>
												<td class="ask-table-td3">操作</td>
											</tr>

										</tbody>
									</table>
								</div>
								<!--评论的产品end-->
								<!--已发表的评论-->
								<div class="member_news-it" style="display: none">
									<table class="member_ask-table" border="0" cellpadding="0"
										cellspacing="0">
										<tbody>
											<tr class="ask-table-trfirst">
												<td class="ask-table-td1">商品</td>
												<td class="ask-table-td2">购买时间</td>
												<td class="ask-table-td3">操作</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!--已发表的评论end-->
							</div>
							<!--评论以及已经评论end-->
						</div>
						<!--我的评价end-->
					</div>
					<div class="member_cort-right fr">
						<!--我的评价-->
						<div class="member_ask" style="display: none;">
							<!--切换nav-->
							<div class="member_all-nav">
								<div class="member_all-nav-top">
									<ul class="member_all-nav-ul fl">
										<li class="member_all-nav-click">待评论商品(0)</li>
										<li>已发表的评论</li>
									</ul>
									<!--右边-->
									<div class="member_all-nav-right fr">
										<i class="member_tz"></i> <span>您可以对已成功购买的<em>0件</em>商品进行评论,和大家说说您的切身感受吧。
										</span>
									</div>
									<!--右边end-->
								</div>
								<!--黄色线-->
								<div class="member_all-nav-line"></div>
								<!--黄色线end-->
							</div>
							<!--切换nav end-->
							<!--评论以及已经评论-->
							<div class="member_ask-all">
								<!--评论的产品-->
								<div class="member_news-it">
									<table class="member_ask-table" border="0" cellpadding="0"
										cellspacing="0">
										<tbody>
											<tr class="ask-table-trfirst">
												<td class="ask-table-td1">商品</td>
												<td class="ask-table-td2">购买时间</td>
												<td class="ask-table-td3">操作</td>
											</tr>

										</tbody>
									</table>
								</div>
								<!--评论的产品end-->
								<!--已发表的评论-->
								<div class="member_news-it" style="display: none">
									<table class="member_ask-table" border="0" cellpadding="0"
										cellspacing="0">
										<tbody>
											<tr class="ask-table-trfirst">
												<td class="ask-table-td1">商品</td>
												<td class="ask-table-td2">购买时间</td>
												<td class="ask-table-td3">操作</td>
											</tr>
										</tbody>
									</table>
								</div>
								<!--已发表的评论end-->
							</div>
							<!--评论以及已经评论end-->
						</div>
						<!--我的评价end-->
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
