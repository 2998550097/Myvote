<%@ page   pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
	<base href="/MyDarry/">
		<meta charset="UTF-8">
		<title>加入我们</title>
		<link rel="stylesheet" href="Help/css/aboutU.css" />
		<link rel="stylesheet" href="css/kefu.css" />
		<style>
			.about_center{
				height: 611px;
				background-color: #fff;
			}
		</style>
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
	
				function zh1(){
					location.href="Help/helpCenter/zclc.jsp";
				}
				
				function zh2(){
					location.href="Help/Service/xgsc.jsp";
				}
		</script>
		<script type="text/javascript" src="headerJs/header.js"></script>
		<link rel="stylesheet" href="css/common.css" />
	</head>
	<body>
	
	<jsp:include page="../../page/header.jsp"/>
	
	<jsp:include page="../../page/nav.jsp"/>
	
		<div class="cort" >
			<div class="cmain aboutus">
				<div class="zbk_top spalid">
					<span>您当前的位置：</span>
					<a href="#" target="_blank">Darry Ring</a>
					<em>&gt;</em>
					<span>关于我们</span>
				</div>
				
				
				<div class="about_center">
					<ul class="abc_left fl">
						<li><h3>-关于我们-</h3>
							<ul class="abul_ul" >
                                <li class="bau_other">
                                    <h4>
                                        <a href="Help/aboutUs/qwrz.jsp" >>权威认证</a>
                                    </h4>
                                </li>
                                <li class="bau_other">
                                    <h4>
                                        <a  href="Help/aboutUs/ppsm.jsp" >>品牌声明</a>
                                    </h4>
                                </li>
                                <li class="bau_other">
                                    <h4>
                                        <a  href="Help/aboutUs/swhz.jsp" >>商务合作</a>
                                    </h4>
                                </li>
                                <li class="bau_other">
                                    <h4>
                                        <a  href="Help/aboutUs/lxwm.jsp" >>联系我们</a>
                                    </h4>
                                </li>
                                <li class="bau_other">
                                    <h4>
                                        <a href="Help/aboutUs/jrwm.jsp" class="specl_other">>加入我们</a>
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
								<h2 id="title">加入我们</h2>
								<div id="content">
									<div>&nbsp;</div>
									<div>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Darry Ring&trade; 团队最独特的文化：是信仰爱情。<br>
										<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										团队其中的每一位，都对爱情有着美好的憧憬，对真爱有着坚定的信仰。我们爱我们的品牌，Darry
										Ring&trade;的存在就是为了见证世间真爱，而我们确实做到了，公司团队里的每一位，每天都能看到一对对恋人甜蜜的故事与经历，为他们高兴因他们而感动。将这份感动，这份真爱的正能量传递给更多的人，就是这个团队所做的。<br>
										<br> &nbsp;&nbsp;&nbsp;
										如果你擅长策划，文案，设计，或者你懂网站技术，懂社交媒体，熟悉珠宝行业，你可以什么都不是很精通，但就是单纯的喜欢，希望和我们一起让这个象征一生唯一真爱的品牌，让更多的人得到幸福。你都可以投递简历给我们。<br>
										<br> &nbsp;&nbsp;&nbsp;
										这里没有办公室斗争，有兄弟姐妹的相互关心；没有无聊的压迫式任务，有人生导师般和你一同成长的团队领导者； <br> <br>
										&nbsp;&nbsp; 加入到我们吧，每周末，你还能看到办公室窗外深圳最美的风景和晚八点准时绽放在天空的烟火。<br>
										&nbsp;&nbsp; 如果您想了解更多Darry Ring招聘信息请点击链接<a target="_blank" class="adr"
											href="http://www.darryring.com/culture_jo">www.darryring.com/culture_jo</a>。<br>
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
