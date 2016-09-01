<%@ page   pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>投诉建议</title>
		<link rel="stylesheet" href="../css/help.css" />
		<style>
			.about_center{
				height: 805px;
				background-color: #fff;
			}
		</style>
		<script type="text/javascript">
			function zh(){
				location.href="../aboutUs/qwrz.jsp";;
			}
			
			function zh2(){
				location.href="../Service/xgsc.jsp";
			}
		</script>
	</head>
	<body>
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
							 		<h4> <a href="zclc.jsp" >>注册流程</a> </h4>
								</li>
								<li class="bau_other" >
								 	<h4><a href="gmlc.jsp" >>购买流程</a> </h4>
								</li>
								<li class="bau_other">
									<h4> <a href="zffs.jsp">>支付方式  </a>  </h4>
								</li>
								<li class="bau_other">
									<h4><a  href="pslc.jsp" >>配送流程</a>  </h4>
								</li>
								<li class="bau_other">
									<h4><a href="thlc.jsp" >>退货流程 </a> </h4>
								</li>
								<li class="bau_other">
									<h4> <a href="blsh.jsp" >>办理售后</a> </h4>
								</li>
								<li class="bau_other">
									<h4><a href="clsc.jsp" >>测量手寸</a></h4>
								</li>
								<li class="bau_other">
								 	<h4><a href="tsjy.jsp" class="specl_other">>投诉建议</a></h4>
								</li>
								<li class="bau_other">
									<h4><a href="wzdt.jsp" >>网站地图</a></h4>
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
										<img src="../images/lxfs.jpg">
									</div>
								</div>
							</div>
							<!--内容end-->
						</div>
				<!--右边结束-->
				</div>
			</div>
		</div>
	</body>
</html>
