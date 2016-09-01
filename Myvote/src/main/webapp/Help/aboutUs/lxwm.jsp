<%@ page   pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<base href="/MyDarry/">
		<meta charset="UTF-8">
		<title>联系我们</title>
		<link rel="stylesheet" href="Help/css/aboutU.css" />
		
		
		
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
				function zh1(){
					location.href="Help/helpCenter/zclc.jsp";
				}
				
				function zh2(){
					location.href="Help/Service/xgsc.jsp";
				}
		</script>
		
		
		
		<style>
			.about_center{
				height: 2205px;
				background-color: #fff;
			}
		</style>
	</head>
	<body>
		<jsp:include page="../../page/header.jsp"/>
		<jsp:include page="../../page/nav.jsp"/>
	
		<div class="cort">
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
                                        <a  href="Help/aboutUs/lxwm.jsp" class="specl_other">>联系我们</a>
                                    </h4>
                                </li>
                                <li class="bau_other">
                                    <h4>
                                        <a href="Help/aboutUs/jrwm.jsp">>加入我们</a>
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
						<li><h3 oclick="zh2()">-服务条款-</h3>
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
								<h2 id="title">联系我们</h2>
								<div id="content">
									<div>&nbsp;</div>
									<div>总部：</div>
									<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
										深圳市南山区科技南十二路28号康佳研发大厦B区20层</div>
									<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										Darry Ring专注于真爱珠宝的打造，顶级的镶嵌工艺和严苛挑选每一颗钻石，</div>
									<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Darry
										Ring已经成为众多爱侣心中求婚钻戒的第一选择！Darry Ring借助官</div>
									<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										网，B2C平台为更多爱人提供更便捷的购物体验、更专业的服务！</div>
									<div>&nbsp;</div>
									<div>
										<h4 style="font-size: 14px; color: #000">香港：</h4>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										香港九龙尖沙咀弥敦道63号I SQUARE 国际广场地铁层6B号店铺<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										电话：00852-23677389<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
											style="color: #c6a34d" target="_blank"
											href="#">预约到店 &gt;</a>
									</div>
									<div>
										<h4 style="font-size: 14px; color: #000">北京：</h4>
										<h4 style="font-size: 14px; color: #000; margin-left: 36px">SOHO店</h4>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										北京市东二环朝阳门桥银河SOHO中心负一层B-2109（朝阳门地铁站G出口）<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 电话：010-5957
										6758<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a style="color: #c6a34d" target="_blank"
											href="#">预约到店 &gt;</a>
									</div>
									<div>
										<h4 style="font-size: 14px; color: #000; margin-left: 36px">银泰in88店</h4>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										北京市东城区王府井大街88号银泰百货in88 1幢地上二层L211号商铺<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										电话：010-59785521<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
											style="color: #c6a34d" target="_blank"
											href="#">预约到店 &gt;</a>
									</div>
									<div>
										<h4 style="font-size: 14px; color: #000">上海：</h4>
										<h4 style="font-size: 14px; color: #000; margin-left: 36px">红坊店</h4>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										上海市长宁区淮海西路570号红坊创意园G-108<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										电话：021-60934520<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
											style="color: #c6a34d" target="_blank"
											href="#">预约到店 &gt;</a>
									</div>
									<div>
										<h4 style="font-size: 14px; color: #000; margin-left: 36px">香港广场店</h4>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										上海市黄浦区淮海中路282号香港广场商场北座NL1-09B室<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										电话：021-63140533<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
											style="color: #c6a34d" target="_blank"
											href="#">预约到店 &gt;</a>
									</div>
									<div>
										<h4 style="font-size: 14px; color: #000">广州：</h4>
										<h4 style="font-size: 14px; color: #000; margin-left: 36px">中信广场店</h4>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										广东省广州市天河区天河北路233号中信广场中天购物城商场134-135单元<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										电话：020-38836315<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
											style="color: #c6a34d" target="_blank"
											href="#">预约到店 &gt;</a>
									</div>
									<div>
										<h4 style="font-size: 14px; color: #000">深圳：</h4>
										<h4 style="font-size: 14px; color: #000; margin-left: 36px">世界之窗店</h4>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										广东省深圳市南山区华侨城世界之窗欧陆风情街8号楼（世界之窗地铁口I出口)<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 电话：0755-8662
										1782<br> <a style="color: #c6a34d" target="_blank"
											href="#">预约到店 &gt;</a>
									</div>
									<div>
										<h4 style="font-size: 14px; color: #000">成都：</h4>
										<h4 style="font-size: 14px; color: #000; margin-left: 36px">晶融汇广场店</h4>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										四川省成都市东大街99号晶融汇广场1楼114单元<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 电话：028-8147
										4520<br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<a style="color: #c6a34d" target="_blank"
											href="#">预约到店 &gt;</a>
									</div>
									<div>
										<h4 style="font-size: 14px; color: #000; margin-left: 36px">仁恒置地店</h4>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										四川省成都市人民南路二段1号仁恒置地广场322A+322B号单元<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										电话：028-61867010<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
											style="color: #c6a34d" target="_blank"
											href="#">预约到店 &gt;</a>
									</div>
									<div>
										<h4 style="font-size: 14px; color: #000">沈阳：</h4>
										<h4 style="font-size: 14px; color: #000; margin-left: 36px">中街恒隆店</h4>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										辽宁省沈阳市沈河区中街路128号皇城恒隆广场商场148-1号铺位<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										电话：024-31508520<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
											style="color: #c6a34d" target="_blank"
											href="#">预约到店 &gt;</a>
									</div>
									<div>
										<h4 style="font-size: 14px; color: #000; margin-left: 36px">市府恒隆店</h4>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										辽宁省沈阳市沈河区青年大街1号市府恒隆广场商场325号铺位<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										电话：024-31958520<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
											style="color: #c6a34d" target="_blank"
											href="#">预约到店 &gt;</a>
									</div>
									<div>
										<h4 style="font-size: 14px; color: #000">重庆：</h4>
										<h4 style="font-size: 14px; color: #000; margin-left: 36px">WFC店</h4>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										重庆市渝中区解放碑步行街民族路188号环球金融中心（WFC）LG-B03<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										电话：023-63710835<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
											style="color: #c6a34d" target="_blank"
											href="#">预约到店 &gt;</a>
									</div>
									<div>
										<h4 style="font-size: 14px; color: #000; margin-left: 36px">观音桥店</h4>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										重庆市江北区观音桥步行街2号附5号融恒?盈嘉中心L1-06室<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										电话：023-67527832<br>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a
											style="color: #c6a34d" target="_blank"
											href="#">预约到店 &gt;</a>
									</div>
									<div>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;全国免费服务热线：400
										01 13520 <a
											style="display: block; width: 150px; height: 30px; line-height: 30px; text-align: center; font-size: 14px; color: #000; border: 1px solid #666; margin-left: 36px"
											target="_blank" href="#">更多实体店
											&gt;&gt;</a>
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
