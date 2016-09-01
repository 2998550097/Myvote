<%@ page   pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>钻石更换</title>
<link rel="stylesheet" href="Help/css/help.css" />
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
				
				function zh1(){
					location.href="Help/helpCenter/zclc.jsp";
				}
		</script>
				<style>
			.about_center{
				height: 520px;
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
					<span>您当前的位置：</span>
					<a href="#" target="_blank">Darry Ring</a>
					<em>&gt;</em>
					<span>服务条款</span>
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
                                        <a  href="#">>品牌声明</a>
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
                    		</ul>
						</li>
						<li><h3 onclick="zh1()">-帮助中心-</h3>
							<ul class="abul_ul" style="display: none;">
								<li class="bau_other">
							 		<h4> <a href="#" >>注册流程</a> </h4>
								</li>
								<li class="bau_other" >
								 	<h4><a href="#" >>购买流程</a> </h4>
								</li>
								<li class="bau_other">
									<h4> <a href="#">>支付方式  </a>  </h4>
								</li>
								<li class="bau_other">
									<h4><a  href="#" >>配送流程</a>  </h4>
								</li>
								<li class="bau_other">
									<h4><a href="#" >>退货流程 </a> </h4>
								</li>
								<li class="bau_other">
									<h4> <a href="#" class="specl_other">>办理售后</a> </h4>
								</li>
								<li class="bau_other">
									<h4><a href="#">>测量手寸</a></h4>
								</li>
								<li class="bau_other">
								 	<h4><a href="#">>投诉建议</a></h4>
								</li>
								<li class="bau_other">
									<h4><a href="#">>网站地图</a></h4>
								</li>
							</ul>
						</li>
						<li><h3>-服务条款-</h3>
							<ul class="abul_ul" >
								<li class="bau_other">
									<h4><a href="Help/Service/xgsc.jsp" >>修改手寸 </a></h4>
								</li>
							 	<li class="bau_other">
							  		<h4><a href="Help/Service/zsby.jsp" >>终生保养 </a></h4>
								</li>
							 	<li class="bau_other">
									<h4><a href="Help/Service/yzsz.jsp" >>一钻双证 </a> </h4>
								</li>
								<li class="bau_other">
							 		<h4><a href="Help/Service/zsgh.jsp" class="specl_other">>钻石更换 </a></h4>
								</li>
								<li class="bau_other">
									 <h4> <a  href="Help/Service/qcbx.jsp">>全程保险 </a></h4>
								</li>
								<li class="bau_other">
									<h4><a href="Help/Service/gh15.jsp">>15天退换</a></h4>
							 	</li>
							 	<li class="bau_other">
							 		<h4> <a  href="Help/Service/zcxy.jsp">>注册协议 </a></h4>
								</li>
							 	<li class="bau_other">
							  		<h4><a href="Help/Service/yssm.jsp">>隐私声明</a></h4> 
							 	</li>
							</ul>
														
						</li>
					</ul>
				<!--左边结束-->
					
					<div class="abc_right fr">
							<!--内容-->
							<div class="abcr_center">
								<h2 id="title">钻石更换</h2>
								<div id="content">
									<div>&nbsp;</div>
									<div>
										Darry Ring求婚钻戒是一生唯一一枚。只要购买Darry Ring求婚钻戒商品我们将会为您提供钻石大小升级服务。<br>
										一、 钻石更换须知<br> (1) 商品需为戴瑞珠宝商品。<br> (2) 所购的Darry Ring求婚钻戒产品。<br>
										(3) 持有证书（证书无污损和褶皱）。<br> (4) 新换购商品的价格要求等于或者高于已经购买的产品。<br>
										(5) 升级钻石我们将在收到您的商品后15个工作日内重新定制完成并寄回您指定的地址。<br> 二、 换款条件<br>
										根据原订单购买时的价格与现更换的女戒价格计算差价。不提供戒指回收服务，更换款式的定制时间按照正常定制时间计算，凭相关鉴定证书办理。<br>
										&nbsp;
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
