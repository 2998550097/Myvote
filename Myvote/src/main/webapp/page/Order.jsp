<%@ page language="java" pageEncoding="utf-8"%>

<!DOCTYPE html >

<!-- saved from url=(0043)http://www.darryring.com/ncart/Address.aspx -->
<html>
<head>
<base href="/MyDarry/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="Cart/css/shopping.css">
<link rel="stylesheet" type="text/css" href="Cart/css/common.css">
<link rel="stylesheet" type="text/css" href="Cart/css/drcart.css">

<script src="Cart/js/hm.js">
	
</script>
<script charset="utf-8" src="Cart/js/lxb.js"></script>
<script charset="utf-8" src="Cart/js/v.js"></script>
<script async="" src="Cart/js/analytics.js"></script>
<script type="text/javascript" src="Cart/js/jquery.js"></script>
<script type="text/javascript" src="Cart/js/shoppcart.js"></script>

<title>提交订单Darry Ring求婚钻戒价格 戴瑞珠宝官网</title>
<title></title>
<script type="text/javascript" async="async" charset="utf-8"
	src="Cart/js/zh_cn.js" data-requiremodule="lang"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="Cart/js/chat.in.js" data-requiremodule="chatManage"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="Cart/js/comet.chat.js" data-requiremodule="TChat"></script>
</head>
<body>
	<div id="nTalk_post_hiddenElement"
		style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>
	<form name="aspnetForm" method="post"
		action="http://www.darryring.com/ncart/Address.aspx?action=post&process=darryring"
		id="aspnetForm">
		<div>
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="/wEPDwULLTE1ODM0NjMzNDUPZBYCZg9kFgICAxBkZBYGZg8PFgIeBFRleHQFD+S9oOWlve+8gTdBb2l6VWRkAgEPFgIeBWNsYXNzBRRzaG9wX25hdiBzaG9wX25hdi1kZGQCAg9kFgRmDxYCHgtfIUl0ZW1Db3VudGZkAgEPFgIfAgIBFgJmD2QWBGYPFQQWVFJVRSBMT1ZF57O75YiXIOWFuOmbhQnnmb0xOEvph5EBOABkAgEPFQEFMTM5OTlkZOx0agMKGIPUSWOwHuwxz4gFfiAv">
		</div>

		<div>

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="8C541494">
		</div>
		<!--全部背景-->
		<div class="all-thing">
			<!--中间内容-->
			<div class="tcmain">
				<!--头部-->
				<div class="shop_top">
					<div class="shopt_left fl">
						<a href="#" title="Darry Ring"> <img src="Cart/images/dr.png"
							width="186" height="42">
						</a>
					</div>
					<div class="shopt_right fr">

						<span id="ctl00_ltlUname">你好！7AoizU</span> <a
							href="http://www.darryring.com/member/mydr.html" class="my_dr">我的DR</a>
						<a href="http://www.darryring.com/ncart/Address.aspx#"
							class="tc_dr" onclick="javascript:logout()">退出</a> <a
							href="http://www.darryring.com/help.html" class="help_dr">帮助中心</a>
					</div>
				</div>
				<!--头部end-->
				<!--导航条-->
				<div id="ctl00_showNav" class="shop_nav shop_nav-dd"></div>
				<!--导航条end-->


				<script type="text/javascript">
					function addressItemSelected(control) {
						$(control).addClass("check_bk").siblings().removeClass(
								"check_bk");
						$(control).find("input:radio").attr("checked", true);
					}
					//市数据加载事件

					var CityDataLoadEvent = function() {
					};
					var DistrictDataLoadEvent = function() {
					};

					$(function() {
						//绑定地址点击事件
						$(".shop_adress-top:not(:last)").each(function() {
							$(this).click(function() {
								hideNewAddress();
								addressItemSelected(this);
							});
						});
						//绑定新增地址事件
						$(".shop_adress-top:last").click(function() {
							//地址标题，新增还是修改
							$(".shop_adress-add h4").text("添加新地址");
							addressItemSelected(this);
							showNewAddress();
						});

						//省下拉框ID
						var province = "#province";
						var city = "#city";
						var district = "#district";
						//加载省信息
						$.get("/nAPI/AddressInfo.ashx?action=province",
								function(data) {
									$(data).each(function() {
										bindDdlData(province, this);
									});
								});
						//省下拉框onchange事件
						$(province).change(
								function() {
									var dataLoad = function(data) {
										$(city + " option:not(:first)")
												.remove();
										$(data).each(function() {
											bindDdlData(city, this);
										});
										CityDataLoadEvent();
									};

									$.get(
											"/nAPI/AddressInfo.ashx?action=city&code="
													+ $(this).val(), function(
													data) {
												dataLoad(data);
											});

								});
						//市下拉框onchange事件
						$(city).change(
								function() {
									var dataLoad = function(data) {
										$(district + " option:not(:first)")
												.remove();
										$(data).each(function() {
											bindDdlData(district, this);
										});
										DistrictDataLoadEvent();
									};

									$.get(
											"/nAPI/AddressInfo.ashx?action=district&code="
													+ $(this).val(), function(
													data) {
												dataLoad(data);
											});
								});

						//保存地址按钮事件
						$(".save").click(
								function() {
									var data = getData();
									if (data.name == "") {
										alert("收货人不能为空。");
										return;
									}
									//简体下才需要省市区

									if (data.province == "") {
										alert("省份不能为空。");
										return;
									}
									if (data.city == "") {
										alert("城市不能为空。");
										return;
									}
									if (data.district == "") {
										alert("区县不能为空。");
										return;
									}
									if (data.mobile == ""
											&& data.telephone == "") {
										alert("手机号/固定电话必填一个。");
										return;
									}
									if (data.smsmobile == "") {
										alert("购买人手机不能为空！");
										return;
									}

									if (data.street == "") {
										alert("详细地址不能为空。");
										return;
									}
									if (data.postcode == "") {
										alert("请输入邮编");
										return;
									}
									var action = "save";
									if (isNaN(data.ID)) {
										action = "add";
									}
									$.post("/nAPI/AddressInfo.ashx?action="
											+ action, data, function() {
										window.location.reload();
									});
								});
					});

					function bindDdlData(cid, data) {
						$(cid).append(
								$("<option value=\"" + data.code + "\">"
										+ data.name + "</option>"));
					}

					function showAddress(id) {
						//地址标题，新增还是修改
						$(".shop_adress-add h4").text("修改地址");
						$(".shop_adress-add").show();
						$(".shop_adress-add").attr("id", "address_" + id);
						$.get("/nAPI/AddressInfo.ashx?action=getbyid&id=" + id,
								function(data) {
									setAddress(data);
								});
					}

					function showNewAddress() {
						resetNewAddress();
						$(".shop_adress-add").show();
					}
					function hideNewAddress() {
						$(".shop_adress-add").hide();
					}
					function resetNewAddress() {
						$("#addressName").val("");
						$("#province").val("-1");
						$("#city").val("-1");
						$("#space").val("-1");

						$("#street").val("");
						$("#postcode").val("");
						$("#mobile").val("");
						$("#smsmobile").val("");
						$("#telephone").val("");
						$("#cbDefaultAddress").attr("checked", false);

						$("#city option:not(:first)").remove();
						$("#district option:not(:first)").remove();
					}

					function getData() {
						var id = $(".shop_adress-add").attr("id");
						id = id ? id.replace("address_", "") : undefined;
						return {
							"ID" : id,
							"name" : $("#addressName").val(),
							"province" : $("#province option:selected").val() == "-1" ? ""
									: $("#province option:selected").text(),
							"city" : $("#city option:selected").val() == "-1" ? ""
									: $("#city option:selected").text(),
							"district" : $("#district option:selected").val() == "-1" ? ""
									: $("#district option:selected").text(),
							"street" : $("#street").val(),
							"postcode" : $("#postcode").val(),
							"mobile" : $("#mobile").val(),
							"smsmobile" : $("#smsmobile").val(),
							"telephone" : $("#telephone").val(),
							"IsDefault" : $("#cbDefaultAddress")
									.attr("checked")
						};
					}

					function setAddress(data) {
						$("#addressName").val(data.name);
						$("#province option").each(function() {
							if (data.city.indexOf($(this).text()) != -1) {
								$("#province").val($(this).val());
								$("#province").change();
							}
						});
						CityDataLoadEvent = function() {
							$("#city option").each(function() {
								if (data.city.indexOf($(this).text()) != -1) {
									$("#city").val($(this).val());
									$("#city").change();
								}
							});
						};
						DistrictDataLoadEvent = function() {
							$("#district option").each(function() {
								if (data.city.indexOf($(this).text()) != -1) {
									$("#district").val($(this).val());
								}
							});
						};

						$("#street").val(data.street);
						$("#postcode").val(data.code);
						$("#mobile").val(data.mobile);
						$("#smsmobile").val(data.smsmobile);
						$("#telephone").val(data.phone);
						$("#cbDefaultAddress").attr("checked", data.IsDefault);
					}
					function deleteAddress(id) {
						if (confirm("确认是否删除？")) {
							$.get("/nAPI/AddressInfo.ashx?action=delete&id="
									+ id, function() {
								window.location.reload();
							});
						}
					}

					function submitOrder() {
						//check
						if ($(".shop_adress-top:not(:last) :radio:checked").length == 0) {
							alert("请先选择一个地址。");
							return;
						}
						var nu = '1';

						$("#aspnetForm").submit();

					}
					$(function() {
						$("#aspnetForm").attr("action",
								"Address.aspx?action=post&process=darryring");
					});
				</script>

				<!--内容-->
				<div class="shop_cort">
					<!--左边-->
					<div class="shop_cort-left fl">
						<h3>收货人信息</h3>
						<!--填写地址信息-->
						<div class="shop_cort-adress">
							<!--地址-->

							<div class="shop_adress-top check_bk">
								<input type="radio" name="adress" id="addressNew"
									checked="checked"><label for="addressNew"
									class="adress_color">添加新地址</label>
							</div>
							<!--地址end-->
							<!--新加地址-->
							<div class="shop_adress-add" style="">
								<h4>添加新地址</h4>
								<div class="shop_adress-Toadd">
									<label><i>*</i>收 货 人：</label> <input id="addressName"
										type="text" placeholder="请准确填写真实姓名" class="true_name">
								</div>
								<div class="shop_adress-Toadd" style="">
									<label><i>*</i>所在地区：</label> <select id="province">
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
									</select>
								</div>
								<div class="shop_adress-Toadd">
									<label><i>*</i>详细地址：</label> <input id="street" type="text"
										class="adt_1" placeholder="请填写详细路名及门牌号">
								</div>
								<div class="shop_adress-Toadd">
									<label><i>*</i>邮政编码：</label> <input id="postcode" type="text"
										placeholder="请输入邮编" class="true_number">
								</div>
								<div class="shop_adress-Toadd" style="">
									<label><i>*</i>手机号码：</label> <input id="mobile" type="text">
									<span class="oth_color">或</span> <span>固定电话：</span> <input
										id="telephone" type="text">
								</div>
								<div class="shop_adress-Toadd">
									<label><i>*</i>购买人手机：</label> <input id="smsmobile" type="text"
										placeholder="物流短信接收手机号" class="true_number">
								</div>
								<div class="shop_adress-sp">
									<input type="checkbox" id="cbDefaultAddress"> <label
										for="cbDefaultAddress">设为默认地址</label>
								</div>
								<div class="shop_adress-save">
									<div class="bt1">
										<span class="save">保存收货人信息</span>
									</div>
								</div>
							</div>
							<!--新加地址end-->
							<div class="shop_adress-qr">
								<div class="shop_adressqr-top">
									<a href="http://www.darryring.com/ncart/Cart.aspx" class="fr">返回修改购物车&gt;&gt;</a>
									<span>确认订单信息</span> <i>提示：专属订制产品，需要相关证书认证时间。建议尽快提交。</i>
								</div>
								<!--订单-->
								<table border="0" cellspacing="0" cellpadding="0"
									class="shop_adressqr-of">
									<tbody>
										<tr class="shop_adressqr-first">
											<td class="shop_adress-shoop">商 品</td>
											<td class="shop_adress-cz">材 质</td>
											<td class="shop_adress-sc">手寸/尺寸</td>
											<td class="shop_adress-kz">刻 字</td>
											<td class="shop_adress-pirce">价 格</td>
										</tr>

										<tr class="shop_adressqr-sec">
											<td class="shop_adress-shoop">TRUE LOVE系列 典雅</td>
											<td class="shop_adress-cz">白18K金</td>
											<td class="shop_adress-sc">8</td>
											<td class="shop_adress-kz"></td>
											<td class="shop_adress-pirce"><span
												style="font-family: 微软雅黑">￥13999</span></td>
										</tr>



									</tbody>
								</table>
								<!--订单end-->
								<!--总计-->
								<div class="shop_adress-zj">
									<div class="fl">
										<span> 总计</span>
									</div>
									<div class="fr">
										<i>1</i> <span>件商品</span> <span>应付金额：</span> <i
											class="fw_bold" style="font-family: 微软雅黑">￥13,999</i>
									</div>
								</div>
								<!--总计-->
								<!--最后一块-->
								<div class="shop_adress-last">
									<div class="shop_adress-ddbz fl">
										<p>订单备注</p>
										<textarea name="ordernote" class="shop_adress-text"
											placeholder="此处请勿填写有关支付方面的信息,留言请在50字以内。"></textarea>
									</div>
									<div class="shop_adress-tjdd fr" onclick="submitOrder();">
										<div class="bt1 fr">
											<span>立即提交订单</span>
										</div>

									</div>
								</div>
								<!--最后一块end-->
							</div>
						</div>
						<!--填写地址信息end-->
					</div>
					<!--左边end-->
					<!--右边-->
					<div class="shop_cort-right fr">
						<div class="shop_right-nr">
							<h3>购物帮助指南</h3>
							<div class="shop_right-zx line_bottom">
								<p class="shop_lx">24小时在线客服</p>
								<p class="shop_tel">400-01-13520</p>
							</div>
							<div class="shop_right-zf line_bottom">
								<h4>支付安全保障</h4>
								<p>安全支付系统采用SSL加密。</p>
								<ul class="shop_right-ul">
									<li class="shop_cor-yl"></li>
									<li class="shop_cor-cft"></li>
									<li class="shop_cor-zf"></li>
								</ul>
							</div>
							<div class="shop_right-ps">
								<h4>全球配送</h4>
								<p class="shop_kd">支持全球配送,店铺取货</p>
								<p class="shop_bj">全程保价 无风险</p>
							</div>
						</div>
					</div>
					<!--右边end-->
				</div>
				<!--内容end-->


				<!--底部-->
				<div class="cmain shop_foot">
					<p>Copyright © 2006-2015 www.darryring.com 戴瑞珠宝 All Rights
						Reserved. 粤ICP备11012085号</p>
					<p>中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票</p>
					<div class="shop_foot-img">
						<img src="Cart/images/db.jpg" width="776" height="55">
					</div>
				</div>
				<!--底部end-->
			</div>
			<!--全部背景end-->
		</div>
		<script type="text/javascript">
			function logout() {
				if (window.confirm('确定退出吗？')) {
					$.get("/nAPI/QuitExit.ashx", function(data) {
						window.location.href = "/";
					});
				}
			}
		</script>
	</form>
	<script type="text/javascript">
		// GOOGLE 统计工具代码
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-46798784-1', 'darryring.com');
		ga('require', 'displayfeatures');
		ga('send', 'pageview');

		//咨询框按钮
		function pyConsultPy() {
			var w = window, d = document, e = encodeURIComponent;
			var b = location.href, c = d.referrer, f, g = d.cookie, h = g
					.match(/(^|;)\s*ipycookie=([^;]*)/), i = g
					.match(/(^|;)\s*ipysession=([^;]*)/);
			if (w.parent != w) {
				f = b;
				b = c;
				c = f;
			}
			;

		}

		var _intervalCount = 0;
		var lxbCbInputBtnBinded = false;
		var lxbCbInputBtnBindedA = false;
		var _interval = window.setInterval(function() {
			if ($('#Bearonline').length > 0 && !lxbCbInputBtnBinded) {
				$('#Bearonline').bind("click", function() {
					pyConsultPy();
				});
				lxbCbInputBtnBinded = true;
			}

			if ($('#dzzxonline').length > 0 && !lxbCbInputBtnBindedA) {
				$('#divOnline').bind("click", function() {
					pyConsultPy();
				});
				lxbCbInputBtnBindedA = true;
			}

			if (lxbCbInputBtnBinded && lxbCbInputBtnBindedA) {
				window.clearInterval(_interval);
			}

			_intervalCount++;
			if (_intervalCount > 60) {
				window.clearInterval(_interval);
			}
		}, 200);
	</script>
	<script type="text/javascript">
		//Google 再营销代码
		/* <![CDATA[ */
		var google_conversion_id = 974707783;
		var google_custom_params = window.google_tag_params;
		var google_remarketing_only = true;
		/* ]]> */

		//百度代码
		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");
		document
				.write(unescape("%3Cscript src='"
						+ _bdhmProtocol
						+ "hm.baidu.com/h.js%3Fcbc01ac15a6b1e666bf91e1ecba215e9' type='text/javascript'%3E%3C/script%3E"));
	</script>
	<script src="Cart/js/h.js" type="text/javascript"></script>
	<!--有道start-->

	<!--有道end-->
	<!--底部Start-->

	<!--底部end-->
	<!--腾讯广点通广告代码-Start-->

	<!--腾讯广点通广告代码-END-->

	<script type="text/javascript">
		/*弹窗*/

		function showxiaon() {
			dr('consult');
			NTKF.im_openInPageChat();
			$('.news_tc').css('display', 'none');
		}

		<a data-version="201601131096" data-cltversion="2.3.1"
		data-cltsource="80001"
		data-cltuuid="extFH6yfUHdMUet7FXAaAcKkluD7zS7Tp5Gd" data-cltats="3"
		href="javascript:" id="yht-info-explugin" style="display: none;"></a>
		</body>
		</html>
	