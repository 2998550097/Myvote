<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>收货地址</title>
<link rel="stylesheet" href="css/left.css" />
<link rel="stylesheet" href="css/myaddress.css" />
<script type="text/jscript" src="js/jquery.min.js"></script>
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
									<li id="password"><a href="/member/mypwd.html"
										rel="nofollow">修改密码</a></li>
									<li class="speacil_color" id="address"><a
										href="/member/myaddress.html" rel="nofollow">收货地址</a></li>
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
					<!--右边开始 -->
					<div class="member_cort-right fr">
						<!--收货地址-->
						<div class="member_adress">
							<div class="myorder-xq-news_top">
								<p>收货地址</p>
							</div>
							<!--收货地址选择-->
							<table cellspacing="0" cellpadding="0" border="0"
								class="member_adress-top">
								<tbody>
									<tr class="member_adress-trfirst">
										<td class="member_adress-td1">收件人姓名</td>
										<td class="member_adress-td2">详细地址</td>
										<td class="member_adress-td3">联系方式</td>
										<td class="member_adress-td4">邮政编码</td>
										<td class="member_adress-td5">操作</td>
									</tr>
								</tbody>
							</table>
							<!--收货地址选择end-->
							<div id="add" class="member_adress-addtop" onclick="addAdr()">
								<span>添加新地址</span> <i></i>
							</div>
							<!--新加地址-->
							<div class="shop_adress-add" id="Adr" style="display: none">
								<div style="" id="addresses" class="shop_adress-Toadd">
									<label> <em>*</em>地&nbsp;&nbsp;&nbsp;&nbsp;区：
									</label> <select id="province">
										<option value="-1">请选择省份</option>
										<option value="340000">安徽省</option>
										<option value="110000">北京市</option>
										<option value="350000">福建省</option>
										<option value="620000">甘肃省</option>
										<option value="440000">广东省</option>
										<option value="450000">广西壮族自治区</option>
										<option value="520000">贵州省</option>
										<option value="460000">海南省</option>
										<option value="130000">河北省</option>
										<option value="410000">河南省</option>
										<option value="230000">黑龙江省</option>
										<option value="420000">湖北省</option>
										<option value="430000">湖南省</option>
										<option value="220000">吉林省</option>
										<option value="320000">江苏省</option>
										<option value="360000">江西省</option>
										<option value="210000">辽宁省</option>
										<option value="150000">内蒙古自治区</option>
										<option value="640000">宁夏回族自治区</option>
										<option value="630000">青海省</option>
										<option value="370000">山东省</option>
										<option value="140000">山西省</option>
										<option value="610000">陕西省</option>
										<option value="310000">上海市</option>
										<option value="510000">四川省</option>
										<option value="120000">天津市</option>
										<option value="540000">西藏自治区</option>
										<option value="650000">新疆维吾尔自治区</option>
										<option value="530000">云南省</option>
										<option value="330000">浙江省</option>
										<option value="500000">重庆市</option>
										<option value="820000">香港</option>
									</select> <span>市：</span> <select id="city">
										<option value="-1">请选择城市</option>
									</select> <span>县：</span> <select id="district">
										<option value="-1">请选择区县</option>
									</select> <span id="addid" style="display: none"><i
										class="writer_wrong"></i><em id="addwrong" class="writer_word">信息报错样式显示！</em></span>
									<span id="addy" style="display: none"><i
										class="writer_right"></i></span>
								</div>
								<div id="detailadd" class="shop_adress-Toadd">
									<label class="adress-Toadd_label"> <em>*</em>详细地址：
									</label>
									<textarea id="street"></textarea>
									<span id="streeid" style="display: none"><i
										class="writer_wrong"></i><em id="strwrong" class="writer_word">信息报错样式显示！</em></span>
									<span id="streey" style="display: none"><i
										class="writer_right"></i></span>
								</div>
								<div id="pname" class="shop_adress-Toadd">
									<label> <em>*</em>收货人：
									</label> <input type="text" class="true_name" id="addressName">
									<span id="shrid" style="display: none"><i
										class="writer_wrong"></i><em id="shrwrong" class="writer_word"></em></span><span
										id="shry" style="display: none"><i class="writer_right"></i></span>
								</div>
								<div id="post" class="shop_adress-Toadd">
									<label> <em>*</em>邮政编码：
									</label> <input type="text" class="true_number" id="postcode">
									<span id="postid" style="display: none"><i
										class="writer_wrong"></i><em id="postwrong"
										class="writer_word">信息报错样式显示！</em></span> <span id="posty"
										style="display: none"><i class="writer_right"></i></span>
								</div>
								<div style="" id="lx" class="shop_adress-Toadd">
									<label> <em>*</em>手机号码：
									</label> <input type="text" id="mobile"> <span
										class="oth_color">或</span> <span>固定电话：</span> <input
										type="text" id="telephone"> <span id="telid"
										style="display: none"><i class="writer_wrong"></i><em
										id="telwrong" class="writer_word">信息报错样式显示！</em></span> <span
										id="tely" style="display: none"><i class="writer_right"></i></span>
								</div>
								<div style="" id="divsmsmobile" class="shop_adress-Toadd">
									<label> <em>*</em>购买人手机：
									</label> <input type="text" class="true_number" id="smsmobile">
									<span id="smsmobileid" style="display: none"><i
										class="writer_wrong"></i><em id="smsmobilewrong"
										class="writer_word">信息报错样式显示！</em></span> <span id="smsmobiley"
										style="display: none"><i class="writer_right"></i></span>
								</div>
								<div class="shop_adress-sp">
									<input type="checkbox" id="cbDefaultAddress"> <label
										for="cbDefaultAddress" class="add_adress-splabel">
										设为默认地址</label>
								</div>
								<div class="add_adress-save">
									<div class="bt1">
										<span>保存此地址</span>
									</div>
								</div>
							</div>
							<!--新加地址end-->
						</div>
						<!--收货地址end-->
					</div>
					<!-- 右边结束-->
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function addAdr() {
			if ($("#Adr").css("display") == "none") {
				$("#Adr").css("display", "block");
			} else if ($("#Adr").css("display") == "block") {
				$("#Adr").css("display", "none");
			}
		}
	</script>
	
	<jsp:include page="../../page/footer.jsp"/>
		<script>
	    // 加载底部入口模块
	   		seajs.use("MyDarry/footerJs/footer.js");
		</script>
</body>
</html>
