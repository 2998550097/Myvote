<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="Darrying/css/same.css" />
<script src="Darrying/js/jquery.js"></script>
<script type="text/javascript" src="Darrying/js/index.js"></script>
<script src="Darrying/js/sea.js"></script>
<script>
			// seajs 配置
			seajs.config({
				debug: true,
				base: "/Three/",
				alias: {
					"jquery": "Darrying/js/jquery.js"
				}
			});
			// 加载头部入口模块
			seajs.use("Darrying/js/header.js");
		</script>
<link rel="stylesheet" href="Darrying/css/common.css" />
<script type="text/javascript" src="Darrying/js/header.js"></script>

<title>Darry Ring实体店分布_戴瑞珠宝实体店_戴瑞珠宝官网</title>
<meta name="Keywords" content="Darry Ring实体店，戴瑞珠宝实体店" />
<link rel="stylesheet" href="Darrying/css/index.css" />
<link rel="stylesheet" type="text/css" href="Darrying/css/dr.css" />
<link rel="stylesheet" type="text/css" href="Darrying/css/dr_tyd.css?v=1.3.5" />
<link rel="stylesheet" href="Darrying/css/newshop.css" />
<script type="text/javascript" src="Darrying/js/WdatePicker.js"></script>
<script type="text/javascript" src="Darrying/js/newshop.js"></script>

<style>
.cort {
	background: #fff;
}
</style>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	list-style-type: none;
}

a, img {
	border: 0;
}

body {
	color: #693f3a;
	font-size: 15px;
	font-family: "Overlock", sans-serif;
}
/* slider */
#slider {
	width: 843px;
	height: 334px;
	margin: 0 auto;
}

#slider img {
	display: block;
}

#slider-mask {<!--
	background: url(Darrying/images/slider.png) no-repeat; -->
	width: 1043px;
	height: 374px;
	margin: 40px auto 0 auto;
	padding-top: 43px;
	position: relative;
}

<!--
#slider-mask #prev {
	position: absolute;
	top: 165px;
	left: 60px;
	cursor: pointer;
	z-index: 99
}

#slider-mask #next {
	position: absolute;
	top: 165px;
	right: 60px;
	cursor: pointer;
	z-index: 99
}
-->
</style>
<script type="text/javascript">
			var pagefirst = true;
			$(function() {
				//省下拉框ID
				var province = "#ctl00_content_ddlProvince";
				var city = "#ctl00_content_ddlcity";
				//省下拉框onchange事件
				$(province).change(function() {
					$("#ctl00_content_ddlcity option").remove();

					$.get("/nAPI/AddressInfo.ashx?action=proCity&code=" + $(this).val(), function(msg) {

						for(var i = 0; i < msg.length; i++) {

							$(city).append($("<option value=\"" + msg[i].id + "\">" + msg[i].shopname + "</option>"));
						}
					});
				});

				var proshop = $("#ctl00_content_ddlPro"); //预约
				var shopcity = $("#ctl00_content_ddlcity2");
				$(proshop).change(function() {
					$("#ctl00_content_ddlcity2 option").remove();
					$.get("/nAPI/AddressInfo.ashx?action=proShop&code=" + $(this).val(), function(msg) {
						$.get("/nAPI/yuyue.ashx?action=isOpenShop", {
							shopid: msg[0].id
						}, function(data) { //店铺是否开
							if(data == "1") {
								isOpenShop = "1";
								$("#p_yuyue").show();
								$("#p_open").hide();
								$("#p_yuy").show();
							} else {
								isOpenShop = "0";
								$("#p_yuyue").hide();
								$("#p_open").show();
								$("#p_yuy").hide();
							}
						});

						for(var i = 0; i < msg.length; i++) {
							$(shopcity).append($("<option value=\"" + msg[i].id + "\">" + msg[i].shopname + "</option>"));
						}
					});
				});

				$(province).change();

				$(shopcity).change(function() {
					$.get("/nAPI/yuyue.ashx?action=isOpenShop", {
						shopid: $(this).val()
					}, function(data) { //店铺是否开
						if(data == "1") {
							isOpenShop = "1";
							$("#p_yuyue").show();
							$("#p_open").hide();
							$("#p_yuy").show();
						} else {
							isOpenShop = "0";
							$("#p_yuyue").hide();
							$("#p_open").show();
							$("#p_yuy").hide();
						}
					});
				});
			});

			function bindDdlData(cid, data) {
				$(cid).append($("<option value=\"" + data.code + "\">" + data.name + "</option>"));
			}

			var shopCurrentNum = 1;

			function shopLoadData(currentPageNum) {
				var pro = $("#ctl00_content_ddlProvince").val();
				var city = $("#ctl00_content_ddlcity").val();

				$.get("/nAPI/shopList.aspx?lan=0&action=seach&pagenum=" + currentPageNum + "&pro=" + pro + "&city=" + city, function(data) {
					$("#div_shoplist").empty();
					$("#div_shoplist").html(data);
					shopCurrentNum = currentPageNum;
					__CurrentPagingShop.ReCreate(ZSSearchPageCount, currentPageNum);
					//shopLoadEvent(ZSSearchPageCount);
				});
			}

			$(function() {
				shopLoadData(1);
				__CurrentPagingShop.CustomChanged = function(num) {

					shopLoadData(num);
				};
				setTimeout(function() {
					shopLoadData(shopCurrentNum);
				}, 300);
			});

			function CommentToNext() {
				if(ZSSearchPageCount >= (shopCurrentNum + 1)) {
					__CurrentPagingShop.Next();
				}
			}

			function toSearch() {
				shopLoadData(1);
			}
		</script>
<title></title>
</head>

<body>
	<form name="aspnetForm" method="post" action="/shopyd" id="aspnetForm">
		<div>
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="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" />
		</div>

		<div>

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="BB45B36D" />
		</div>
		<div>
			<script type="text/javascript" src="js/jquery.min.js"></script>
			<script type="text/javascript" src="js/jquery.cycle.all.min.js"></script>
			<script type="text/javascript">
				$(document).ready(function(){
					$('#slider').cycle({ 
						prev:   '#prev', 
						next:   '#next', 
						timeout: 3500 
					});
				});
				</script>
			<script>
					function logout() {
						if(window.confirm('确定退出吗？')) {

							$.get("/nAPI/QuitExit.ashx", function(data) {
								window.location.href = "/";
							});
						}
					}
				</script>
			<!-- 头部 -->
			<jsp:include page="header.jsp" />
			<!-- 导航 -->
			<jsp:include page="nav.jsp" />
			<!--店铺主题-->
			<!--白色底面包屑-->
			<div class="dr-bread w1000">
				<div class="drring_all-bread">
					<span><a href="">Darry Ring</a></span> <span>></span> <span></span>
					<span>Darry Ring实体店分布</span>
				</div>
			</div>
			<!--白色底面包屑end-->
			<div class="shopMain fix">
				<!--banner 焦点图-->
				<div class="shopBanner">
					<ul class="shopBanPics fix" id="banner">

						<li><a href="http://www.darryring.com/zt/hf.html"><img
								src="Darrying/images/sh_ad.jpg" alt="" /></a></li>
						<li><a href="http://www.darryring.com/hkstore"><img
								src="Darrying/images/201511141709120e71fba419.jpg" alt="" /></a></li>
						<li><a href="http://www.darryring.com/hzxgddstore"><img
								src="Darrying/images/20160728145229b1a55a2ae7.jpg" alt="" /></a></li>
						<li><a href="http://www.darryring.com/lzgfbhstore"><img
								src="Darrying/images/2016-08-24_155417.png" alt="" /></a></li>
					</ul>
					<div class="shopBanNav" id="shopBanMenu">
						<div class="shopBanNavBg"></div>
						<a href="http://www.darryring.com/zt/hf.html">上海红坊店</a> <a
							href="http://www.darryring.com/hkstore">香港店</a> <a
							href="http://www.darryring.com/hzxgddstore">杭州星光大道店</a> <a
							class="last" href="http://www.darryring.com/lzgfbhstore">兰州国芳百货店</a>
					</div>
				</div>
				<!--banner end-->
				<!--server 服务说明-->
				<div class="shopServer fix">
					<div class="shopServerDic shopzjsd">
						<h3>钻戒试戴</h3>
						<p>专人介绍，实体店试戴</p>
					</div>
					<div class="shopServerDic shopgzzd">
						<h3>购钻指导</h3>
						<p>专家指导，量身定制您心仪的钻戒。</p>
					</div>
					<div class="shopServerDic shopzjby">
						<h3>钻戒保养</h3>
						<p>提供钻戒清洗等保养服务</p>
					</div>
					<div class="shopServerDic shopzjsj">
						<h3>钻戒升级</h3>
						<p>为您的钻戒提供更换款式、 以小换大等升级服务咨询。</p>
					</div>
				</div>
				<!--server end-->
				<!--search 搜索模块-->
				<div class="shopSearch" style="">
					<span> <label for="shop-countries">国家/地区：</label> <select
						name="" id="shop-countries">
							<option value="">中国大陆</option>
					</select>

					</span> <span> <label for="shop-provinces">所在省份：</label> <select
						name="ctl00$content$ddlProvince" id="ctl00_content_ddlProvince">
							<option value="-1">全国</option>
							<option value="820000">香港</option>
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
							<option value="210000">辽宁省</option>
							<option value="640000">宁夏回族自治区</option>
							<option value="630000">青海省</option>
							<option value="370000">山东省</option>
							<option value="140000">山西省</option>
							<option value="610000">陕西省</option>
							<option value="310000">上海市</option>
							<option value="510000">四川省</option>
							<option value="120000">天津市</option>
							<option value="530000">云南省</option>
							<option value="330000">浙江省</option>
							<option value="500000">重庆市</option>

					</select></span> <span> <label for="shop-city">所在城市：</label> <select
						name="ctl00$content$ddlcity" id="ctl00_content_ddlcity">

					</select></span> <a class="searchBtn inlineBlock" href="javascript:toSearch()">搜索</a>
				</div>
				<!--search end-->
				<!--shopList 店铺列表-->
				<div class="shopListMain" id="div_shoplist"></div>
				<!--shopList end-->
				<!--pager 分页页码-->

				<script src="js/paging.js" type="text/javascript"></script>
				<script type="text/javascript">
						var __CurrentPagingShop = new Paging("ctl00_content_zsPaging_pagingDiv");
						$(document.body).ready(function() {
							__CurrentPagingShop.Create(0, 1);
						});
					</script>
				<!--分页-->
				<div id="ctl00_content_zsPaging_pagingDiv" class="paging_all">
					<div class="paging_all-cort">
						<ul class="paging fl">

						</ul>
						<p class="pag_p fl">
							<span></span> <input name="ctl00$content$zsPaging$pag_txt"
								type="text" id="ctl00_content_zsPaging_pag_txt" class="pag_txt" />页
							<input type="button" value="确定"
								onclick="__CurrentPagingShop.PageIndexChaned($('#ctl00_content_zsPaging_pag_txt').val());$('#ctl00_content_zsPaging_pag_txt').val('');"
								class="pag_bt" />
						</p>
					</div>
				</div>
				<!--分页end-->

				<!--pager end-->
			</div>
			<!--店铺主体 end-->
			<!--shopMap 店铺地图-->
			<div class="shopMapMain" id="shopMapMain"
				style="opacity: 1; display: none;">
				<div class="shopMapBg" id="shopMapBg"></div>
				<div class="shopMap" id="shopMap">
					<div class="shopMapInfo">
						<h5 id="h_shopname">Darry Ring北京店</h5>
						<p id="p_address">地址：北京市东二环朝阳门桥银河SOHO中心负一层B-2109（朝阳门地铁站G出口）</p>
						<a href="javascript:;" class="closeMap" id="closeMapBtn"></a>
					</div>
					<iframe frameborder="0" id="shopIframe" width="960" height="500"
						marginheight="0" marginwidth="0" scrolling="no"
						src="http://www.darryring.com/dt/szdt.htm"></iframe>
				</div>
			</div>
			<!--shopMap end-->

			<!--预约成功提示框-->
			<div class="shopTips" id="shopTips">
				<div class="shopTipsBg"></div>
				<div class="shopTipsMain">
					<a href="javascript:;" class="closeTips" id="closeTipsBtn"></a>
					<h6>恭喜您！您已经预约成功。</h6>
					<!--开业前显示内容-->
					<p id="p_open" class="openIng">
						我们将以短信/邮件通知您,<br /> 请注意查收，谢谢！
					</p>
					<!--开业后显示内容-->
					<p id="p_yuy" class="open" style="display: none">我们将以短信/邮件通知您，请注意查收，谢谢！</p>
					<span>弹窗将在 <i id="countdown">3</i> 秒后自动关闭
					</span>
				</div>
			</div>
			<!--预约成功提示框 en

<!--attention 商品推荐-->
			<div class="attention">
				<h6>大家都在关注</h6>
				<ul class="attentionList fix">

					<li><a href="/darry_ring/96.html"> <img
							src="Darrying/images/20140901160038b957ac6c35.jpg" width="222"
							height="222" alt="BELIEVE系列 典雅" />
							<p>
								BELIEVE系列 典雅 30分 J色<span><i>￥9999</i>销量：21384</span>
							</p>
					</a></li>

					<li><a href="/darry_ring/171.html"> <img
							src="Darrying/images/20160620101350d2f9fcb5a8.jpg" width="222"
							height="222" alt="MY HEART 系列 奢华款" />
							<p>
								MY HEART 系列 奢华款 999分 D色<span><i>￥15200000</i>销量：18354</span>
							</p>
					</a></li>

					<li><a href="/darry_ring/340.html"> <img
							src="Darrying/images/201509301423462d2e8ea34f.jpg" width="222"
							height="222" alt="I SWEAR系列 简奢款" />
							<p>
								I SWEAR系列 简奢款 100分 G色<span><i>￥120499</i>销量：12395</span>
							</p>
					</a></li>

					<li><a href="/darry_ring/349.html"> <img
							src="Darrying/images/201509301423462d2e8ea34f (1).jpg" width="222"
							height="222" alt="TRUE LOVE系列 奢华款" />
							<p>
								TRUE LOVE系列 奢华款 200分 E色<span><i>￥9999</i>销量：2356</span>
							</p>
					</a></li>

				</ul>
			</div>
			<!--attention end-->

			<!--subscribe 免费预约-->
			<div class="subscribe" id="subscribeMain" style="">
				<div class="subscribeBtn">
					<div class="subscribeBtnBg"></div>
					<div class="subscribeBtnMain">
						<a href="javascript:;" class="subscribeLink inlineBlock"
							id="showActionBtn">免费预约</a>
					</div>
				</div>
				<div class="subscribeMain" id="actionMain">
					<div class="subscribeMainBg"></div>
					<div class="subscribeAction">
						<p>
							<i>*</i><label>选 择 店 铺：</label> <select name="">
								<option value="">中国大陆</option>
							</select> <select name="ctl00$content$ddlPro" id="ctl00_content_ddlPro">
								<option value="-1">请选择</option>
								<option value="820000">香港</option>
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
								<option value="210000">辽宁省</option>
								<option value="640000">宁夏回族自治区</option>
								<option value="630000">青海省</option>
								<option value="370000">山东省</option>
								<option value="140000">山西省</option>
								<option value="610000">陕西省</option>
								<option value="310000">上海市</option>
								<option value="510000">四川省</option>
								<option value="120000">天津市</option>
								<option value="530000">云南省</option>
								<option value="330000">浙江省</option>
								<option value="500000">重庆市</option>

							</select> <select name="ctl00$content$ddlcity2"
								id="ctl00_content_ddlcity2">

							</select>
						</p>
						<p>
							<i>*</i><label>预约人姓名：</label> <input type="text" id="txtname"
								placeholder="如：戴瑞女士" />
						</p>
						<p id="p_yuyue">
							<i>*</i><label>预 约 时 间：</label> <input
								name="ctl00$content$txtdate" type="text" value="2016-8-25"
								id="ctl00_content_txtdate" onFocus="WdatePicker({})"
								placeholder="请选择预约时间"
								style="height: 24px; width: 130px; line-height: 24px" /> <select
								name="ctl00$content$drptime" id="ctl00_content_drptime"
								style="width: 130px;">
								<option value="0">请选择时段</option>
								<option value="1">09:00--12:00</option>
								<option value="2">12:00--15:00</option>
								<option value="3">15:00--18:00</option>
								<option value="4">18:00--22:00</option>

							</select>
						</p>
						<p>
							<i>*</i><label>联 系 方 式：</label> <input type="text" id="txttel"
								placeholder="请输入手机号或邮箱" /> <span id="sp_error"
								style="display: none; color: red;">请输入正确的手机号/邮箱地址</span>
						</p>
						<div class="checkServer">
							<i>您所关注的：</i> <span> <input type="checkbox" id="checksd"
								checked="checked" /><label for="checksd">钻戒试戴</label></span> <span>
								<input type="checkbox" id="checkzd" /><label for="checkzd">购买指导</label>
							</span> <span> <input type="checkbox" id="checkby" /><label
								for="checkby">钻戒保养</label></span> <span> <input type="checkbox"
								id="checksj" /><label for="checksj">钻戒升级</label></span> <span>
								<input type="checkbox" id="checkqt" /><label for="checkqt">其它</label>
							</span> <input class="inputServer" type="text" maxlength="100"
								id="other" />
						</div>
						<div class="actionBtn">
							<a href="javascript:yuyue();"
								class="actionBtnConfirm inlineBlock">确认预约</a> <a
								href="javascript:;" class="actionBtnCancel inlineBlock"
								id="cancelActionBtn">取 消</a>
						</div>
					</div>
				</div>
			</div>
			<a class="minSubscribe" id="minSubscribe">免费预约</a>
			<script type="text/javascript" language="javascript">
					var isOpenShop = "1";

					function showMap(shopid) {
						$('#shopMapMain').fadeIn();
						$.get("/nAPI/yuyue.ashx?action=getShopInfo", {
							shopid: shopid
						}, function(msg) {
							var json = $.parseJSON(msg);
							$("#h_shopname").html("Darry Ring" + json.shopname);
							$("#p_address").html("地址：" + json.address);
							//$(window.parent.document).find("#shopIframe").attr("src", json.map_link + "?shopid=" + json.shopid);
							$(window.parent.document).find("#shopIframe").attr("src", "http://www.darryring.com/dt/shopdt.htm?shopid=" + json.id);
						});
					}

					function yuyue() {
						var shopvalue = $("#ctl00_content_ddlcity2").val();
						var timevalue = $("#ctl00_content_drptime").val();
						var name = $("#txtname").val();
						var times = $("#ctl00_content_txtdate").val();
						var tel = $("#txttel").val();
						var strgz = "";

						if($("#checksd").attr("checked") == "checked") {
							strgz += "钻戒试戴,";
						}
						if($("#checkzd").attr("checked") == "checked") {
							strgz += "购买指导,";
						}
						if($("#checkby").attr("checked") == "checked") {
							strgz += "钻戒保养,";
						}
						if($("#checksj").attr("checked") == "checked") {
							strgz += "钻戒升级,";
						}

						if($("#checkqt").attr("checked") == "checked") {
							var other = $("#other").val();
							strgz += "其它," + other;
						} else {
							strgz = strgz.substr(0, strgz.length - 1);
						}

						if(shopvalue == -1 || shopvalue == null) {
							alert("请选择预约店门！");
							return;
						}

						if(isOpenShop == "1") {
							if($("#ctl00_content_txtdate").val() == "") {
								alert("请选择预约时间！");
								return;
							}
							if(timevalue == 0) {
								alert("请选择预约时间段！");
								return;
							}
						}

						if(name.trim() == "") {
							alert("请输入您的姓名！");
							return;
						}

						if(!checkTel(tel) && !isEmail(tel)) {
							$("#sp_error").show();
							$("#txttel").val("");
							return;
						} else {
							$("#sp_error").hide();
						}
						//店铺预约统计
						ag_dianpuyuyue();
						$.get("/nAPI/yuyue.ashx?action=newyuyue", {
							shopvalue: shopvalue,
							timevalue: timevalue,
							times: times,
							name: name,
							tel: tel,
							strgz: strgz
						}, function(data) {
							if(data == "ok") {
								thisTime = 3;
								showTips();
								//清空
								$("#txtname").val("");
								$("#ctl00_content_ddlPro").val("-1");
								$("#ctl00_content_drptime").val("0");
								$("#txttel").val("");
								$("[name = chkItem]:checkbox").attr("checked", false);
								$("#ctl00_content_ddlcity2 option").remove();
								$("#checksd").attr("checked", true);
								$("#other").val("");
							} else {
								alert(data);
							}
						});
					}

					function isEmail(strEmail) {
						if(strEmail.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
							return true;
						else {
							return false;
						}
					}

					function trim(str) {
						return str.replace(/(^\s*)|(\s*$)/g, "");
					}

					function checkTel(tel) {
						var mobile = /^1[3-8]+\d{9}$/;
						return mobile.test(tel);
					}
				</script>
			<!--subscribe end-->
			
			<jsp:include page="footer.jsp"/>
			
			<script>
				// 加载底部入口模块
				seajs.use("footerJs/footer.js");
			</script>
			
			<!--JS begin-->
			<!--友情链接-->
			<div class="dr_friend-bk">
				<div class="dr_friendshare w1000"></div>
				<!--友情链接end-->
			</div>

			<script type="text/javascript">
					// 分享
					function commonShareMethod(obj, baseUrl) {
						debugger;
						var url = baseUrl;
						var regExp = /(\{\d\})/g;
						var paramsArr = url.match(regExp);
						var enTitle = "";
						var enReqUrl = "";
						if(paramsArr != null) {
							var enTitle = encodeURI('');
							var enReqUrl = encodeURI('http://www.darryring.com/shop/shopIndex.aspx');
							url = baseUrl.replace(paramsArr[0], enTitle).replace(paramsArr[1], enReqUrl);
						}

						$(obj).attr('href', url);
					}
				</script>

			<script type="text/javascript">
					// GOOGLE 统计工具代码
					(function(i, s, o, g, r, a, m) {
						i['GoogleAnalyticsObject'] = r;
						i[r] = i[r] || function() {
							(i[r].q = i[r].q || []).push(arguments)
						}, i[r].l = 1 * new Date();
						a = s.createElement(o),
							m = s.getElementsByTagName(o)[0];
						a.async = 1;
						a.src = g;
						m.parentNode.insertBefore(a, m)
					})(window, document, 'script', 'js/Analytics.js', 'ga');

					ga('create', 'UA-46798784-1', 'darryring.com');
					ga('require', 'displayfeatures');
					ga('send', 'pageview');

					//咨询框按钮
					function pyConsultPy() {
						var w = window,
							d = document,
							e = encodeURIComponent;
						var b = location.href,
							c = d.referrer,
							f, g = d.cookie,
							h = g.match(/(^|;)\s*ipycookie=([^;]*)/),
							i = g.match(/(^|;)\s*ipysession=([^;]*)/);
						if(w.parent != w) {
							f = b;
							b = c;
							c = f;
						};

					}

					var _intervalCount = 0;
					var lxbCbInputBtnBinded = false;
					var lxbCbInputBtnBindedA = false;
					var _interval = window.setInterval(function() {

						if(lxbCbInputBtnBinded && lxbCbInputBtnBindedA) {
							window.clearInterval(_interval);
						}

						_intervalCount++;
						if(_intervalCount > 60) {
							window.clearInterval(_interval);
						}
					}, 200);

					function ag_btnnSeach() {
						ga('send', 'event', 'btnnSeach', 'click', 'verification', 0);
					};
					//店铺预约统计
					function ag_dianpuyuyue() {
						ga('send', 'event', 'dianpuyuyue', 'click', 'dianpuyuyue', 0);
					};
					//小能在线-珠宝咨询
					function ag_droline_kf() {
						ga('send', 'event', 'droline_kf', 'click', 'talk', 0);
						//资讯统计
						dr('consult');
					};

					function ag_droline_kfword() {
						ga('send', 'event', 'droline_kfword', 'click', 'talk', 0);
					};
					//小能在线-珠宝咨询
					function ag_bdBridge() {
						ga('send', 'event', 'span_kf', 'click', 'talk', 0);
						dr('consult');
					};

					function ag_span_kf() {
						ga('send', 'event', 'span_kf', 'click', 'verification', 0);
						dr('consult');
					};

					//百度代码
					var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
					document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fcbc01ac15a6b1e666bf91e1ecba215e9' type='text/javascript'%3E%3C/script%3E"));

					$(function() {
						$(".droline_kfword").click(ag_droline_kfword);
						$(".droline_kf").click(ag_droline_kf);
						$("#span_kf").click(ag_span_kf);
						$("#btnnSeach").click(ag_btnnSeach);

						$("#drHomeBan li:eq(1)").click(function() {

							ga('send', 'event', 'banner_second', 'click', 'drPaIndex', 0);
						})

					});
					/*seo js-end*/
				</script>
			<!-- Google 再营销代码start -->
			<script type="text/javascript">
					/* <![CDATA[ */
					var google_conversion_id = 974707783;
					var google_custom_params = window.google_tag_params;
					var google_remarketing_only = true;
					/* ]]> */
				</script>

			<script type="text/javascript" src="js/conversion.js">
				</script>
			<noscript>
				<div style="display: inline;">
					<img height="1" width="1" style="border-style: none;" alt=""
						src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/974707783/?value=0&amp;guid=ON&amp;script=0" />
				</div>
			</noscript>
			<!-- Google 再营销代码end -->
			<!--有道start-->

			<!--有道end-->
			<!--底部Start-->
			<!--腾讯广点通广告代码-Start-->
			<script type="text/javascript">
					var gdt_tracker = gdt_tracker || [];
					gdt_tracker.push(["set_source_id", "33581"]);
					(function() {
						var doc = document,
							h = doc.getElementsByTagName("head")[0],
							s = doc.createElement("script");
						s.async = true;
						s.src = "js/gt.js";
						h && h.insertBefore(s, h.firstChild)
					})();
				</script>
			<!--腾讯广点通广告代码-END-->

			<script type="text/javascript">
					/*弹窗*/
					NTKF_PARAM = {
						siteid: "kf_9883", //Ntalker提供平台基础id,
						settingid: "kf_9883_1402631963601", //Ntalker分配的缺省客服组id  
						uid: "", //用户id
						uname: "", //用户名              
						orderid: "", //订单id
						orderprice: "" //订单价格
					}
				</script>

			<script type="text/javascript" src="js/ntkfstat.js?siteid=kf_9883"
				charset="utf-8"></script>

			<script src="js/Analytics.js?UID=DR-48670750-1"></script>
			<script>
					// 流量统计
					dr('pageview');
				</script>

			<script>
					var _hmt = _hmt || [];
					(function() {
						var hm = document.createElement("script");
						hm.src = "//hm.baidu.com/hm.js?cbc01ac15a6b1e666bf91e1ecba215e9";
						var s = document.getElementsByTagName("script")[0];
						s.parentNode.insertBefore(hm, s);
					})();
				</script>
		</div>

	</form>
</body>

</html>