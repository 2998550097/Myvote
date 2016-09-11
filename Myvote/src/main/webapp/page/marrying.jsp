<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<base href="/MyDarry/">
		<meta charset="utf-8">
		<title> Darry Ring钻戒价格_DR戒指官网价格表_钻石报价表 - DR官网 </title>
		<link rel="stylesheet" type="text/css" href="css/same.css">
		<link rel="stylesheet" type="text/css" href="css/marryring.css">
		<script type="text/javascript" src="headerJs/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="js/h.js"></script>
		<script type="text/javascript" src="js/myJs/check.js"></script>
		<script src="headerJs/jquery.js"></script>
		<script type="text/javascript" src="headerJs/index.js"></script>
		<script type="text/javascript" src="headerJs/sea.js"></script>
<script>
        // seajs 配置
        seajs.config({
            debug: true,
            base: "",
            alias: {
                "jquery": "MyDarry/headerJs/jquery.js"
            }
        });
        // 加载头部入口模块
        seajs.use("MyDarry/headerJs/header.js");
    </script>
    <link rel="stylesheet" type="text/css" href="css/common.css">
	</head>
	<body>
	
		<jsp:include page="header.jsp"/>
		
		<jsp:include page="nav.jsp"/>

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
						<div class="pagin fpagin fr1" id="pagein1">
							
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
					
					</ul> 
					<!--商品end-->
					<!--分页-->
					<div id="pagein" class="pagin fpagin fr1">
					
					</div>
					<!--分页end-->
				</div>
				<!--宽度1000以内end-->
			</div>
		</div>
		<jsp:include page="footer.jsp"/>
		<script type="text/javascript">
			seajs.use("MyDarry/footerJs/footer.js");
		</script>
		
	</body>
</html>
