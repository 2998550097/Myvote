<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人信息</title>
<link rel="stylesheet" href="css/left.css" />
<link rel="stylesheet" href="css/personinfo.css" />
<style type="text/css">
.person-cort_left-button {
	font-weight: bold;
	color: #fff;
	font-size: 14px;
	text-align: center;
	margin-left: 72px;
	cursor: pointer;
}
</style>

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
					<span>您当前的位置：</span> <span id="ctl00_content_website_SiteMapPath1"><span>
							<a href="/" target="_blank">Darry Ring</a>
					</span><span> <em>&gt;</em>
					</span><span> <a href="/member/mydr.html" target="_blank">我的DR</a>
					</span><span> <em>&gt;</em>
					</span><span> <span>我的订单</span>
					</span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span>
				</div>
				<div class="member_cort">
					<div class="member_cort-left fl">
						<!--我的DR-->
						<div class="member_cortleft-tittle">
							<i class="mb_home"></i><a href="/member/mydr.html" rel="nofollow">
								我的 DR</a>
						</div>
						<!--我的DR end-->
						<ul class="member_cort-ul">
							<li>
								<h3>-订单中心-</h3>
								<ul class="member_ul-dr">
									<li id="orders"><a href="page/myOrder/myOrder.jsp"
										rel="nofollow">我的订单</a></li>
									<li id="ask"><a href="page/myOrder/myEvaluate.jsp"
										rel="nofollow">我要评价</a></li>
									<li id="cart"><a target="_blank" href="page/Cart.jsp"
										rel="nofollow">我的购物车</a></li>
									<li id="collect"><a href="page/myOrder/myFavorites.jsp"
										rel="nofollow">我的收藏</a></li>
									<li id="yuyue" class="no_border"><a
										href="page/myOrder/myAppointment.jsp" rel="nofollow">我的预约</a></li>
								</ul>
							</li>
							<li>
								<h3>-售后服务-</h3>
								<ul class="member_ul-dr">
									<li id="aftersale"><a href="/member/aftersale.html"
										rel="nofollow">售后办理</a></li>
								</ul>
							</li>
							<li>
								<h3>-帐户管理-</h3>
								<ul class="member_ul-dr">
									<li class="speacil_color" id="myinfo"><a
										href="/member/personinfo.html" rel="nofollow">个人信息</a></li>
									<li id="password"><a href="/member/mypwd.html"
										rel="nofollow">修改密码</a></li>
									<li id="address"><a href="/member/myaddress.html"
										rel="nofollow">收货地址</a></li>
									<li id="li_jnr"><a href="/member/mydr_jnr.html">纪念日维护</a></li>
									<li id="news" class="no_border"><a
										href="/member/mynews.html" rel="nofollow">系统消息</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<script type="text/javascript">
						$(function() {
							if ("order" == "news") {
								$("#order").addClass("no_border");
							}
							$("#order").addClass("speacil_color");
						});
					</script>

					<!--右边开始 -->



					<div class="member_cort-right fr">
						<!--我的个人信息-->
						<div class="member_person">
							<div class="member_ask-tittle">
								<h4>我的个人信息</h4>
								<p>为了能给您提供个性化服务，请完善您的基本资料。</p>
							</div>
							<!--个人信息填写-->
							<div class="member_person-cort">
								<!--左边-->
								<div class="member_person-cort_left">
									<div class="person-cort_left-word">
										<span>用户名：</span><span id="sp_email">gloria_gsl@163.com</span>
									</div>
									<div class="person-cort_left-word person-cort_left-spword">
										<span>可享受更多DarryRing为您提供的贴心服务与提醒通知。</span>
									</div>
									<div class="person-cort_left-write" id="div_email"
										style="display: none;">
										<span>邮&nbsp;&nbsp;&nbsp;&nbsp;箱：</span> <input type="text"
											value="gloria_gsl@163.com" class="write_text" id="txtEmail">
										<span style="display: none" id="shrid1"><i
											class="writer_wrong"></i><em id="shrwrong1"
											class="writer_word"></em></span><span id="shry1"
											style="display: none"><i class="writer_right"></i></span>
									</div>
									<div class="person-cort_left-write">
										<span>昵&nbsp;&nbsp;&nbsp;&nbsp;称：</span> <input type="text"
											value="wJFnYu" class="write_text" id="nicname"> <span
											style="display: none" id="shrid"><i
											class="writer_wrong"></i><em id="shrwrong"
											class="writer_word"></em></span><span id="shry"
											style="display: none"><i class="writer_right"></i></span>
									</div>
									<div class="person-cort_left-write">
										<span>真实姓名：</span> <input type="text" value=""
											class="write_text" id="realName"> <span
											style="display: none" id="realId"><i
											class="writer_wrong"></i><em id="realwrong"
											class="writer_word"></em></span><span id="realy"
											style="display: none"><i class="writer_right"></i></span>
									</div>
									<div class="person-cort_left-write">

										<span>性&nbsp;&nbsp;&nbsp;&nbsp;别：</span> <input type="radio"
											id="ctl00_content_nan" name="ctl00$content$sex" value="男">
										<label for="nan"> 男</label> <input type="radio"
											checked="checked" id="ctl00_content_nv"
											name="ctl00$content$sex" value="女"> <label for="nv">
											女</label>
									</div>
									<div class="person-cort_left-write">
										<span>出生日期：</span> <select id="selYear">
											<option value="2016">2016</option>
											<option value="2015">2015</option>
											<option value="2014">2014</option>
											<option value="2013">2013</option>
											<option value="2012">2012</option>
											<option value="2011">2011</option>
											<option value="2010">2010</option>
											<option value="2009">2009</option>
											<option value="2008">2008</option>
											<option value="2007">2007</option>
											<option value="2006">2006</option>
											<option value="2005">2005</option>
											<option value="2004">2004</option>
											<option value="2003">2003</option>
											<option value="2002">2002</option>
											<option value="2001">2001</option>
											<option value="2000">2000</option>
											<option value="1999">1999</option>
											<option value="1998">1998</option>
											<option value="1997">1997</option>
											<option value="1996">1996</option>
											<option value="1995">1995</option>
											<option value="1994">1994</option>
											<option value="1993">1993</option>
											<option value="1992">1992</option>
											<option value="1991">1991</option>
											<option value="1990">1990</option>
											<option value="1989">1989</option>
											<option value="1988">1988</option>
											<option value="1987">1987</option>
											<option value="1986">1986</option>
											<option value="1985">1985</option>
											<option value="1984">1984</option>
											<option value="1983">1983</option>
											<option value="1982">1982</option>
											<option value="1981">1981</option>
											<option value="1980">1980</option>
											<option value="1979">1979</option>
											<option value="1978">1978</option>
											<option value="1977">1977</option>
											<option value="1976">1976</option>
											<option value="1975">1975</option>
											<option value="1974">1974</option>
											<option value="1973">1973</option>
											<option value="1972">1972</option>
											<option value="1971">1971</option>
											<option value="1970">1970</option>
											<option value="1969">1969</option>
											<option value="1968">1968</option>
											<option value="1967">1967</option>
											<option value="1966">1966</option>
											<option value="1965">1965</option>
											<option value="1964">1964</option>
											<option value="1963">1963</option>
											<option value="1962">1962</option>
											<option value="1961">1961</option>
											<option value="1960">1960</option>
											<option value="1959">1959</option>
											<option value="1958">1958</option>
											<option value="1957">1957</option>
											<option value="1956">1956</option>
											<option value="1955">1955</option>
											<option value="1954">1954</option>
											<option value="1953">1953</option>
											<option value="1952">1952</option>
											<option value="1951">1951</option>
											<option value="1950">1950</option>
											<option value="1949">1949</option>
											<option value="1948">1948</option>
											<option value="1947">1947</option>
											<option value="1946">1946</option>
											<option value="1945">1945</option>
											<option value="1944">1944</option>
											<option value="1943">1943</option>
											<option value="1942">1942</option>
											<option value="1941">1941</option>
											<option value="1940">1940</option>
											<option value="1939">1939</option>
											<option value="1938">1938</option>
											<option value="1937">1937</option>
											<option value="1936">1936</option>
											<option value="1935">1935</option>
											<option value="1934">1934</option>
											<option value="1933">1933</option>
											<option value="1932">1932</option>
											<option value="1931">1931</option>
											<option value="1930">1930</option>
											<option value="1929">1929</option>
											<option value="1928">1928</option>
											<option value="1927">1927</option>
											<option value="1926">1926</option>
											<option value="1925">1925</option>
											<option value="1924">1924</option>
											<option value="1923">1923</option>
											<option value="1922">1922</option>
											<option value="1921">1921</option>
											<option value="1920">1920</option>
											<option value="1919">1919</option>
											<option value="1918">1918</option>
											<option value="1917">1917</option>
											<option value="1916">1916</option>
											<option value="1915">1915</option>
											<option value="1914">1914</option>
											<option value="1913">1913</option>
											<option value="1912">1912</option>
											<option value="1911">1911</option>
											<option value="1910">1910</option>
											<option value="1909">1909</option>
											<option value="1908">1908</option>
											<option value="1907">1907</option>
											<option value="1906">1906</option>
											<option value="1905">1905</option>
											<option value="1904">1904</option>
											<option value="1903">1903</option>
											<option value="1902">1902</option>
											<option value="1901">1901</option>
											<option value="1900">1900</option>
										</select> <select id="selMonth">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
										</select> <select id="selDay">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
										</select>
									</div>
									<div style="" class="person-cort_left-write">
										<span>地&nbsp;&nbsp;&nbsp;&nbsp;区：</span> <select id="province">
											<option value="-1">请选择省份</option>
											<option value="340000">安徽省</option>
											<option value="110000">北京市</option>
											<option value="350000">福建省</option>
											<option value="620000">甘肃省</option>
											<option value="440000">广东省</option>
											<option value="450000">广西壮族自治区</option>
											<option value="520000">贵州省</option>
											<option value="460000">海南省</option>
											<option value="130000">河北省</option>
											<option value="410000">河南省</option>
											<option value="230000">黑龙江省</option>
											<option value="420000">湖北省</option>
											<option value="430000">湖南省</option>
											<option value="220000">吉林省</option>
											<option value="320000">江苏省</option>
											<option value="360000">江西省</option>
											<option value="210000">辽宁省</option>
											<option value="150000">内蒙古自治区</option>
											<option value="640000">宁夏回族自治区</option>
											<option value="630000">青海省</option>
											<option value="370000">山东省</option>
											<option value="140000">山西省</option>
											<option value="610000">陕西省</option>
											<option value="310000">上海市</option>
											<option value="510000">四川省</option>
											<option value="120000">天津市</option>
											<option value="540000">西藏自治区</option>
											<option value="650000">新疆维吾尔自治区</option>
											<option value="530000">云南省</option>
											<option value="330000">浙江省</option>
											<option value="500000">重庆市</option>
											<option value="820000">香港</option>
										</select> <label> 市：</label> <select id="city">
											<option value="-1">请选择城市</option>
										</select> <label> 县：</label> <select id="district">
											<option value="-1">请选择区县</option>
										</select>
									</div>
									<div style="" class="person-cort_left-write">
										<span class="write_vtop">详细地址：</span>
										<textarea id="street" cols="20" rows="2"
											name="ctl00$content$street"></textarea>
										<span id="streid" style="display: none"><i
											class="writer_wrong"></i><em id="strewrong"
											class="writer_word"></em></span><span id="strey"
											style="display: none"><i class="writer_right"></i></span>
									</div>
									<div style="" class="person-cort_left-write">
										<span>邮政编码：</span> <input type="text" value=""
											class="write_text" id="postcode"> <span id="postid"
											style="display: none"><i class="writer_wrong"></i><em
											id="postwrong" class="writer_word"></em></span><span id="posty"
											style="display: none"><i class="writer_right"></i></span>
									</div>
									<div style="" class="person-cort_left-write">
										<span class="fl">手&nbsp;&nbsp;&nbsp;&nbsp;机：</span> <input
											type="text" value="" class="write_text fl" id="mobile">
										<span id="sjid" style="display: none"><i
											class="writer_wrong"></i><em id="sjwrong" class="writer_word"></em></span><span
											id="sjy" style="display: none"><i class="writer_right"></i></span>
									</div>
									<div style="" class="person-cort_left-write">
										<span>座&nbsp;&nbsp;&nbsp;&nbsp;机：</span> <input type="text"
											value="" class="write_text" id="telephone"> <span
											id="zjid" style="display: none"><i
											class="writer_wrong"></i><em id="zjwrong" class="writer_word"></em></span><span
											id="zjy" style="display: none"><i class="writer_right"></i></span>
									</div>
									<div id="btnsave" class="bt1 person-cort_left-button">&gt;
										保存</div>
								</div>
								<!--左边end-->
								<!--右边-->
								<div class="member_person-cort_right">
									<a href="#"> <img width="90" height="90"
										src="page/myOrder/images/mem.jpg">
									</a>
									<p>
										<a href="/member/dr_personuploadtx.aspx?lan=0">更换头像</a>
									</p>
								</div>
								<!--右边end-->
							</div>
							<!--个人信息填写end-->
						</div>
						<!--我的个人信息end-->
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

