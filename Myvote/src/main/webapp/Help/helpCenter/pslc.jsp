<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>配送流程</title>

<base href="/MyDarry/"> 
<link rel="stylesheet" href="Help/css/help.css" />
<link rel="stylesheet" href="css/kefu.css" />
		<link rel="stylesheet" href="css/same.css" />
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
		<script type="text/javascript" src="headerJs/header.js"></script>
		<link rel="stylesheet" href="css/common.css" />
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
				function zh(){
					location.href="Help/aboutUs/qwrz.jsp";
				}
				
				function zh2(){
					location.href="Help/Service/xgsc.jsp";
				}
		</script>



<style>
.about_center {
	height: 1537px;
	background-color: #fff;
}
</style>

</head>
<body>


	<jsp:include page="../../page/header.jsp" />
	<jsp:include page="../../page/nav.jsp" />

	<div class="cort">
		<div class="cmain aboutus">
			<div class="zbk_top spalid">
				<span>您当前的位置：</span> <a href="#" target="_blank">Darry Ring</a> <em>&gt;</em>
				<span>帮助中心</span>
			</div>


			<div class="about_center">
				<ul class="abc_left fl">
					<li><h3 onclick="zh()">-关于我们-</h3>
						<ul class="abul_ul" style="display: none;">
							<li class="bau_other">
								<h4>
									<a href="#" class="specl_other">>权威认证</a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="#">>品牌声明</a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a id="68" href="/help_ab/68.html">>商务合作</a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a id="69" href="/help_ab/69.html">>联系我们</a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a id="70" href="/help_ab/70.html">>加入我们</a>
								</h4>
							</li>
						</ul></li>
					<li><h3>-帮助中心-</h3>
						<ul class="abul_ul">

							<li class="bau_other">
								<h4>
									<a href="Help/helpCenter/zclc.jsp">>注册流程</a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="Help/helpCenter/gmlc.jsp">>购买流程</a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="Help/helpCenter/zffs.jsp">>支付方式 </a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="Help/helpCenter/pslc.jsp" class="specl_other">>配送流程</a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="Help/helpCenter/thlc.jsp">>退货流程 </a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="Help/helpCenter/blsh.jsp">>办理售后</a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="Help/helpCenter/clsc.jsp">>测量手寸</a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="Help/helpCenter/tsjy.jsp">>投诉建议</a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="Help/helpCenter/wzdt.jsp">>网站地图</a>
								</h4>
							</li>
						</ul></li>
					<li><h3 onclick="zh2()">-服务条款-</h3>
						<ul class="abul_ul" style="display: none;">
							<li class="bau_other">
								<h4>
									<a href="#" class="specl_other">>修改手寸 </a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="#">>终生保养 </a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="#">>一钻双证 </a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="#">>钻石更换 </a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="#">>全程保险 </a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="#">>15天退换</a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="#">>注册协议 </a>
								</h4>
							</li>
							<li class="bau_other">
								<h4>
									<a href="#">>隐私声明</a>
								</h4>
							</li>
						</ul></li>
				</ul>
				<!--左边结束-->

				<div class="abc_right fr">
					<!--内容-->
					<div class="abcr_center">
						<h2 id="title">配送流程</h2>
						<div id="content">
							<div>
								<span style="line-height: 30px; font-size: 14px"><strong>一、配送范围与资费：

								</strong></span>
							</div>
							<div>
								<span style="font-size: 14px; line-height: 30px;">(1)&nbsp;</span><span
									style="font-size: 14px; line-height: 30px;">国内地区：</span>
							</div>
							<div>
								<div>
									<span style="font-size: 14px; line-height: 30px;">&nbsp;1)&nbsp;</span><span
										style="font-size: 14px; line-height: 30px;">中国内地、香港特别行政区、澳门特别行政区、台湾。

									</span>
								</div>
								<div>
									<span style="font-size: 14px; line-height: 30px;">&nbsp;注：国内城市、香港特别行政区

										、澳门特别行政区均享受包邮服务；台湾地区需收取200元快递费用。</span>
								</div>
								<div>
									<span style="font-size: 14px; line-height: 30px;">(2)&nbsp;
										国外地区：</span>
								</div>
								<span style="font-size: 14px; line-height: 30px;">&nbsp;1)&nbsp;</span><span
									style="font- size: 14px; line-height: 30px;">亚洲、美洲、欧洲、非洲。</span>
							</div>
							<div>
								<div>
									<span style="font-size: 14px; line-height: 30px;">&nbsp;邮寄国外地区同样也是购买全额

										保险后邮寄给您，但需您自己承担邮寄运费资费详见以下信息。</span>
								</div>
								<div>
									<span style="font-size: 14px; line-height: 30px;">&nbsp;由于各个国家征收关税政策不同

										如遇快件到达当地产生清关费用则需客户本人承担。</span>
								</div>
								<div>
									<span style="font-size: 14px; line-height: 30px;">&nbsp;注：国外的订单因报关原因，需在原定制周期上增加3个工作日（仅保证发出时间，无法确保收件时间），部分国家可能存在周期性不收件派件情况，建议购买前联系客服确认信息。</span>
								</div>
								<div>
									&nbsp; &nbsp;&nbsp;<img width="582" height="594"
										src="Help/images/table.png.jpeg" alt="">
								</div>
							</div>
							<div>
								<strong style="font-size: 14px; line-height: 30px;">二、配送方式</strong><br>
								<div>
									<span style="font-size: 14px; line-height: 30px;">1.国内城市均购买全程运输保险，使用

										顺丰快递/EMS邮寄给您。</span>
								</div>
								<div>
									<span style="font-size: 14px; line-height: 30px;">注：默认首选顺丰快递，如存在顺丰不

										到地区则使用EMS寄出。</span>
								</div>
								<div>
									<span style="font-size: 14px; line-height: 30px;">2.国外地区同样购买全程运输保险后，

										默认使用香港邮政或联邦快递邮寄给您。</span>
								</div>
								<div>
									<span style="font-size: 14px; line-height: 30px;">3.实体店自取（您可根据您的实际情况

										选择到店取货/DR包邮服务）</span>
								</div>
								<br> <strong style="font-size: 14px; line-height: 30px;">三、配送时间及配送费用：</strong><br>
								<span style="font-size: 14px; line-height: 30px;">
									定制发往国内，戴瑞全场免运费，您无需支付 任何配送费用；</span><br> <span
									style="font-size: 14px; line-height: 30px;">
									每个快递公司的配送时间均不相同，请您具体 参照快递公司为准。</span>
							</div>
							<div>
								<span style="line-height: 30px; font-size: 14px"><br>
									<strong>四、配送延迟：</strong><br>
									如遇国家法定节假日或者是异常天气状况，订单配送可能会出现一定的延迟，届时戴<br>
									瑞会通过首页公告进行公布，您可以随时关注。<br> <br> <strong>五、物流包装：</strong><br>
									戴瑞用统一的物流包装，保障商品在配送中的完整、无损。</span>
							</div>
						</div>
					</div>
					<!--内容end-->
				</div>
				<!--
                	右边结束
                -->
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
