<%@ page language="java" pageEncoding="utf-8"%>

<!DOCTYPE html >

<html>
<head>
<base href="/MyDarry/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<link rel="stylesheet" type="text/css" href="css/common.css">
<link rel="stylesheet" type="text/css" href="css/drcart.css">
<script type="text/javascript" src="headerJs/jquery-1.11.3.min.js"></script>
<script src="js/managershopping.js"></script>
<script src="js/hm.js">	</script>
<script charset="utf-8" src="js/lxb.js"></script>
<script charset="utf-8" src="js/v.js"></script>
<script async="" src="js/analytics.js"></script>
<script type="text/javascript" src="headerJs/jquery.js"></script>
<script type="text/javascript" src="js/shoppcart.js"></script>

<title>提交订单Darry Ring求婚钻戒价格 戴瑞珠宝官网</title>
<title></title>
<script type="text/javascript" async="async" charset="utf-8"
	src="js/zh_cn.js" data-requiremodule="lang"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="js/chat.in.js" data-requiremodule="chatManage"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="js/comet.chat.js" data-requiremodule="TChat"></script>
	
<script type="text/javascript">
	
	var goodid=window.location.href.split("=")[1];
	$(function(){
		$.get("dev/getDev",function(data){
			var str="";
			for(var i=0;i<data.length;i++){
				var state=0;
				if(data[i].status=="是"){
					state=1;
				}
				str+='<div '+(state=1?'class="shop_adress-top check_bk"' : '"shop_adress-top"')+'">';
				str+='<input type="radio" name="adress" value="143479" checked="checked">';
				str+='<label>'+data[i].ddetail+'</label>';
				if(data[i].dtel!=null){
					str+='<label> '+data[i].dname+'(收) '+data[i].dtel+'</label>';
				}
				if(data[i].solidtel!=null){
					str+='<label> '+data[i].dname+'(收) '+data[i].solidtel+'</label>';
				}
				str+='<span></span>';
				str+='<a href="javascript:showAddress(143479);">修改</a>';
				str+='<i>|</i>';
				str+='<a href="javascript:deleteAddress(143479);">删除</a>';
				str+='</div>';
				
			}
			
			str+='<div class="shop_adress-top">';
			str+='<input type="radio" name="adress" id="addressNew">'
			str+='<label for="addressNew" class="adress_color">添加新地址</label>';
			str+='</div>';
			
			$(".shop_adress-add").before(str);
		},"json");
		
		$.get("cart/getCartById?goodid="+goodid,function(data){
			var str="";
			var totalstr="";
			str+='<tr class="shop_adressqr-first">';
			str+='<td class="shop_adress-shoop">商 品</td>';
			str+='<td class="shop_adress-cz">材 质</td>';
			str+='<td class="shop_adress-sc">手寸/尺寸</td>';
			str+='<td class="shop_adress-kz">刻 字</td>';
			str+='<td class="shop_adress-pirce">价 格</td></tr>';
			
			str+='<tr class="shop_adressqr-sec">';
			str+='<td class="shop_adress-shoop">'+data.cname+'</td>';
			str+='<td class="shop_adress-cz">'+data.pmaterial+'</td>';
			str+='td class="shop_adress-sc">'+data.csize+'</td>';
			if(data.keword!=null){
				str+='<td class="shop_adress-kz">'+data.keword+'</td>';
			}else{
				str+='<td class="shop_adress-kz"></td>';
			}
			str+='<td class="shop_adress-pirce"><span style="font-family: 微软雅黑">￥'+data.cprice+'</span></td>';
			str+='</tr>';
			$(".shop_adressqr-of").html("").append(str);
			totalstr+='<div class="fl">';
			totalstr+='<span> 总计</span>';
			totalstr+='</div>';
			totalstr+='<div class="fr">';
			totalstr+='<i>'+data.count+'</i><span>件商品</span> <span>应付金额：</span> <i class="fw_bold" style="font-family: 微软雅黑">￥'+data.totalprice+'</i></div>';
			
			$(".shop_adress-zj").append(totalstr);
		},"json");
		
	});
</script>	
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
						<a href="#" title="Darry Ring"> <img src="images/dr.png"
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

									if (data.street == "") {
										alert("详细地址不能为空。");
										return;
									}
									if (data.postcode == "") {
										alert("请输入邮编");
										return;
									}
									
									var detail=data.province+data.city+data.district+data.street;
									var status="否";
									if(data.Isdefault="checked"){
										status="是";
									}
									$.post("dev/add?dname="+data.name+"&ddetail="+detail+
											"&dpostcode="+data.postcode+"&dtel="+data.mobile+
											"&dstatus="+status+"&solidtel="+data.telephone,function(data){
										if(data){
											window.location.href="page/Order.jsp";
										}
									})
									
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
							"IsDefault" : $("#cbDefaultAddress").attr("checked")
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
						var remark=$(".shop_adress-text").html();
						$.get("orders/add?remark="+remark+"&goodid="+goodid,function(data){
							if(data){
								window.location.href="page/submitOrder.jsp?goodid="+goodid;
							}
						});
					}
				</script>

				<!--内容-->
				<div class="shop_cort">
					<!--左边-->
					<div class="shop_cort-left fl">
						<h3>收货人信息</h3>
						<!--填写地址信息-->
						<div class="shop_cort-adress">
							<!--地址-->

							<!-- <div class="shop_adress-top check_bk">
								<input type="radio" name="adress" id="addressNew">
								<label for="addressNew" class="adress_color">添加新地址</label>
							</div> -->
							<!--地址end-->
							<!--新加地址-->
							<div class="shop_adress-add" style="display:none">
								<h4>添加新地址</h4>
								<div class="shop_adress-Toadd">
									<label><i>*</i>收 货 人：</label> <input id="addressName"
										type="text" placeholder="请准确填写真实姓名" class="true_name">
								</div>
								<div class="shop_adress-Toadd" style="">
									<label><i>*</i>所在地区：</label> 
									<select id="province" name="province">
										<option value="-1">请选择省份</option>
									</select> 
									<span>市：</span> 
									<select id="city" name="city">
										<option value="-1">请选择城市</option>
									</select> 
									<span>县：</span> 
									<select id="district" name="district">
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
								<div class="shop_adress-sp">
									<input type="checkbox" id="cbDefaultAddress" value="是"> <label
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
									<!-- <tbody>
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

									</tbody> -->
								</table>
								<!--订单end-->
								<!--总计-->
								<div class="shop_adress-zj">
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
						<img src="images/db.jpg" width="776" height="55">
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
	