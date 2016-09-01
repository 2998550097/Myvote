<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>退货流程</title>

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
	height: 1392px;
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
									<a href="Help/helpCenter/thlc.jsp" class="specl_other">>退货流程 </a>
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
						<h2 id="title">退货流程</h2>
						<div id="content">
							<div>&nbsp;</div>
							<div>
								<strong>一、 退换货操作指南</strong><br> &nbsp;网络自助办理退货<br>
								&nbsp; 1) 登陆后进入“我的DR”点击“退货办理"，进入可办理退货列表。<br> &nbsp; 2)
								选择您所需办理退货的产品，提交办理退货。
							</div>
							<div>
								&nbsp; 3) 提交退货原因，选择退货/退款方式后，点击“确认办理”后，即可提交成功。<br> &nbsp; 4)
								如果我们收到您的退货并且经检验符合退换货条件的后，您的退款将在7个工作日内退还给您(以现金交付或汇款的方式退还)。<br>
								<br> 体验中心退换<br> &nbsp; 1) 我们建议您就近选择您所在的城市Darry
								Ring的体验中心，按照预约时间前往体验中心，处理退换事宜。<br> &nbsp; 2)
								如果我们收到您的退货并且经检验符合退换货条件后，您的退款将在7个工作日内退还给您(以现金交付或汇款的方式退还)。<br>
								<br> <strong>二、 回寄地址</strong><br>
								&nbsp;戴瑞珠宝售后部地址：广东省深圳市罗湖区布吉路1008号富基PARK大厦1108 <br>
								&nbsp;邮编：518000<br> &nbsp;联系人： 郭娟<br>
								&nbsp;电话：0755-25506958<br> <br> <strong>三、快递费用</strong><br>
								&nbsp;建议顺丰快递购买保险寄回，需要客户承担来回快递和保价费用，Darry Ring提供免工费维护服务。<br>
								<br> <strong>四、寄回方法</strong><br>
								&nbsp;相关售后服务都需使用一张小纸条写明具体情况并附上收件人联系信息，并使用一个小包装盒子包装寄回即可。
							</div>
							<div>&nbsp;</div>
							<div>
								<strong>五、扣除定制费用说明</strong>
							</div>
							<div>&nbsp;收到商品15天内退货需扣除对应定制费用，收到商品15天后不受理退货。</div>
							<div>
								<div>&nbsp;DR求婚女戒</div>
								<div>&nbsp; &nbsp;1.商品金额3万以内，非质量问题退货，需扣除200元定制费用。</div>
								<div>&nbsp; &nbsp;2.商品金额3-5万元以内，非质量问题退货，需扣除500元定制费用。</div>
								<div>&nbsp; &nbsp;3.商品金额5-10万元以内，非质量问题退货，需扣除1000元定制费用。</div>
								<div>&nbsp; &nbsp;4.商品金额超出10万元以上，非质量问题退货，需扣除2000元定制费用。</div>
								<div>&nbsp;DR男戒</div>
								<div>&nbsp; &nbsp;1.商品金额2000元以内，非质量问题退货，需扣除 200元定制费用。</div>
								<div>&nbsp; &nbsp;2.商品金额超出2000元以上，非质量问题退货，需扣除500元定制费用。</div>
								<div>&nbsp;DR对戒</div>
								<div>&nbsp; &nbsp;1.凡对戒商品，非质量问题退货，费用扣除分别按照求婚女戒和男戒标准。</div>
								<div>&nbsp;DR饰品（项链、手链、耳钉 ）</div>
								<div>&nbsp; &nbsp;1.商品金额2000元以内， 非质量问题退货，客户承担来回运费即可。</div>
								<div>&nbsp; &nbsp;2.商品金额超出2000元以上，非质量问题退货，费用扣除按照求婚女戒标准。</div>
							</div>
						</div>
					</div>
					<!--内容end-->
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
