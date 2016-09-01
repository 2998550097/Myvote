<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>测量手寸</title>

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
	height: 2246px;
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
									<a href="Help/helpCenter/pslc.jsp">>配送流程</a>
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
									<a href="Help/helpCenter/clsc.jsp" class="specl_other">>测量手寸</a>
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
						<h2 id="title">测量手寸</h2>
						<div id="content">
							<div
								style="margin: 12px 0 28px; padding: 0px; background-color: #FFF;"
								class="sc_cort-top">
								<p class="MsoNormal">
									<span
										style="margin-left: 25px; color: #666666; font-family: 宋体; font-size: 10.5pt;">1.</span><span
										style="font-size: 14px;"><font face="宋体"
										color="#666666">如果您想要给到女士惊喜，可以联系我们的官网客服协助您进行估算</font></span>
								</p>
								<p class="MsoNormal">&nbsp;</p>
								<div>
									<span
										style="color: #666666; font-family: Simsun; font-size: 14px;">2.客户也可自行按照以下步骤测量您的手指戒号（即手指最粗位置周长）</span>
								</div>
							</div>
							<div
								style="margin: 0; overflow: hidden; color: black; background-color: #fff;"
								class="sc_cort-corent">
								<div style="margin: 0; float: left; display: inline;"
									class="sc_cort-corent_left fl">
									<img width="320" height="200"
										style="border: 0; vertical-align: middle;"
										src="Help/images/1.gif" alt="step01">
								</div>
								<div
									style="margin: 0; float: right; display: inline; width: 354px; height: 200px; background: #FEF3F1;"
									class="sc_cort-corent_right fr">
									<div
										style="margin: 0; padding: 44px 0 0 32px; font-size: 14px; color: #666666; line-height: 22px;"
										class="corent_right-nr">
										<h3
											style="margin: 0 0 10px; font-size: 24px; color: #8E4F1B; font-weight: 100; font-family: Arial, Helvetica, sans-serif;">STEP.01</h3>
										<p>请准备如下工具：细绳、笔、剪刀、直尺；</p>
										<p>请不要用太粗及有弹性的绳子，以免误差较大</p>
									</div>
								</div>
							</div>
							<div
								style="margin: 0; padding: 10px 0 10px 142px; color: black; font-family: Simsun; font-size: medium; word-spacing: 0; background-color: #fff;"
								class="sc_cort-bottom">
								<img width="39" height="46"
									style="border: 0 none; vertical-align: middle;"
									src="Help/images/pointpng.png">
							</div>
							<div
								style="margin: 0; overflow: hidden; color: black; font-family: Simsun; font-size: medium; background-color: #fff;"
								class="sc_cort-corent">
								<div style="margin: 0; float: left; display: inline;"
									class="sc_cort-corent_left fl">
									<img width="320" height="200"
										style="margin: 0; vertical-align: middle;"
										src="Help/images/2.gif" alt="">
								</div>
								<div
									style="margin: 0; float: right; display: inline; width: 354px; height: 200px; background: #FEF3F1;"
									class="sc_cort-corent_right fr">
									<div
										style="margin: 0; padding: 44px 0 0 32px; font-size: 14px; color: #666666; line-height: 22px;"
										class="corent_right-nr">
										<h3
											style="margin: 0 0 10; font-size: 24px; color: #8E4F1B; font-weight: 100; font-family: Arial, Helvetica, sans-serif;">STEP.02</h3>
										<p>将绳子绕需测量的手指最粗位置两圈， 并拉紧；</p>
										<p>（务必绕于手指最粗位置，使戒号更精准）</p>
									</div>
								</div>
							</div>
							<div
								style="margin: 0; padding: 10px 0 10px 142px; color: black; font-family: Simsun; font-size: medium; text-transform: none; white-space: normal; word-spacing: 0; background-color: #FFF;"
								class="sc_cort-bottom">
								<img width="39" height="46"
									style="margin: 0; border: 0; vertical-align: middle;"
									src="Help/images/pointpng.png" alt="">
							</div>
							<div
								style="margin: 0; overflow: hidden; color: black; font-family: Simsun; font-size: medium; background-color: #FFF;"
								class="sc_cort-corent">
								<div style="margin: 0; float: left; display: inline;"
									class="sc_cort-corent_left fl">
									<img width="320" height="200"
										style="border: 0; vertical-align: middle;"
										src="Help/images/3.gif" alt="">
								</div>
								<div
									style="margin: 0; float: right; display: inline; width: 354px; height: 200px; background: #FEF3F1;"
									class="sc_cort-corent_right fr">
									<div style="margin: 0; padding: 44px 0 0 32px;"
										class="corent_right-nr">
										<h3
											style="margin: 0 0 10px; font-size: 24px; color: #8E4F1B; font-weight: 100; font-family: Arial, Helvetica, sans-serif;">STEP.03</h3>
										<p
											style="margin: 0; font-size: 14px; color: #666666; line-height: 22px;">用笔在两圈绳子同一位置作下记号</p>
									</div>
								</div>
							</div>
							<div
								style="margin: 0; padding: 10px 0 10px 142px; color: black; font-family: Simsun; font-size: medium; background-color: #FFF;"
								class="sc_cort-bottom">
								<img width="39" height="46"
									style="margin: 0; border: 0; vertical-align: middle;"
									src="Help/images/pointpng.png" alt="">
							</div>
							<div
								style="margin: 0; overflow: hidden; color: black; font-family: Simsun; font-size: medium; background-color: #FFF;"
								class="sc_cort-corent">
								<div style="margin: 0; float: left; display: inline;"
									class="sc_cort-corent_left fl">
									<img style="margin: 0; border: 0; vertical-align: middle;"
										src="Help/images/4.gif" alt="">
								</div>
								<div
									style="margin: 0; float: right; display: inline; width: 354px; height: 200px; background: #FEF3F1;"
									class="sc_cort-corent_right fr">
									<div
										style="margin: 0; padding: 44px 0 0 32px; font-size: 14px; color: #666666; line-height: 22px;"
										class="corent_right-nr">
										<h3
											style="margin: 0 0 10px; font-size: 24px; color: #8E4F1B; font-weight: 100; font-family: Arial, Helvetica, sans-serif;">STEP.04</h3>
										<p>取下绳子展开拉直，</p>
										<p>用直尺测量两个记号点之间的长度</p>
										<p>即手指根部周长</p>
									</div>
								</div>
							</div>
							<div
								style="margin: 0 0 32px; padding: 10px 0 10px 142px; color: black; font-family: Simsun; font-size: medium; background-color: #FFF;"
								class="sc_cort-bottom sc_cort-spbottom">
								<img width="39" height="46"
									style="margin: 0; border: 0; vertical-align: middle;"
									src="Help/images/pointpng.png" alt="">
							</div>
							<h4
								style="margin: 0; padding: 0 0 8px; font-size: 14px; color: black; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #F3F3F3; font-weight: 100; font-family: Simsun; background-color: #fff;">
								Darry Ring 戒号表</h4>
							<div
								style="margin: 40px 0 0; overflow: hidden; color: black; font-family: Simsun; font-size: medium; word-spacing: 0; background-color: #FFF;"
								class="sc_cort-corent sc_cort-spcorent">
								<div style="margin: 0; float: left; display: inline;"
									class="sc_cort-corent_left fl">
									<img width="311" height="326"
										style="margin: 0; border: 0; vertical-align: middle;"
										src="Help/images/5.jpg" alt="">
								</div>
								<div
									style="margin: 0; float: right; display: inline; width: 354px; height: 324px; background: #FEF3F1;"
									class="sc_cort-corent_right sc_cort-corent_spright fr">
									<div style="margin: 0; padding: 44px 0 0 32px;"
										class="corent_right-nr">
										<h3
											style="margin: 0 0 10px; font-size: 24px; color: #8E4F1B; font-weight: 100; font-family: Arial, Helvetica, sans-serif;">STEP.05</h3>
										<div
											style="margin: 15px 0 0; width: 290px; font-size: 14px; color: #666666; line-height: 20px;"
											class="corent_right-word">
											<p style="margin: 0;">对照左图，即可得出所测量手指戒号；</p>
										</div>
										<div style="margin: 15px 0 0; width: 290px;"
											class="corent_right-word">
											<p style="margin: 0;">若测量结果介于两种尺寸之间，建议您选择较大的手寸号；</p>
											<p style="margin: 0;">注：以上方法可较为方便地测量您的戒号</p>
										</div>
										<div style="margin: 15px 0 0; width: 290px;"
											class="corent_right-word">
											<p style="margin: 0;">同时我们也建议您联系客服，进行专业测量。本人工测量方法存在一定误差，请您多次测量，取戒号出现最多的尺寸。</p>
										</div>
									</div>
								</div>
							</div>
							<div
								style="margin: 40px 0 0; overflow: hidden; color: black; font-family: Simsun; font-size: medium; background-color: #FFF;"
								class="sc_cort-corent sc_cort-spcorent">
								<h4
									style="margin: 0; padding: 0 0 8px; font-size: 14px; color: black; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #F3F3F3; font-weight: 100;">
									其它测量方式</h4>
								<h5
									style="margin: 18px 0; font-size: 14px; color: #666666; font-weight: 100;">您还可以选择您身边其它更方便的工具进行测量：</h5>
								<ul
									style="margin: 0 0 0 -70px; padding: 0 0 20px; list-style: none; overflow: hidden;"
									class="sc_cort-list">
									<li
										style="margin: 0 0 0 70px; list-style: none; width: 320px; float: left;"><img
										width="320" height="213"
										style="margin: 0; border: 0; vertical-align: middle;"
										src="Help/images/6-1.jpg" alt="">
										<p
											style="margin: 10px 0 0; font-size: 14px; color: #666666; line-height: 20px;">取白色纸条，按同样的方法进行
											收紧测量；</p></li>
									<li
										style="margin: 0 0 0 70px; list-style: none; width: 320px; float: left;">
										<img width="320" height="213"
										style="margin: 0; border: 0; vertical-align: middle;"
										src="Help/images/6-2.jpg" alt="">
										<p
											style="margin: 10px 0 0; font-size: 14px; color: #666666; line-height: 20px;">
											取皮尺，以0或10或20等为起点刻度，直接绕手指一圈 收紧测量， 读取数值即可（即手指最粗位置周长）；</p>
									</li>
								</ul>
							</div>
						</div>
						<!--内容end-->
					</div>
					<!--右边end-->
				</div>


				<!--右边结束-->
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
