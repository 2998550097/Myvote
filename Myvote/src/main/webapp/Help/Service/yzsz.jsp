<%@ page   pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>一钻双证</title>
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
				height: 940px;
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
									<h4><a href="Help/Service/yzsz.jsp" class="specl_other">>一钻双证 </a> </h4>
								</li>
								<li class="bau_other">
							 		<h4><a href="Help/Service/zsgh.jsp">>钻石更换 </a></h4>
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
								<h2 id="title">一钻双证</h2>
								<div id="content">
									<div>&nbsp;</div>
									<div>
										<div>DR出具证书类型：</div>
										<div>圆形钻石30分以下出具CCGTC／CTDM证书。</div>
										<div>圆形钻石30分及以上出具GIA与CCGTC／CTDM两种证书。</div>
										<div>&nbsp;</div>
										<div>异形钻1克拉以下出具CCGTC／CTDM证书。</div>
										<div>异形钻1克拉及以上出具GIA与CCGTC／CTDM两种证书。</div>
										<div>&nbsp;</div>
										<div>注：CCGTC／CTDM检测后需15天后方可在其官网查询到检测结果。</div>
										<div>&nbsp;</div>
										<div>证书遗失如何处理：</div>
										<div>&nbsp;</div>
										<div>DR产品不管是申请售后还是申请退货，都需要顾客将相关检测证书寄回定制中心，如证书遗失，
						
											则需要按照以下标准收取证书检测费用。&nbsp;</div>
										<div>
											<img width="585" height="352"
												src="../images/d_fe.jpeg"
												alt="">
										</div>
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
