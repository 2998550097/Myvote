<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>支付方式</title>
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
	height: 2023px;
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
									<a href="Help/helpCenter/zffs.jsp" class="specl_other">>支付方式 </a>
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
						<h2 id="title">支付方式</h2>
						<div id="content">
							<div>&nbsp;</div>
							<div>
								<strong>一、&nbsp; 中国顾客付款方式</strong><br> &nbsp;&nbsp;&nbsp;
								1. 支付宝在线支付<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								详情请参见：什么是支付宝？零风险购物，先验货后付款<br> &nbsp;&nbsp;&nbsp; 2.
								网上银行在线支付<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								支持网上银行在线支付（几乎涵盖所有大中型银行的银行卡）。<br> &nbsp;&nbsp;&nbsp; 3.
								银行电汇（即：个人对公，公对公支付）<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								适用于全国范围，您可以在任何一家银行向下表中所列出的银行账户办理汇款业务。<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								到款日期2－5天办理汇款时，请您在汇款单“用途栏”中注明您的订单号，这样会方便我们将这笔款项及时加入您的订单中，并尽快为您安排发货。
							</div>
							<div>
								<br> 对公汇款账户信息如下：<br> &nbsp;&nbsp; 户名：深圳市戴瑞珠宝有限公司<br>
								&nbsp;&nbsp; 银行名称：平安银行深圳水贝支行<br> &nbsp;&nbsp;
								银行账号：0022100245171 &nbsp;<br> <br> &nbsp;&nbsp;
								户名：深圳市戴瑞珠宝有限公司<br> &nbsp;&nbsp; 银行名称：农业银行深圳华侨城支行<br>
								&nbsp;&nbsp; 银行账号：41002900040023458<br> <br>
								&nbsp;&nbsp; 户名：深圳市戴瑞珠宝有限公司<br> &nbsp;&nbsp;
								银行名称：工商银行深圳侨城西街支行<br> &nbsp;&nbsp;
								银行账号：4000093219100050874&nbsp;&nbsp; &nbsp;<br> <br>
								&nbsp;&nbsp; 户名：深圳市戴瑞珠宝有限公司<br> &nbsp;&nbsp; 银行名称：建设银行深圳湾支行<br>
								&nbsp;&nbsp; 银行账号：44201101075052500122<br> <br> <br>
								&nbsp;&nbsp; 户名：深圳市戴瑞珠宝有限公司<br> &nbsp;&nbsp; 银行名称：中国银行深圳湾支行<br>
								&nbsp;&nbsp; 银行账号：754962529763&nbsp;&nbsp; &nbsp;<br> <br>
								&nbsp;&nbsp; 户名：深圳市戴瑞珠宝有限公司<br> &nbsp;&nbsp;
								银行名称：招商银行深圳科发支行<br> &nbsp;&nbsp; 银行账号：755921160110107<br>
								<br> &nbsp;&nbsp; 户名：深圳市戴瑞珠宝有限公司<br> &nbsp;&nbsp;
								银行名称：邮政储蓄深圳科技园支行<br> &nbsp;&nbsp;
								银行账号：944035010000000091&nbsp;&nbsp;&nbsp; &nbsp;<br> &nbsp;
								&nbsp;<br> &nbsp; 提示：<br> &nbsp;&nbsp;
								汇款后需通过在线客服、电话或传真等方式向我们客服提供您的支付信息（如：汇款时间、汇款金额、汇款地区、银行信息以及订单号等），以便及时为您处理订单并尽快为您发货。<br>
								<br> &nbsp; 4. 邮政汇款<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								邮政汇款适用于全国邮政范围所能覆盖的国内地区，您可以直接到邮局填写汇款单<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (1)&nbsp;&nbsp;&nbsp;
								戴瑞珠宝会在您寄出之后2－5天收到汇款。<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (2)&nbsp;&nbsp;&nbsp;
								款到戴瑞珠宝后，我们会立刻为您安排发货。<br>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (3)&nbsp;&nbsp;&nbsp;
								请您在汇款人或收款人处注明您的订单号（网上定货结束后会自动显示）。<br> <br>
								<div>
									<strong>二、&nbsp; 境外顾客付款方式</strong><br>
									&nbsp;&nbsp;&nbsp;特别提示：该网页介绍的仅是中国大陆的收费参考，国外汇款到中国费用可能有差别。<br>
									&nbsp;&nbsp;&nbsp; 1、外币户口<br>
									&nbsp;&nbsp;&nbsp;银行名称：中国银行（香港）有限公司<br>
									&nbsp;&nbsp;&nbsp;账户名称：DR&nbsp;GROUP&nbsp;COMPANY&nbsp;LIMITED<br>
									&nbsp;&nbsp;&nbsp;银行账号：012-883-92247651<br> <br>
									&nbsp;&nbsp;&nbsp; 2、港币saving户口<br>
									&nbsp;&nbsp;&nbsp;银行名称：中国银行（香港）有限公司<br>
									&nbsp;&nbsp;&nbsp;账户名称：DR&nbsp;GROUP&nbsp;COMPANY&nbsp;LIMITED<br>
									&nbsp;&nbsp;&nbsp;银行账号：012-883-10427448<br>
								</div>
							</div>
							<!--内容end-->
						</div>
						<!--右边end-->
					</div>
					<!--主要内容end-->
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
