<%@ page   pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>投诉建议</title>
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
			.about_center{
				height: 805px;
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
						<li><h3>-帮助中心-</h3>
							<ul class="abul_ul" >
								<li class="bau_other">
							 		<h4> <a href="Help/helpCenter/zclc.jsp" >>注册流程</a> </h4>
								</li>
								<li class="bau_other" >
								 	<h4><a href="Help/helpCenter/gmlc.jsp" >>购买流程</a> </h4>
								</li>
								<li class="bau_other">
									<h4> <a href="Help/helpCenter/zffs.jsp">>支付方式  </a>  </h4>
								</li>
								<li class="bau_other">
									<h4><a  href="Help/helpCenter/pslc.jsp" >>配送流程</a>  </h4>
								</li>
								<li class="bau_other">
									<h4><a href="Help/helpCenter/thlc.jsp" >>退货流程 </a> </h4>
								</li>
								<li class="bau_other">
									<h4> <a href="Help/helpCenter/blsh.jsp" >>办理售后</a> </h4>
								</li>
								<li class="bau_other">
									<h4><a href="Help/helpCenter/clsc.jsp" >>测量手寸</a></h4>
								</li>
								<li class="bau_other">
								 	<h4><a href="Help/helpCenter/tsjy.jsp" class="specl_other">>投诉建议</a></h4>
								</li>
								<li class="bau_other">
									<h4><a href="Help/helpCenter/wzdt.jsp" >>网站地图</a></h4>
								</li>
							</ul>
						</li>
						<li><h3 onclick="zh2()">-服务条款-</h3>
							<ul class="abul_ul" style="display: none;">
								<li class="bau_other">
									<h4><a href="#" class="specl_other">>修改手寸 </a></h4>
								</li>
							 	<li class="bau_other">
							  		<h4><a href="#">>终生保养 </a></h4>
								</li>
							 	<li class="bau_other">
									<h4><a href="#">>一钻双证 </a> </h4>
								</li>
								<li class="bau_other">
							 		<h4><a href="#">>钻石更换 </a></h4>
								</li>
								<li class="bau_other">
									 <h4> <a  href="#">>全程保险 </a></h4>
								</li>
								<li class="bau_other">
									<h4><a href="#">>15天退换</a></h4>
							 	</li>
							 	<li class="bau_other">
							 		<h4> <a  href="#">>注册协议 </a></h4>
								</li>
							 	<li class="bau_other">
							  		<h4><a href="#">>隐私声明</a></h4> 
							 	</li>
							</ul>
														
						</li>
					</ul>
				<!--左边结束-->
					<div class="abc_right fr">
							<!--内容-->
							<div class="abcr_center">
								<h2 id="title">投诉与建议</h2>
								<div id="content">
									<div class="newadvice">
										<p class="newadvice_first" style="margin-left: 0;">您的建议或投诉将帮助及监督我们改进产品和服务。非常感谢您的支持。</p>
										<h5>建议类型</h5>
										<div class="newadvice_sec">
											<i>接待服务类</i> <i>店铺体验类</i> <i>网站操作类</i> <i>售后质检类</i> <i>定制周期类</i> <i>活动规则类</i>
											<i>物流运输类</i> <i>其他</i>
										</div>
										<div class="newadvice_add">
											<textarea maxlength="500" placeholder="请告诉我们您的任何意见和建议"
												id="feedbackmsg"></textarea>
											<i class="textwrong" style="display: none;">请填写您的建议</i>
										</div>
										<div class="newadvice_third">
											<p style="margin-left: 0;">建议您留下联系方式，以便DR专员为您一对一服务，谢谢！</p>
											<input type="text" placeholder="请输入手机号码或邮箱" id="adviceinput">
											<i class="advicewrong">请输入正确的联系方式</i> <span class="advicebutton">提交</span>
										</div>
										<h2>您可以通过以下方式联系我们:</h2>
										<img src="Help/images/lxfs.jpg">
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
