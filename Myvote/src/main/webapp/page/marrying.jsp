<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<base href="/MyDarry/">
		<meta charset="utf-8">
		<title> Darry Ring钻戒价格_DR戒指官网价格表_钻石报价表 - DR官网 </title>
		<link rel="stylesheet" href="css/marry.css" />
		<script type="text/javascript" src="js/jquery.min.js"></script>
	</head>
	<body>
		<div>
			<div class="dring-banner">
       			<a href="#">
       				<img alt="darry ring 求婚钻戒" src="images/marryring/20160627145241dc6e9ac911.jpg"/>
       			</a>
			</div>
			<div class="dr-bread w1000">
				<!--右边-->
				<div style="display: block" class="drring_search-right fr">
			
					<input type="text" placeholder="请输入关键字搜索" id="txtkey"> <i
						onclick="btnSearch( '/darry_ring?page=1&amp;')">确定</i>
				</div>
				<!--右边end-->
				<!--左边-->
				<div class="drring_search-left fl">
					<!--面包屑-->
					<div class="drring_all-bread fl">
						<a href="/">Darry Ring </a><span>&gt; 求婚钻戒</span>
					</div>
					<!--面包屑end-->
					<!--筛选-->
					<div id="searchList" class="drring_search-choose fl"></div>
					<!--筛选end-->
				</div>
				<!--左边end-->
			</div>
			
			
			
			

			<div class="dr_pink pad-76">
				<!--宽度1000以内-->
				<div class="w1000">
					<!--高级搜索栏-->
					<div id="highsearch" class="drring_highsearch">
						<div class="drring_highsearch-same fix">
							<span class="fl">系列</span>
							<div id="series" class="drring_series fl">
							
							</div>
							<span id="moreSeries" class="moreSeries fl" onclick="seeMore()" href="javascript:;">更多</span>
				
				
					<script type="text/javascript">
						function seeMore(){
							
							if( $("#moreSeries").attr("class") == "moreSeries fl"){
								$("#moreSeries").addClass("select");
								$("#series").addClass("drring_seriesShow");
							}else{
								$("#moreSeries").removeClass("select");
								$("#series").removeClass("drring_seriesShow");
							}
						}
					</script>
				
				
						</div>
						<div class="drring_highsearch-same">
							<span>重量（克拉）</span> <a rel="nofollow" style="" dr-type="2"
								href="/darry_ring?carat=10">10分以下</a> <a rel="nofollow" style=""
								dr-type="2" href="/darry_ring?carat=1030">10分-30分</a> <a
								rel="nofollow" style="" dr-type="2" href="/darry_ring?carat=3050">30分-50分</a>
							<a rel="nofollow" style="" dr-type="2"
								href="/darry_ring?carat=50100">50分-1克拉</a> <a rel="nofollow"
								style="" dr-type="2" href="/darry_ring?carat=100">1克拉以上</a>
						</div>
						<div class="drring_highsearch-same">
			
							<span>钻石形状</span> <a rel="nofollow" style="" dr-type="3"
								href="/darry_ring?shape=roundShape">传统圆形</a> <a rel="nofollow"
								style="" dr-type="3" href="/darry_ring?shape=heartShape">心形</a> <a
								rel="nofollow" style="" dr-type="3"
								href="/darry_ring?shape=squareShape">公主方</a>
						</div>
						<!--更多条件-->
						<div style="display: block;" id="priceCond"
							class="drring_highsearch-same">
			
							<span>价格</span> <a rel="nofollow" style="" dr-type="4"
								href="/darry_ring?price=price_5000">10以下</a> <a rel="nofollow"
								style="" dr-type="4" href="/darry_ring?price=price_5001-10000">11-13</a>
							<a rel="nofollow" style="" dr-type="4"
								href="/darry_ring?price=price_10001-20000">14-16</a> <a
								rel="nofollow" style="" dr-type="4"
								href="/darry_ring?price=price_20001-40000">17-20</a> <a
								rel="nofollow" style="" dr-type="4"
								href="/darry_ring?price=price_40000">21以上</a> <input type="text"
								id="minPrice"> <label>-</label> <input type="text"
								id="maxPrice"> <em
								onclick="btnPriceSearch('/darry_ring?page=1&amp;')" id="priceBtn">确定</em>
						</div>
						<!--更多条件end-->
					</div>
					<!--高级搜索栏end-->
					<!--排序与分页-->
					<div class="drring_sortall">
						<!--分页-->
						<div class="pagin fpagin fr">
							<a rel="nofollow" class="nextPage" href="/darry_ring?page=2"></a> <a
								rel="nofollow" class="prevPage" href="/darry_ring?page=1"></a> <span>1/14</span>
							<span>共159件 商品</span>
						</div>
						<!--分页end-->
						<!--排序-->
						<div class="drring_sort fl">
							<span>排序</span> <i id="ctl00_content_rq"><a rel="nofollow"
								href="/darry_ring?page=1&amp;sort=s1">按人气</a></i> <i
								id="ctl00_content_xl"><a rel="nofollow"
								href="/darry_ring?page=1&amp;sort=s3">按销量</a></i> <i
								id="ctl00_content_pr"><a rel="nofollow"
								href="/darry_ring?page=1&amp;sort=s5">按价格</a></i>
						</div>
						<!--排序end-->
					</div>
					<!--排序与分页end-->
					<!--商品-->
					<ul class="dring_thing" id="dring_thing">
			
						<!-- <li><a target="_blank" href="/darry_ring/160.html"> <img
								width="320" height="320" alt="FOREVER 系列 经典款&nbsp;30分&nbsp;F色"
								src="http://img.darryring.com/userfiles/image/Product/201409031259093e45b5ecf0.jpg">
						</a>
							<div class="dring_thing-cort">
								<div class="dring_thing-price">￥11399</div>
								<p class="dring_thing-word">FOREVER 系列 经典款&nbsp;30分&nbsp;F色</p>
								<div class="dring_thing-button">
			
									<span
										onclick="addFaorites('FOREVER 系列 经典款','false','A02001','Z03023478801')">收藏</span>
									<i><a rel="nofollow" target="_blank"
										href="/darry_ring/160.html">立即购买</a></i>
								</div>
								<div class="dring_thing-sold">
									<span>已售：26792</span><i>评价：<em>2710</em></i>
								</div>
							</div></li>
			
						<li><a target="_blank" href="/darry_ring/387.html"> <img
								width="320" height="320" alt="TRUE LOVE系列 典雅&nbsp;40分&nbsp;F色"
								src="http://img.darryring.com/userfiles/image/product/2015093019140361614ead1d.jpg">
						</a>
							<div class="dring_thing-cort">
								<div class="dring_thing-price">￥19099</div>
								<p class="dring_thing-word">TRUE LOVE系列 典雅&nbsp;40分&nbsp;F色</p>
								<div class="dring_thing-button">
			
									<span
										onclick="addFaorites('TRUE LOVE系列 典雅','false','A06004','Z04023278801')">收藏</span>
									<i><a rel="nofollow" target="_blank"
										href="/darry_ring/387.html">立即购买</a></i>
								</div>
								<div class="dring_thing-sold">
									<span>已售：12341</span><i>评价：<em>76</em></i>
								</div>
							</div></li>
			
						<li><a target="_blank" href="/darry_ring/628.html"> <img
								width="320" height="320" alt="MY HEART 系列 奢华款&nbsp;70分&nbsp;H色"
								src="http://img.darryring.com/userfiles/image/product/20160620101350d2f9fcb5a8.jpg">
						</a>
							<div class="dring_thing-cort">
								<div class="dring_thing-price">￥39699</div>
								<p class="dring_thing-word">MY HEART 系列 奢华款&nbsp;70分&nbsp;H色</p>
								<div class="dring_thing-button">
			
									<span
										onclick="addFaorites('MY HEART 系列 奢华款','false','A03003','Z07021300002')">收藏</span>
									<i><a rel="nofollow" target="_blank"
										href="/darry_ring/628.html">立即购买</a></i>
								</div>
								<div class="dring_thing-sold">
									<span>已售：18354</span><i>评价：<em>69</em></i>
								</div>
							</div></li>
			
						<li><a target="_blank" href="/darry_ring/694.html"> <img
								width="320" height="320" alt="BELIEVE系列 典雅&nbsp;50分&nbsp;G色"
								src="http://img.darryring.com/userfiles/image/Product/20150129114316f8a2465758.jpg">
						</a>
							<div class="dring_thing-cort">
								<div class="dring_thing-price">￥23299</div>
								<p class="dring_thing-word">BELIEVE系列 典雅&nbsp;50分&nbsp;G色</p>
								<div class="dring_thing-button">
			
									<span
										onclick="addFaorites('BELIEVE系列 典雅','false','A07001','Z050222788011')">收藏</span>
									<i><a rel="nofollow" target="_blank"
										href="/darry_ring/694.html">立即购买</a></i>
								</div>
								<div class="dring_thing-sold">
									<span>已售：21384</span><i>评价：<em>1606</em></i>
								</div>
							</div></li>
			
						<li><a target="_blank" href="/darry_ring/335.html"> <img
								width="320" height="320" alt="JUST YOU 系列 经典款&nbsp;20分&nbsp;I-J色"
								src="http://img.darryring.com/userfiles/image/Product/201409031759476e8527cccb.jpg">
						</a>
							<div class="dring_thing-cort">
								<div class="dring_thing-price">￥5098</div>
								<p class="dring_thing-word">JUST YOU 系列 经典款&nbsp;20分&nbsp;I-J色</p>
								<div class="dring_thing-button">
			
									<span
										onclick="addFaorites('JUST YOU 系列 经典款','false','A05001','Z02004260001')">收藏</span>
									<i><a rel="nofollow" target="_blank"
										href="/darry_ring/335.html">立即购买</a></i>
								</div>
								<div class="dring_thing-sold">
									<span>已售：18965</span><i>评价：<em>1619</em></i>
								</div>
							</div></li>
			
						<li><a target="_blank" href="/darry_ring/443.html"> <img
								width="320" height="320" alt="Love Line 系列 简奢款&nbsp;30分&nbsp;F色"
								src="http://img.darryring.com/userfiles/image/Product/2015081318151576e08c7f5c.jpg">
						</a>
							<div class="dring_thing-cort">
								<div class="dring_thing-price">￥17699</div>
								<p class="dring_thing-word">Love Line 系列 简奢款&nbsp;30分&nbsp;F色</p>
								<div class="dring_thing-button">
			
									<span
										onclick="addFaorites('Love Line 系列 简奢款','false','A16001','Z03023278801')">收藏</span>
									<i><a rel="nofollow" target="_blank"
										href="/darry_ring/443.html">立即购买</a></i>
								</div>
								<div class="dring_thing-sold">
									<span>已售：14192</span><i>评价：<em>13</em></i>
								</div>
							</div></li>
			
						<li><a target="_blank" href="/darry_ring/375.html"> <img
								width="320" height="320" alt="FOREVER 系列 奢华款&nbsp;50分&nbsp;J色"
								src="http://img.darryring.com/userfiles/image/product/20150930142541594d0d7e3e.jpg">
						</a>
							<div class="dring_thing-cort">
								<div class="dring_thing-price">￥26199</div>
								<p class="dring_thing-word">FOREVER 系列 奢华款&nbsp;50分&nbsp;J色</p>
								<div class="dring_thing-button">
			
									<span
										onclick="addFaorites('FOREVER 系列 奢华款','false','A02003','Z05019478801')">收藏</span>
									<i><a rel="nofollow" target="_blank"
										href="/darry_ring/375.html">立即购买</a></i>
								</div>
								<div class="dring_thing-sold">
									<span>已售：16524</span><i>评价：<em>43</em></i>
								</div>
							</div></li>
			
						<li><a target="_blank" href="/darry_ring/593.html"> <img
								width="320" height="320" alt="Sweety系列  心蓝&nbsp;23分&nbsp;I-J色"
								src="http://img.darryring.com/userfiles/image/Product/20150203143036eaa35b6543.jpg">
						</a>
							<div class="dring_thing-cort">
								<div class="dring_thing-price">￥8398</div>
								<p class="dring_thing-word">Sweety系列 心蓝&nbsp;23分&nbsp;I-J色</p>
								<div class="dring_thing-button">
			
									<span
										onclick="addFaorites('Sweety系列  心蓝','false','A09003','Z023042000011')">收藏</span>
									<i><a rel="nofollow" target="_blank"
										href="/darry_ring/593.html">立即购买</a></i>
								</div>
								<div class="dring_thing-sold">
									<span>已售：10563</span><i>评价：<em>107</em></i>
								</div>
							</div></li>
			
						<li><a target="_blank" href="/darry_ring/172.html"> <img
								width="320" height="320" alt="WITH YOU 系列 热恋红宝石&nbsp;30分&nbsp;D色"
								src="http://img.darryring.com/userfiles/image/product/20160621100342c2eba8bc0a.jpg">
						</a>
							<div class="dring_thing-cort">
								<div class="dring_thing-price">￥27320</div>
								<p class="dring_thing-word">WITH YOU 系列 热恋红宝石&nbsp;30分&nbsp;D色</p>
								<div class="dring_thing-button">
			
									<span
										onclick="addFaorites('WITH YOU 系列 热恋红宝石','false','A14001','Z03025989991')">收藏</span>
									<i><a rel="nofollow" target="_blank"
										href="/darry_ring/172.html">立即购买</a></i>
								</div>
								<div class="dring_thing-sold">
									<span>已售：18965</span><i>评价：<em>62</em></i>
								</div>
							</div></li>
			
						<li><a target="_blank" href="/darry_ring/353.html"> <img
								width="320" height="320" alt="PRINCESS系列 花冠&nbsp;3分&nbsp;H色"
								src="http://img.darryring.com/userfiles/image/Product/201409011559313d34c1c807.jpg">
						</a>
							<div class="dring_thing-cort">
								<div class="dring_thing-price">￥4399</div>
								<p class="dring_thing-word">PRINCESS系列 花冠&nbsp;3分&nbsp;H色</p>
								<div class="dring_thing-button">
			
									<span
										onclick="addFaorites('PRINCESS系列 花冠','false','A08002','Z003212700001')">收藏</span>
									<i><a rel="nofollow" target="_blank"
										href="/darry_ring/353.html">立即购买</a></i>
								</div>
								<div class="dring_thing-sold">
									<span>已售：9302</span><i>评价：<em>101</em></i>
								</div>
							</div></li>
			
						<li><a target="_blank" href="/darry_ring/693.html"> <img
								width="320" height="320" alt="BELIEVE系列 典雅&nbsp;70分&nbsp;G色"
								src="http://img.darryring.com/userfiles/image/Product/20150129114316f8a2465758.jpg">
						</a>
							<div class="dring_thing-cort">
								<div class="dring_thing-price">￥30899</div>
								<p class="dring_thing-word">BELIEVE系列 典雅&nbsp;70分&nbsp;G色</p>
								<div class="dring_thing-button">
			
									<span
										onclick="addFaorites('BELIEVE系列 典雅','false','A07001','Z070222788011')">收藏</span>
									<i><a rel="nofollow" target="_blank"
										href="/darry_ring/693.html">立即购买</a></i>
								</div>
								<div class="dring_thing-sold">
									<span>已售：21384</span><i>评价：<em>1606</em></i>
								</div>
							</div></li>
			
						<li><a target="_blank" href="/darry_ring/588.html"> <img
								width="320" height="320" alt="JUST YOU 系列 耀世&nbsp;23分&nbsp;H色"
								src="http://img.darryring.com/userfiles/image/product/201509301850222dacb06350.jpg">
						</a>
							<div class="dring_thing-cort">
								<div class="dring_thing-price">￥8198</div>
								<p class="dring_thing-word">JUST YOU 系列 耀世&nbsp;23分&nbsp;H色</p>
								<div class="dring_thing-button">
			
									<span
										onclick="addFaorites('JUST YOU 系列 耀世','false','A05002','Z023212000011')">收藏</span>
									<i><a rel="nofollow" target="_blank"
										href="/darry_ring/588.html">立即购买</a></i>
								</div>
								<div class="dring_thing-sold">
									<span>已售：10981</span><i>评价：<em>47</em></i>
								</div>
							</div></li>
						-->
					</ul> 
					<!--商品end-->
					<!--分页-->
					<div id="pagein" class="pagin fpagin fr">
						<a rel="nofollow" class="nextPage" href="/darry_ring?page=2"></a> <a
							rel="nofollow" class="prevPage" href="/darry_ring?page=1"></a> <span>1/14</span>
						<span>共159件 商品</span>
					</div>
					<!--分页end-->
				</div>
				<!--宽度1000以内end-->
			</div>
		</div>
	</body>
</html>