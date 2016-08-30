<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta content="IE=edge, chrome=1" http-equiv="X-UA-Compatible">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta name="renderer" content="webkit">
<title>DR族粉丝社区</title>

<link rel="stylesheet" type="text/css"
	href="DR/css/index.css">
<link rel="stylesheet" type="text/css"
	href="DR/css/info.css">
<link rel="stylesheet" type="text/css"
	href="DR/css/common.css">
<script type="text/javascript"
	src="DR/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="DR/js/commonNew.js"></script>
<script type="text/javascript" 
	src="DR/js/tools.js"></script>
<script type="text/javascript"
	src="DR/js/banner.js"></script>
<script type="text/javascript"
	src="DR/js/common.js"></script>
<script type="text/javascript" 
	src="DR/sjs/index.js"></script>
</head>
<body>
	<!-- 锚链接：回到顶部 -->
	<a name="toHeader"></a>
	<!-- 锚链接：回到顶部 end -->
	<!-- start of 头部 -->
	<div class="ni-header fix">
		<!-- start of 导航 -->
		<div class="ni-nav">
			<div class="ni-navMain fix">
				<div class="ni-navInfo fr">
					<div class="ni-navSearch" id="ni-navSearch">
						<a href="javascript:;" class="navSearch-btn" id="navSearch-btn"></a>
						<div class="navSearch-input">
							<input placeholder="请输入搜索内容" value="" /> <a href="javascript:;"
								id="navSearch-submit"></a>
						</div>
					</div>
					<a class="ni-publish" href="javascript:;"
						request-url="/forum/create" is-login="">发表文章</a> <a
						class="ni-login" id="ni-loginBtn" href="javascript:;">登录</a> <a
						class="ni-login" id="ni-resterBtn" href="javascript:;">加入DR族</a> <a
						class="ni-remind " href="javascript:;"></a>
				</div>
				<div class="ni-navMenu fl">
					<a href="/"><div class="ni-logo fl"></div></a>
					<!-- start of 导航 -->
					<ul class="ni-menu fl" id="ni-navs">
						<li><a class="activate" href="/">首页</a></li>
						<li><a href="javascript:;">真爱部落</a>
							<div class="ni-subMenu">
								<ul class="fix">
									<li><a href="DR/marry_me.html">求婚交流</a></li>
									<li><a href="DR/emotion.html">情感八卦</a></li>
									<li><a href="DR/beautif.html">最美钻戒</a></li>
									<li><a href="DR/question.html">问题反馈</a></li>
								</ul>
							</div></li>
						<li><a href="DR/activity.html">DR活动</a></li>
						<li><a href="index.jsp" target="_blank">Darry Ring官网</a></li>
					</ul>
					<!-- end of 导航 -->
				</div>
			</div>
		</div>
		<!-- end of 导航 -->
		<!-- start of 导航透明背景 -->
		<div class="ni-navBg"></div>
		<!-- end of 导航透明背景 -->
	</div>
	<!-- end of 头部 -->
	<!--登录弹窗-->
	<!-- start of 登录框 -->
	<div class="ni-loginBox" request-url="http://shequ.darryring.com/">
		<a id="ni-closeLoginBox" class="closeLoginBox" href="javascript:;"></a>
		<iframe src="http://passport.darryring.com/other?regtype=7"></iframe>
	</div>
	<!-- end of 登录框 -->
	<!--登录弹窗end-->
	<!--注册弹窗-->
	<!-- start of 透明背景-->
	<div class="dr_blackwall"></div>
	<!-- end of 透明背景end-->
	<!-- start of 注册 -->
	<div class="ni-regBox" request-url="http://shequ.darryring.com/">
		<a id="ni-closeRegBox" class="closeRegBox" href="javascript:;"></a>
		<iframe class="url" src="http://passport.darryring.com/other"></iframe>
	</div>
	<!-- end of 登录框 -->
	<!--注册弹窗-->

	<script type="text/javascript">
		var isLogin = "0"
		var searchUrl = "/forum/search";

		//搜索栏显示隐藏
		$('.navSearch-btn').off('click').on('click', function(e) {
			if (isLogin == 0) {
				$('.dr_blackwall,.ni-loginBox').fadeIn();
				loginRefresh();
				return false;
			}
			$(this).hide();
			$('.navSearch-input').show();
			$('.navSearch-input input').focus();

			stopPropagation(e);
		});

		$('#navSearch-submit').off('click').on('click', function() {

			if (isLogin == 0) {
				$('.dr_blackwall,.ni-loginBox').fadeIn();
				loginRefresh();
				return false;
			}
			var str = $('.navSearch-input input').val();
			if (str == '') {
				alert('关键字不能为空');
				return false;
			}
			searchUrl = searchUrl + '?search=' + str;
			$(this).attr('href', searchUrl);
		})

		$('.navSearch-input input').keydown(function(e) {
			if (e.keyCode == 13) {
				if (isLogin == 0) {
					$('.dr_blackwall,.ni-loginBox').fadeIn();
					loginRefresh();
					return false;
				}
				var str = $('.navSearch-input input').val();
				if (str == '') {
					alert('关键字不能为空');
					return false;
				}
				searchUrl = searchUrl + '?search=' + str;
				location.href = searchUrl;
			}
		});
	</script>

	<!-- start of banner-->
	<div class="ni-banner">
		<ul class=" ni-bannerul" id="ni-houmeBanner">
			<li><a href="#"
				  > <img
					src="DR/images/1.jpg" alt="1" />
			</a></li>
			<li><a href="#"
				  > <img
					src="DR/images/1470798450.jpg" />
			</a></li>
			<li><a href="#"
				  > <img
					src="DR/images/1467080198.jpg" />
			</a></li>
		</ul>
		<div class="ni-banner_xdcort">
			<ul class="ni-banner_xd" id="ni-HomeBanxd">
				<li class="activate"></li>
				<li></li>
				<li></li>
			</ul>
		</div>
	</div>
	<script type="text/javascript">
		var i=2;
		function tab(){
			var string='.ni-banner #ni-houmeBanner li:nth-child('+i+')';
			$('.ni-banner #ni-houmeBanner li').fadeOut(1000);
			$(string).fadeIn(1000);
				i++;
				if(i>3){
					i=1;
				}
			}
		setInterval(tab,3000);
	</script>
	<!-- end of banner-->
	<!-- start of DR数据 -->
	<div class="ni-drData">
		<div class="ni-drDataMain fix">
			<ul class="ni-drDataList fix">
				<li class="jrdrz"><i class="user_number">1614379</i>位用户已加入DR族</li>
				<li class="sqht">爱的路上留下了<i>10397</i>个真挚文章
				</li>
				<li class="drqh">见证了<i class="qiu_hun">372</i>位DR人求婚
				</li>
			</ul>
			<div class="ni-badge"></div>
		</div>
	</div>
	<!-- end of DR数据 -->

	<!-- start of 页面主体 -->
	<div class="ni-main fix">
		<!-- start of 侧边栏 -->
		<div class="ni-sidebar fr">
			<!-- start of 发表真爱理念 -->
			<div class="ni-pushConcept ni-sidebarBox actionBtn" is_login="">
				<img src="DR/images/ThisDR.jpg" alt="DR" href="#" />
				<a href="javascript:;"></a>
			</div>
			<!-- ent of 发表真爱理念 -->
			<!-- start of 真爱理念精选 -->
			<div class="ni-conceptTop ni-sidebarBox">
				<h3>
					DR族真爱理念的精彩解读<a href="javascript:void (0);" class="more idea_more"
						is_login="" request_url="/love/idea"   >更多></a>
				</h3>
				<div class="ni-conceptList">
					<div class="ni-concept">
						<p>我需要的时候他在，不管发生什么都不担心害怕，因为知道他在，慢慢的安全感，在彼此的生活点滴中体会彼此爱意，不畏一切，因为知道他是我的，不必担心被谁抢走，他的心里眼里只有我，我也一样。真爱，唯一，不离不弃。</p>
						<div class="ni-conceptInfo fix">
							<span class="drIdeaLikeNum fr">获得<i class="likeNum">20</i>位DR族认同<a
								class="ni-conceptLike" href="javascript:;" is_login=""
								post_url="/love/idea/praise" love_id="43"></a></span> <a
								class="ni-memberInfo fl" href="/user/info/231834"
								  ><img
								src="DR/images/img_user5.png"
								alt="">王77</a>
						</div>
					</div>
					<div class="ni-concept">
						<p>IS the ture love
							..因为你我才知道自己的存在，因为你我才知道自己的不足，因为你我才想在你面前是更好的自己，而那个自己只有你看的见，那个就是最初最真的自己。我把最初的自己给你，是灵魂的约定此生我的灵魂因为有你而快乐，因为你生存。。现在此刻的我有点失去洋气，很难呼吸</p>
						<div class="ni-conceptInfo fix">
							<span class="drIdeaLikeNum fr">获得<i class="likeNum">9</i>位DR族认同<a
								class="ni-conceptLike" href="javascript:;" is_login=""
								post_url="/love/idea/praise" love_id="29"></a></span> <a
								class="ni-memberInfo fl" href="/user/info/395509"
								  ><img
								src="DR/images/img_user5.png"
								alt="">南宫凡......</a>
						</div>
					</div>
					<div class="ni-concept">
						<p>不为恋爱而恋爱，如果不是真心相爱的那个人，我宁愿享受一个人的孤独。</p>
						<div class="ni-conceptInfo fix">
							<span class="drIdeaLikeNum fr">获得<i class="likeNum">10</i>位DR族认同<a
								class="ni-conceptLike" href="javascript:;" is_login=""
								post_url="/love/idea/praise" love_id="11"></a></span> <a
								class="ni-memberInfo fl" href="/user/info/281127"
								  ><img
								src="http://jewely-image.b0.upaiyun.com/avatar/2015-08-27/1440639266.jpg"
								alt="">流绪微......</a>
						</div>
					</div>
				</div>
			</div>
			<!-- end of 真爱理念精选 -->
			<!-- start of 社区频道 -->
			<div class="ni-drChannel ni-sidebarBox">
				<h3>社区频道</h3>
				<ul class="ni-drChanList fix">
					<li><a href="/forum?id=15"   > <img
							src="http://jewely-image.b0.upaiyun.com/images/2016-06-28/1467101047.png"
							alt="">
							<h4>求婚交流</h4>
							<p>最近:613文章</p> <span>3885</span>
					</a></li>
					<li><a href="/forum?id=22"   > <img
							src="http://jewely-image.b0.upaiyun.com/images/2016-06-28/1467101055.png"
							alt="">
							<h4>情感八卦</h4>
							<p>最近:1238文章</p> <span>8272</span>
					</a></li>
					<li><a href="/forum?id=23"   > <img
							src="http://jewely-image.b0.upaiyun.com/images/2016-06-23/1466652300.png"
							alt="">
							<h4>最美钻戒</h4>
							<p>最近:526文章</p> <span>4152</span>
					</a></li>
					<li><a href="/forum?id=36"   > <img
							src="http://jewely-image.b0.upaiyun.com/images/2016-06-23/1466652291.png"
							alt="">
							<h4>问题反馈</h4>
							<p>最近:26文章</p> <span>66</span>
					</a></li>
				</ul>
			</div>
			<!-- end of 社区频道 -->
			<!-- start of 首页推荐 -->
			<div class="ni-referral ni-sidebarBox">
				<h3>首页推荐</h3>
				<div class="ni-referralShow">
					<ul class="ni-referralList" id="ni-sidebarBanner">
						<li><a    href="/forum-3108.html"> <img
								src="http://img02.tooopen.com/images/20150623/tooopen_sy_131569737913.jpg" />
								<p title="EQ测试：你的爱情智商有多高？">EQ测试：你的爱情智商有多高？</p>
						</a></li>
						<li><a    href="/forum-3106.html"> <img
								src="http://jewely-image.b0.upaiyun.com/ueditor/2016-08-25/1472092629.jpg" />
								<p title="还记得那些年的情书吗？">还记得那些年的情书吗？</p>
						</a></li>
						<li><a    href="/forum-3075.html"> <img
								src="http://jewely-image.b0.upaiyun.com/ueditor/2016-08-24/1472027706.jpg" />
								<p title="你家男朋友够细心吗？">你家男朋友够细心吗？</p>
						</a></li>
						<li><a    href="/forum-3029.html"> <img
								src="http://jewely-image.b0.upaiyun.com/ueditor/2016-08-23/1471937853.jpg" />
								<p title="你的爱情现在是什么颜色 ?">你的爱情现在是什么颜色 ?</p>
						</a></li>
						<li><a    href="/forum-3024.html"> <img
								src="http://jewely-image.b0.upaiyun.com/ueditor/2016-08-23/1471932148.jpg" />
								<p title="北京的时光，你在，便无惧风雨">北京的时光，你在，便无惧风雨</p>
						</a></li>
						<li><a    href="/forum-2899.html"> <img
								src="/bundles/acmedefault/images/img_pic5.jpg" />
								<p title="你是我最重要的决定">你是我最重要的决定</p>
						</a></li>
						<li><a    href="/forum-2654.html"> <img
								src="http://jewely-image.b0.upaiyun.com/ueditor/2016-08-11/1470884213.jpg" />
								<p title="走过来我就嫁给你">走过来我就嫁给你</p>
						</a></li>
					</ul>
					<ul class="ni-referralMenu" id="ni-sidebarBanxd">
						<li class="activate"></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ul>
				</div>
			</div>
			<!-- end of 首页推荐 -->
			<!-- start of 最新加入的DR族 -->
			<div class="ni-newDrz ni-sidebarBox">
				<h3>最新加入的DR族</h3>
				<ul class="ni-newDrzList fix">
					<li><a    href="/user/info/559917" title="含笑戏红尘">
							<img
							src="http://wx.qlogo.cn/mmopen/ajNVdqHZLLATMdo6cXxEP2bIBofecicX07n7TNryw9ibrekf410gFu8POm65DLGuEySLgaHOySEdkZ9UyNuwaYAicBSfpj2WY4SzKS2S6e4jbs/0"
							alt="">
							<p title="含笑戏红尘">含笑戏红尘</p>
					</a></li>
					<li><a    href="/user/info/559900"
						title="坤宇国际™怀抱梦想"> <img
							src="http://q.qlogo.cn/qqapp/101139846/69D8464925D05B2C1CCA4C4180267A9D/100"
							alt="">
							<p title="坤宇国际™怀抱梦想">坤宇国际™怀抱梦想</p>
					</a></li>
					<li><a    href="/user/info/559880"
						title="Aryanr、久伴她"> <img
							src="http://wx.qlogo.cn/mmopen/al2KtoEtGicbkRJicucLiaoFx5jFQB2Q1oMs12eiciaJAAPUYVgp9DbHMeoWicRLb4OOg2A8jxVibnnOxGODX4C159muxmhXLG50NHB/0"
							alt="">
							<p title="Aryanr、久伴她">Aryanr、久伴她</p>
					</a></li>
					<li><a    href="/user/info/212920" title="小孩轩轩">
							<img
							src="DR/images/img_user5.png"
							alt="">
							<p title="小孩轩轩">小孩轩轩</p>
					</a></li>
					<li><a    href="/user/info/558939" title="热心网友">
							<img
							src="DR/images/img_user5.png"
							alt="">
							<p title="热心网友">热心网友</p>
					</a></li>
					<li><a    href="/user/info/559829"
						title="你再不劫婚我真要结婚"> <img
							src="http://q.qlogo.cn/qqapp/101139846/69D7F1F6B826419FA3FEDD4FF3AE5054/100"
							alt="">
							<p title="你再不劫婚我真要结婚">你再不劫婚我真要结婚</p>
					</a></li>
					<li><a    href="/user/info/559828" title="XR2UMM">
							<img
							src="DR/images/img_user5.png"
							alt="">
							<p title="XR2UMM">XR2UMM</p>
					</a></li>
					<li><a    href="/user/info/555396" title="UmzO6N">
							<img
							src="DR/images/img_user5.png"
							alt="">
							<p title="UmzO6N">UmzO6N</p>
					</a></li>
				</ul>
			</div>
			<!-- end of 最新加入的DR族 -->
			<!-- start of 精选推荐 -->
			<div class="ni-brand ni-sidebarBox">
				<h3>DR族&Darry Ring的品牌关系</h3>
				<div class="ni-brandInfo">
					<p>DR族社区是Darry Ring
						品牌的会员真爱服务平台，这里聚集一群感情专一、拥护“一生·唯一·真爱”爱情理念，喜欢用言论以及行动来诠释真爱、感召他人的朋友。</p>
					<p>
						<a href="javascript:;" class="ni-resterBtn">&lt;加入DR族></a>，与志同道合的童鞋一起探讨感情经验。
					</p>
				</div>
				<div class="ni-brandBtns">
					<a class="ni-btn" href="http://www.darryring.com/darry_ring"
						  >DarryRing求婚钻戒</a> <a class="ni-btn"
						href="http://www.darryring.com/shopyd"   >DarryRing体验店</a>
					<a class="ni-btn ni-referBtn" href="javascript:showxiaon();">求婚钻戒款式咨询</a>
					<a class="ni-concernBtn" id="ni-showEwmBtn" href="javascript:;">关注Darry
						Ring</a>
					<div class="ni-showEwm" id="ni-ewmShow"></div>
				</div>
			</div>
			<!-- end of 精选推荐 -->
		</div>
		<!-- end of 侧边栏-->
		<!-- star of 编辑DR理念弹窗 -->
		<div class="actionTips" id="actionIdea">
			<div class="tipsMain clearfix">
				<h5>
					<a class="tipsClose fr" href="javascript:;"></a>发表我的DR理念
				</h5>
				<textarea class="boderLine" name="content" rows="4"></textarea>
				<input type="hidden" class="error_info" value="" /> <input
					type="hidden" class="post_url" value="/create/love/idea" /> <a
					class="tipsSubmit fr create_love_idea" href="javascript:;"
					data-time="0" is_token="">提交</a> <a class="tipsCancel fr"
					href="javascript:;">取消</a> <span
					class="tipsInfo fl love_idea_content">还可以输入<i>140</i> 字
				</span>
			</div>
		</div>
		<!-- end of 编辑DR理念弹窗 -->
		
			
			
			
		<!-- start of 文章列表 -->
		<div class="ni-article fl">
			<div class="ni-articleList">
				<!-- start of 读取数据循环部分 -->

				<div class="ni-articleMain">
					<h2>
						<a    href="#">最好的我们</a>
					</h2>
					<div class="ni-source fix">
						<div class="fr">
							<span class="ni-artReviewNum">评论(0)</span> <span
								class="ni-artReadNum">阅读(2)</span>
						</div>
						<div class="fl">
							<a class="ni-artTag"    href="#">情感八卦</a>
							<span class="ni-artDate">2016-08-26发表</span>
						</div>
					</div>
					<div class="ni-content">
						<a    href="#">
							<div class="ni-contentImg">
								<img
									src="http://jewely-image.b0.upaiyun.com/images/2016-08-26/1472179410/57bfacd22b208"
									alt="" />
							</div>
						</a> <br /> <a    href="#"
							style="color: #000;">你喜欢的未必适合你 在你身边的永远才是最好的</a> <a
							class="ni-readMore"    href="#">查看全文></a>
					</div>
				</div>
				
				<div class="ni-articleMain">
					<h2>
						<a    href="#">哈哈</a>
					</h2>
					<div class="ni-source fix">
						<div class="fr">
							<span class="ni-artReviewNum">评论(1)</span> <span
								class="ni-artReadNum">阅读(12)</span>
						</div>
						<div class="fl">
							<a class="ni-artTag"    href="#">问题反馈</a>
							<span class="ni-artDate">2016-08-26发表</span>
						</div>
					</div>
					<div class="ni-content">
						<br /> <a    href="#"
							style="color: #000;">Darry Ring（钻戒）客服5号本店员工吗？她的免费领钻戒活动是真假。</a> <a
							class="ni-readMore"    href="#">查看全文></a>
					</div>
				</div>
				<div class="ni-articleMain">
					<h2>
						<a  href="#">活动疑问</a>
					</h2>
					<div class="ni-source fix">
						<div class="fr">
							<span class="ni-artReviewNum">评论(3)</span> <span
								class="ni-artReadNum">阅读(11)</span>
						</div>
						<div class="fl">
							<a class="ni-artTag"  href="#">问题反馈</a>
							<span class="ni-artDate">2016-08-26发表</span>
						</div>
					</div>
					<div class="ni-content">
						<a    href="#">
							<div class="ni-contentImg">
								<img
									src="http://jewely-image.b0.upaiyun.com/images/2016-08-26/1472174023/57bf97c70e729png"
									alt="" />
							</div>
						</a> <br /> <a  href="#"
							style="color: #000;">Darry Ring（钻戒）客服5号本店员工吗？她的免费领钻戒活动是真假。</a> <a
							class="ni-readMore"    href="#">查看全文></a>
					</div>
				</div>
				<div class="ni-articleMain">
					<h2>
						<a    href="#">求帮助</a>
					</h2>
					<div class="ni-source fix">
						<div class="fr">
							<span class="ni-artReviewNum">评论(2)</span> <span
								class="ni-artReadNum">阅读(11)</span>
						</div>
						<div class="fl">
							<a class="ni-artTag"    href="#">问题反馈</a>
							<span class="ni-artDate">2016-08-26发表</span>
						</div>
					</div>
					<div class="ni-content">
						<a    href="#">
							<div class="ni-contentImg">
								<img
									src="http://jewely-image.b0.upaiyun.com/images/2016-08-26/1472147378/57bf2fb203e21"
									alt="" />
							</div>
						</a> <br /> <a    href="/forum-3148.html"
							style="color: #000;">无意绑定了别人的微博账号求怎么解绑 按一下解绑没反应啊</a> <a
							class="ni-readMore"    href="#">查看全文></a>
					</div>
				</div>
				<div class="ni-articleMain">
					<h2>
						<a    href="#">凌乱</a>
					</h2>
					<div class="ni-source fix">
						<div class="fr">
							<span class="ni-artReviewNum">评论(2)</span> <span
								class="ni-artReadNum">阅读(7)</span>
						</div>
						<div class="fl">
							<a class="ni-artTag"    href="#">情感八卦</a>
							<span class="ni-artDate">2016-08-26发表</span>
						</div>
					</div>
					<div class="ni-content">
						<a    href="#">
							<div class="ni-contentImg">
								<img
									src="http://jewely-image.b0.upaiyun.com/images/2016-08-26/1472145753/57bf295953b3a"
									alt="" />
							</div>
						</a> <br /> <a    href="#"
							style="color: #000;">是因为今晚的芝华士喝多了还是原本就有了那一份胡思乱想？是我太敏感还是今夜的你会如我想象中的那样渡过？酒吧，酒吧，…你知不知道我不喜欢你一个人去？你知不知道其实我很害怕我的胡思乱想？</a>
						<a class="ni-readMore"    href="#">查看全文></a>
					</div>
				</div>
				<div class="ni-articleMain">
					<h2>
						<a    href="#">想念</a>
					</h2>
					<div class="ni-source fix">
						<div class="fr">
							<span class="ni-artReviewNum">评论(0)</span> <span
								class="ni-artReadNum">阅读(3)</span>
						</div>
						<div class="fl">
							<a class="ni-artTag"    href="#">最美钻戒</a>
							<span class="ni-artDate">2016-08-26发表</span>
						</div>
					</div>
					<div class="ni-content">
						<br /> <a    href="/forum-3146.html"
							style="color: #000;">每天说着抱抱 却抱不到真实的你 两个月了 终于可以好好抱抱你 我爱你 老公
							每天都很想念你</a> <a class="ni-readMore"   
							href="#">查看全文></a>
					</div>
				</div>
				<div class="ni-articleMain">
					<h2>
						<a    href="#">留着思念</a>
					</h2>
					<div class="ni-source fix">
						<div class="fr">
							<span class="ni-artReviewNum">评论(1)</span> <span
								class="ni-artReadNum">阅读(4)</span>
						</div>
						<div class="fl">
							<a class="ni-artTag"    href="#">情感八卦</a>
							<span class="ni-artDate">2016-08-25发表</span>
						</div>
					</div>
					<div class="ni-content">
						<br /> <a    href="/forum-3143.html"
							style="color: #000;">念</a> <a class="ni-readMore"   
							href="#">查看全文></a>
					</div>
				</div>
				<div class="ni-articleMain">
					<h2>
						<a    href="#">好吗好的！</a>
					</h2>
					<div class="ni-source fix">
						<div class="fr">
							<span class="ni-artReviewNum">评论(2)</span> <span
								class="ni-artReadNum">阅读(7)</span>
						</div>
						<div class="fl">
							<a class="ni-artTag"    href="#">情感八卦</a>
							<span class="ni-artDate">2016-08-25发表</span>
						</div>
					</div>
					<div class="ni-content">
						<a    href="#">
							<div class="ni-contentImg">
								<img
									src="http://jewely-image.b0.upaiyun.com/images/2016-08-25/1472133974/57befb56e7c9e"
									alt="" />
							</div>
						</a> <br /> <a    href="#"
							style="color: #000;">给我一碗酒，陪你读江湖，故事未完待续…… 我在等你，你赶紧来，好吗？好的！</a> <a
							class="ni-readMore"    href="#">查看全文></a>
					</div>
				</div>
				<div class="ni-articleMain">
					<h2>
						<a    href="#">Dr</a>
					</h2>
					<div class="ni-source fix">
						<div class="fr">
							<span class="ni-artReviewNum">评论(4)</span> <span
								class="ni-artReadNum">阅读(2)</span>
						</div>
						<div class="fl">
							<a class="ni-artTag"    href="#">情感八卦</a>
							<span class="ni-artDate">2016-08-25发表</span>
						</div>
					</div>
					<div class="ni-content">
						<br /> <a  href="#"
							style="color: #000;">愿有人待你如初，疼你入骨，从此深情不被辜负。</a> <a
							class="ni-readMore"  href="#">查看全文></a>
					</div>
				</div>
				<!-- end of 读取数据循环部分 -->
				<!-- start of 加载更多 -->
				<a id='getmore' class="ni-loadMore" href="javascript:;"
					onclick="getMoreTopic(2)"></a>
				<!-- end of 加载更多 -->
			</div>
		</div>
		<!-- end of 文章列表-->
	
	</div>
	
	<script type="text/javascript">
        // seajs 配置
        seajs.config({
            debug: true,
            base: "/Three/",
            alias: {
                "jquery":"headerJs/jquery.js"
            }
        });
        // 加载头部入口模块
        seajs.use("footerJs/footer.js");
</script>
	<jsp:include page="footer.jsp"/>
	
	<script type="text/javascript">
		//侧边栏分享
		var url = encodeURIComponent(document.location.href);
		var title = "Darry Ring(DR真爱戒指)戴瑞珠宝官方社区，DR族的聚集地。";
		var summary = title + "活动链接：" + url;
		var oStar = '<a class="shareQzone" href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url='
				+ url
				+ '&title='
				+ title
				+ '&pic=&summary='
				+ summary
				+ '" target="_blank"></a>';
		oStar += '<a class="shareWeibo" href="http://v.t.sina.com.cn/share/share.php?url='
				+ url + '&title=' + summary + '" target="_blank"></a>';
		oStar += '<a class="shareQweibo" href="http://v.t.qq.com/share/share.php?url='
				+ url + '&title=' + summary + '&pic=" target="_blank"></a>';
		oStar += '<a class="shareRenren" href="http://widget.renren.com/dialog/share?resourceUrl='
				+ url
				+ '&title='
				+ title
				+ '&content='
				+ summary
				+ '" target="_blank"></a>';
		oStar += '<a class="shareDouban" href="https://www.douban.com/share/service?href='
				+ url + '&name=' + summary + '" target="_blank" ></a>';

		$('.dr_quick-word.comShare').html(oStar);
	</script>
	<!-- DR族文章 -->
	<a class="iToTop" href="#toHeader" title="返回顶部"></a>
	<!-- DR族文章 end -->

	<script type="text/javascript"
		src="http://dl.ntalker.com/js/xn6/ntkfstat.js?siteid=kf_9883"
		charset="utf-8"></script>
	<script src="/bundles/acmedefault/js/love_idea.js"></script>
	<script type="text/javascript">
		var t = 100000;
		var number = $(".user_number").text();
		var total = t * 1 + number * 1;
		$(".user_number").html((total));

		var qiuHun = $('.qiu_hun').text();
		var qiuHunTotal = t * 1 + qiuHun * 1;
		$('.qiu_hun').html(qiuHunTotal);

		/*弹窗*/
		NTKF_PARAM = {
			siteid : "kf_9883", //Ntalker提供平台基础id,
			settingid : "kf_9883_1402631963601", //Ntalker分配的缺省客服组id
			uid : "", //用户id
			uname : "", //用户名
			orderid : "", //订单id
			orderprice : "" //订单价格
		}
		function showxiaon() {
			NTKF.im_openInPageChat();
		}

		//加载更多
		var setMoreTimer = null;
		var totalPager = 241;
		function getMoreTopic(pageNext) {
			$
					.ajax({
						type : 'POST',
						url : "/default/more/topic",
						data : 'page=' + pageNext,
						success : function(msg) {
							if (msg) {
								var nextNum = parseInt(pageNext) + 1;
								$('.ni-articleMain').last().after(msg);
								$('.ni-loadMore').attr('onclick',
										'getMoreTopic(' + nextNum + ');');
								if (nextNum > totalPager) {
									$('#getmore').hide();
								}
								if (setMoreTimer) {
									clearTimeout(setMoreTimer);
								}
								setMoreTimer = setTimeout(
										function() {
											$('.ni-contentImg img')
													.each(
															function(index) {
																$(this)
																		.css(
																				{
																					'marginTop' : -($(
																							this)
																							.height() / 2)
																							+ 'px',
																					'top' : 50 + '%'
																				});
																if ($(this)
																		.height() < 220) {
																	$(this)
																			.css(
																					{
																						'top' : 0,
																						'left' : 50 + '%',
																						'width' : 'auto',
																						'height' : 100 + '%',
																						'marginTop' : 0
																					});
																	$(this)
																			.css(
																					{
																						'marginLeft' : -($(
																								this)
																								.width() / 2)
																								+ 'px'
																					});
																}
															});
										}, 100);
							}
						}
					});
		}

		//分享
		var url = encodeURIComponent(document.location.href);
		var title = "Darry Ring(DR真爱戒指)戴瑞珠宝官方社区，DR族的聚集地。活动链接：";
		var summary = title + url;

		var oStar = '<a class="shareQzone" href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url='
				+ url
				+ '&title='
				+ title
				+ '&pic=&summary='
				+ summary
				+ '" target="_blank"></a>';
		oStar += '<a class="shareWeibo" href="http://v.t.sina.com.cn/share/share.php?url='
				+ url + '&title=' + summary + '" target="_blank"></a>';
		oStar += '<a class="shareQweibo" href="http://v.t.qq.com/share/share.php?url='
				+ url + '&title=' + summary + '&pic=" target="_blank"></a>';
		oStar += '<a class="shareRenren" href="http://widget.renren.com/dialog/share?resourceUrl='
				+ url
				+ '&title='
				+ title
				+ '&content='
				+ summary
				+ '" target="_blank"></a>';
		oStar += '<a class="shareDouban" href="https://www.douban.com/share/service?href='
				+ url + '&name=' + summary + '" target="_blank" ></a>';

		$('.dr_quick-word.comShare').html(oStar);

		window.onload = function() {
			setContentImg();
		}
	</script>

	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-64254262-1', 'auto');
		ga('send', 'pageview');
	</script>
</body>
</html>