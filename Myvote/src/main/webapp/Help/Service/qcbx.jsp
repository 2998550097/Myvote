<%@ page   pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>全程保险</title>
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
				height: 495px;
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
							  		<h4><a href="Help/Service/zsby.jsp">>终生保养 </a></h4>
								</li>
							 	<li class="bau_other">
									<h4><a href="Help/Service/yzsz.jsp">>一钻双证 </a> </h4>
								</li>
								<li class="bau_other">
							 		<h4><a href="Help/Service/zsgh.jsp" >>钻石更换 </a></h4>
								</li>
								<li class="bau_other">
									 <h4> <a  href="Help/Service/qcbx.jsp" class="specl_other">>全程保险 </a></h4>
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
							<h2 id="title">全程保险</h2>
							<div id="content">
								<div>&nbsp;</div>
								<div>只要购买Darry Ring商品，Darry
									Ring将会全程保价速递，能确保您的产品万无一失，安全稳妥地送到您手中。您无须承担任何速递风险。</div>
								<div>
									<br> 全程默认顺丰保价速递，顺丰不到地址默认EMS发出。 快递公司是由Darry
									Ring系统根据您的地址自动选定，您在下单时无法进行选择。全国一线城市默认顺丰速递隔日到达，偏远地区及农村地区默认EMS。Darry
									Ring的专业快递选择使您购物无忧，缩短真爱的距离。
								</div>
								<div>
									<br> 收货时候注意事项：<br>
									您在收货的时候可以当着快递人员的面签收确认，然后检验包装，保证包装无损就可以。有任何的问题，您都可以第一时间联系Darry
									Ring帮您来解决。全国服务热线：400-01-13520
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
