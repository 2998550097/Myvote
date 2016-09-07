<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>纪念日维护</title>
<link rel="stylesheet" href="css/left.css" />
<link rel="stylesheet" href="css/mydr_jnr.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
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
									<li id="myinfo"><a href="/member/personinfo.html"
										rel="nofollow">个人信息</a></li>
									<li id="password"><a href="/member/mypwd.html"
										rel="nofollow">修改密码</a></li>
									<li id="address"><a href="/member/myaddress.html"
										rel="nofollow">收货地址</a></li>
									<li class="speacil_color" id="li_jnr"><a
										href="/member/mydr_jnr.html">纪念日维护</a></li>
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
						<!--纪念日-->
						<div class="member_jnr">
							<div class="member_ask-tittle">
								<h4>生日.纪念日</h4>
							</div>
							<!--填写纪念日-->
							<div class="member_jnrcor">
								<table width="100%" cellspacing="0" cellpadding="0" border="0"
									class="member_adress-top">
									<tbody>
										<tr class="member_adress-trfirst">
											<td class="member_adress-td1">纪念日</td>
											<td class="member_adress-td2">日期</td>

											<td class="member_adress-td5">操作</td>
										</tr>
									</tbody>
								</table>
								<div class="member_adress-addtop" onclick="addJnr()" id="tjnr">
									<span>添加纪念日</span> <i></i>
								</div>
								<div id="jnr" class="shop_adress-add" style="display: none;">
									<div id="addresses" class="shop_adress-Toadd">
										<label> <em>*</em>纪念日:
										</label> <input type="text" class="true_number" onblur="checkValue();"
											id="jday"><em id="addwrong" style="display: none;"
											class="writer_word">请输入纪念日！</em>
									</div>
									<div id="detailadd" class="shop_adress-Toadd">
										<label class="adress-Toadd_label"> <em>*</em>日期：
										</label> <input type="text" onfocus="WdatePicker({})" id="txtTime"
											onblur="checkValue();"><em id="timewrong"
											style="display: none;" class="writer_word">请输入日期！</em>
									</div>
									<div class="add_adress-save">
										<div class="bt1">
											<span>保存</span>
										</div>
									</div>
								</div>
							</div>
							<!--填写纪念日end-->
							<!--手机-->
							<div class="member_jnrtel">
								<div class="allitmb-tel">
									<div class="member_telshow" style="display: none;">
										<span>手机：</span> <span></span> <i class="mbjnr_bj">编辑</i>
									</div>
									<div class="member_telbj" style="display: block;">
										<span>手机：</span> <input type="text" value="" id="phoneCode">
										<i>保&nbsp;&nbsp;存</i>
									</div>

									<p>该号码仅用于接收短信提醒，未填写则无法接收到提醒短信，请您认真填写。</p>
								</div>
							</div>
							<!--手机end-->
						</div>
						<!--纪念日end-->
					</div>
					<!-- 右边结束-->
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function addJnr() {
			if ($("#jnr").css("display") == "none") {
				$("#jnr").css("display", "block");
			} else if ($("#jnr").css("display") == "block") {
				$("#jnr").css("display", "none");
			}
		}
	</script>
	<jsp:include page="../../page/footer.jsp" />
	<script>
		// 加载底部入口模块
		seajs.use("MyDarry/footerJs/footer.js");
	</script>
</body>
</html>
