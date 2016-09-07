<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>售后办理</title>
<link rel="stylesheet" href="css/left.css" />
<link rel="stylesheet" href="css/aftersale.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
	function banli() {
		$("#banli").addClass("member_all-nav-click");
		$("#record").removeClass("member_all-nav-click");
	}

	function record() {
		$("#record").addClass("member_all-nav-click");
		$("#banli").removeClass("member_all-nav-click");
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
		debug : true,
		base : "",
		alias : {
			"jquery" : "MyDarry/headerJs/jquery.js"
		}
	});
	// 加载头部入口模块
	seajs.use("MyDarry/headerJs/header.js");
</script>

</head>
<body>
	<jsp:include page="../../page/header.jsp" />
	<jsp:include page="../../page/nav.jsp" />
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
									<li id="myinfo"><a href="page/myOrder/personInfo.jsp"
										rel="nofollow">个人信息</a></li>
									<li id="password"><a href="page/myOrder/myPwd.jsp"
										rel="nofollow">修改密码</a></li>
									<li id="address"><a href="page/myOrder/myAddress.jsp"
										rel="nofollow">收货地址</a></li>
									<li id="li_jnr"><a href="page/myOrder/mydr-Jnr.jsp">纪念日维护</a></li>
									<li id="news" class="no_border"><a
										href="page/myOrder/myNews.jsp" rel="nofollow">系统消息</a></li>
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
						<!--售后办理-->
						<div class="member_service">
							<!--切换nav-->
							<div class="member_all-nav">
								<div class="member_all-nav-top">
									<ul class="member_all-nav-ul fl">
										<li class="member_all-nav-click" id="banli" onclick="banli()">办理售后</li>
										<li id="record" onclick="record()">售后记录</li>
									</ul>
									<!--右边-->
									<div class="member_all-nav-right fr">
										<i class="member_tz"></i> <span>网站办理售后功能推出，如遇到售后问题，请及时联系<a
											target="_blank" style="cursor: pointer"
											onclick="javascript:showxiaon();"> 在线客服</a>！
										</span>
									</div>
								</div>
								<!--黄色线-->
								<div class="member_all-nav-line"></div>
								<!--黄色线end-->
							</div>
							<!--切换nav end-->
							<!--办理售后与售后记录-->
							<div class="member_service-all">
								<!--办理售后-->
								<div class="member_service-custre member_news-it">
									<div class="member_service-top">
										<p>1.订单在配送送达成功状态可办理售后服务。</p>
										<p>2.自商品签收之日起，Darry Ring按照商品属性为您提供售后服务。</p>
									</div>
									<!--售后的表格-->
									<table cellspacing="0" cellpadding="0" border="0"
										class="member_service-table">

									</table>
									<!--售后的表格-->
								</div>
								<!--办理售后end-->
								<!--售后记录-->
								<div style="display: none"
									class="member_service-custre member_news-it">
									<!--售后记录的表格-->
									<table cellspacing="0" cellpadding="0" border="0"
										class="member_service-tablejl">
										<tbody>
											<tr class="service-tablejl-trfirst">
												<td class="service-tablejl-td2">服务单号</td>
												<td class="service-tablejl-td3">相关订单</td>
												<td class="service-tablejl-td4">制单日期</td>
												<td class="service-tablejl-td5">类型</td>
												<td class="service-tablejl-td6">状态</td>
												<td class="service-tablejl-td7">详细信息</td>
											</tr>

										</tbody>
									</table>
									<!--售后记录的表格end-->
								</div>
								<!--售后记录end-->
							</div>
							<!--办理售后与售后记录end-->
						</div>
						<!--售后办理end-->
					</div>
					<!-- 右边结束-->
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../../page/footer.jsp" />
	<script>
		// 加载底部入口模块
		seajs.use("MyDarry/footerJs/footer.js");
	</script>
</body>
</html>

