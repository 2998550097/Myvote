<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>帮助页面</title>
<meta charset="utf-8" />
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
		</script><style>
.about_center {
	height: 2050px;
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
									<a href="Help/helpCenter/zclc.jsp" class="specl_other">>注册流程</a>
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
						<h2 id="title">注册流程</h2>
						<div id="content">
							<div>&nbsp;</div>
							<div>您可以使用手机注册、邮箱注册两种方式成为Darry
								Ring会员。注册完成后，可以用邮箱/手机号码登录Darry Ring官网。</div>
							<div>
								<br> <strong>邮箱注册</strong><br>
								1、填写注册信息，最好使用您常用的电子邮箱做为帐号；<br> 2、确认其它信息无误后按"马上注册"进入下一步；<br>
								3、您的邮箱注册已成功！<br> <img width="709" height="500"
									src="Help/images/emailSign.jpg" alt="">
							</div>
							<div>&nbsp;</div>
							<div>
								<strong>手机验证注册</strong><br> 1、填写注册信息并通过手机短信获取手机验证码<br>
								2、正确输入手机验证码（60秒后可以再次发送），确定以上信息无误后点击"马上注册"进入下一步。<br>
								3、您的手机注册已成功！<br> <img width="709" height="500"
									src="Help/images/phoneSign.jpg" alt="">
							</div>
							<div>&nbsp;</div>
							<div>
								<strong>关于第三方快捷登录信息</strong><br>
								初次使用QQ、微博等第三方登录时，需完善用户信息或绑定原有帐号信息后，方可成功登录。<br> <img
									width="709" height="400" src="Help/images/Thirdsign.jpg" alt="">
							</div>
						</div>
					</div>
					<!--内容end-->
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