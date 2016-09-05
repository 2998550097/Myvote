<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>我的收藏</title>
		<link rel="stylesheet" href="css/left.css" />
		<link rel="stylesheet" href="css/myfavorites.css" />
		
			<base href="/MyDarry/">
		<link rel="stylesheet" href="css/kefu.css" />
		<link rel="stylesheet" href="css/same.css" />
		<script type="text/javascript" src="headerJs/header.js"></script>
		<link rel="stylesheet" href="css/common.css" />
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
		</script>
		
		
	</head>
	<body>
	<jsp:include page="../../page/header.jsp"/>
	<jsp:include page="../../page/nav.jsp"/>
		<div class="cort">
			<div class="tobuy cmain">
				<div class="cmain mb_back">
					<div class="zbk_top spalid">
				        <span>您当前的位置：</span>
				        <span id="ctl00_content_website_SiteMapPath1"><span>
				        <a href="/" target="_blank">Darry Ring</a>
				        </span><span>
				        <em>&gt;</em>
				        </span><span>
				        <a href="/member/mydr.html" target="_blank">我的DR</a>
				        </span><span>
				        <em>&gt;</em>
				        </span><span>
				        <span>我的订单</span>
				        </span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span>
				    </div>
					<div class="member_cort">
						<div class="member_cort-left fl">
						    <!--我的DR-->
						    <div class="member_cortleft-tittle">
						        <i class="mb_home"></i><a href="/member/mydr.html" rel="nofollow"> 我的  DR</a>
						    </div>
						    <!--我的DR end-->
						    <ul class="member_cort-ul">
						        <li>
						            <h3>-订单中心-</h3>
						            <ul class="member_ul-dr">
						                <li  id="orders"><a href="page/myOrder/myOrder.jsp" rel="nofollow">我的订单</a></li>
						                <li id="ask"><a href="page/myOrder/myEvaluate.jsp" rel="nofollow">我要评价</a></li>
						                <li  id="cart"><a target="_blank" href="page/Cart.jsp" rel="nofollow">我的购物车</a></li>
						                <li class="speacil_color" id="collect"><a href="page/myOrder/myFavorites.jsp" rel="nofollow">我的收藏</a></li>
						                <li id="yuyue" class="no_border"><a href="page/myOrder/myAppointment.jsp" rel="nofollow">我的预约</a></li>
						            </ul>
						        </li>
						        <li>
						            <h3>-售后服务-</h3>
						            <ul class="member_ul-dr">
						                <li id="aftersale"><a href="/member/aftersale.html" rel="nofollow">售后办理</a></li>
						            </ul>
						        </li>
						        <li>
						            <h3>-帐户管理-</h3>
						            <ul class="member_ul-dr">
						                <li id="myinfo"><a href="/member/personinfo.html" rel="nofollow">个人信息</a></li>
						                <li id="password"><a href="/member/mypwd.html" rel="nofollow">修改密码</a></li>
						                <li id="address"><a href="/member/myaddress.html" rel="nofollow">收货地址</a></li>
						                <li id="li_jnr"><a href="/member/mydr_jnr.html">纪念日维护</a></li>
						                <li id="zhuanshu"><a href="/member/DarryHome.aspx">专属空间</a></li>
						                <li id="news" class="no_border"><a href="/member/mynews.html" rel="nofollow">系统消息</a></li>
						            </ul>
						        </li>
						    </ul>
						</div>
						<script type="text/javascript">
						    $(function () {
						        if ("order" == "news") { $("#order").addClass("no_border"); }
						          $("#order").addClass("speacil_color");
						      });
						</script>
				<!--右边开始 -->	
				
				
				
				<div class="member_cort-right fr">
					<!--我的收藏-->
					<div class="member_ollection">
						<div class="myorder-xq-news_top">
							<p class="fl myshou">我的收藏</p>
							<div class="member_all-nav-right fr">
								<span>遇到感兴趣的商品时，如果还没决定立即购买，您可以先把它放入我的收藏，以便下次的查找与购买。</span>
							</div>
						</div>
						<!--收藏的table-->
						<table class="member_ollection-table" border="0" cellpadding="0"
							cellspacing="0">
							<tbody>
								<tr class="ollection-table-trfirst">
									<td class="ollection-table-td1">商品信息</td>
									<td class="ollection-table-td2">价格</td>
									<td class="ollection-table-td3">收藏日期</td>
									<td class="ollection-table-td4">操作</td>
								</tr>
				
								<tr class="ollection-table-trsec" id="myf156878">
									<td class="ollection-table-td1"><img
										src="http://img.darryring.com/userfiles/image/product/20160512095843e410458e7d.jpg"
										class="fl image" height="93" width="93">
										<div class="ollection-table-word fl">
											<p>黑骑士</p>
											<p>[A16018]</p>
											<p>主钻：20分</p>
											<p>材质：白18K金</p>
				
										</div></td>
									<td class="ollection-table-td2">￥6699.00</td>
									<td class="ollection-table-td3">
										<p>2016-08-31 09:48:56 收藏</p>
										<p>
											<a href="javascript:GetUrl('C','A16018','Z020000000016')">查看评论(0条)</a>
										</p>
									</td>
									<td class="ollection-table-td4">
										<p>
											<a href="javascript:GetUrl('C','A16018','Z020000000016')"
												class="ollection-join">加入购物车</a>
										</p>
										<p>
											<a href="javascript:GetUrl('C','A16018','Z020000000016')"
												class="ollection-xq">商品详情</a>
										</p>
										<p class="show_hover">
											<a href="javascript:deleteFavorites(156878);">删除收藏</a>
										</p>
									</td>
								</tr>
				
							</tbody>
						</table>
						<!--收藏的table end-->
					</div>
					<!--我的收藏end-->
				</div>
					
				<!-- 右边结束-->
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
