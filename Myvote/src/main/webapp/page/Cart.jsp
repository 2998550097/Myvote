<%@ page   pageEncoding="utf-8"%>
<!doctype html>
<html>
	<head>
		<base href="/MyDarry/">
		<meta charset="utf-8" />
		<link rel="stylesheet" href="css/shopping.css" />
		<link rel="stylesheet" href="css/common.css" />
		<link rel="stylesheet" href="css/drcart.css" />
		<script type="text/javascript" src="headerJs/jquery.js"></script>
		<script type="text/javascript" src="js/shoppcart.js"></script>
		<title> Darry Ring钻戒购物车_Darry Ring求婚钻戒价格 戴瑞珠宝官网  </title>
		<style type="text/css">
			body{margin-top: -20px;}
		</style>
		<script type="text/javascript">
			$(function(){
				//查找所有购物车下面的商品
				$.post("cart/findAllCart",function(data){
					var str="";
					var shopstr="";
					str+='<tr class="nav_tr">';
					str+='<td class="sp_td" style="width:240px">商品</td>';
                    str+='<td class="cz_td" style="width:100px">材质</td>';
                    str+='<td class="sc_td" style="width:100px">手寸/尺寸</td>';
                    str+='<td class="kz_td" style="width:100px">刻字</td>';
                    str+='<td class="gm_td">购买价</td>';
                    str+='</tr>';
					for(var i=0;i<data.length;i++){
 						str+='<tr class="cp_tr">';
	                    str+='<td class="sp_td">';
	         	        str+='<a  class="jx_shop" href="/darry_ring/A06004/Z04023278801.html">';
	                    str+='<img src="'+data[i].imagepath+'" width="85" height="85" />';
	         	        str+='<span>'+data[i].cname+'</span></a>';
		                str+='</td>';
		                str+='<td class="cz_td">'+data[i].pmaterial+'</td>';
		                str+='<td class="sc_td">'+data[i].csize+'</td>';
		                if(data[i].keword!=null){
			            	str+='<td class="kz_td">'+data[i].keword+'</td>';
		                }else{
		                	str+='<td class="kz_td"></td>';
		                }
		                str+='<td class="gm_td" style="font-family:微软雅黑">￥'+data[i].cprice+'</td>';
		                str+='<td class="close_td"><span class="sicon s_close" onclick="deleteCart('+data[i].cartid+');"></span></td>';
		             	str+='</tr>';
		             	
		             	str+='<tr class="kb_tr">';
                        str+='<td class="sp_td"></td>';
                        str+='<td class="cz_td"></td>';
                        str+='<td class="sc_td"></td>';
                        str+='<td class="kz_td"></td>';
                        str+='<td class="gm_td"></td>';
                       	str+='<td class="close_td"></td>';
                        str+='</tr>';
					}
					shopstr+='<a href="page/marrying.jsp" class="jx_shop">继续购物</a>';
					shopstr+='<a href="javascript:clearCart();" class="qk_shop">清空购物车</a>';
	                shopstr+='<span>你购买了<i>'+data[0].count+'</i>件商品</span>';
	                shopstr+='<span>总计：<i class="fw_bold" style="font-family:微软雅黑">￥'+data[0].totalprice+'</i></span>';
	                shopstr+='<span class="end_bt" onclick="toPay();"><em>立即结算</em></span>';
					$(".shop_tabble").html("").append(str);
					$(".shop_js").html("").append(shopstr);
				},"json");
			})
		</script>
		
	</head>
	<body>
		 <form name="aspnetForm" method="post" action="/nCart/Cart.aspx" id="aspnetForm">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE0NDIzMjg0NDYPZBYCZg9kFgICAxBkZBYGZg8PFgIeBFRleHQFE+S9oOWlve+8gUdsb3JpYV9nc2xkZAIBDxYCHgVjbGFzcwUIc2hvcF9uYXZkAgIPZBYCZg8WAh4LXyFJdGVtQ291bnQCAhYEZg9kFgRmDxUGJC9kYXJyeV9yaW5nL0EwNjAwNC9aMDQwMjMyNzg4MDEuaHRtbE1odHRwOi8vaW1nLmRhcnJ5cmluZy5jb20vdXNlcmZpbGVzL2ltYWdlL3Byb2R1Y3QvMjAxNTA5MzAxOTE0MDM2MTYxNGVhZDFkLmpwZxZUUlVFIExPVkXns7vliJcg5YW46ZuFCeeZvTE4S+mHkQE4AGQCAQ8VAgUxOTA5OQYxODU1ODBkAgIPZBYEZg8VBhwvZHJfcGhvbmljcy9QMDkwNTAvbm9uZS5odG1sTWh0dHA6Ly9pbWcuZGFycnlyaW5nLmNvbS91c2VyZmlsZXMvaW1hZ2UvcHJvZHVjdC8yMDE2MDEyMDE1MTMwM2U3NzdlN2RhNDMuanBnHkRhcnJ5IFJpbmfns7vliJcgeW91Jm1lIOWvueaIkgzliIboibIxOEvph5Eb55S344CQMTXjgJEsPC9icj7lpbPjgJA444CRAGQCAQ8VAgUxMTM5OAYxODc2OTdkZPlhP2ojmkDV52ecxjszjIQPoznl" />
</div>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="B3C75D74" />
</div>
<!--全部背景-->
<div class="all-thing">
    <!--中间内容-->
    <div class="tcmain">
    	<!--头部-->
        <div class="shop_top">
        	<div class="shopt_left fl">
	            <a href="#" title="Darry Ring">
	            	<img src="images/dr.png" width="186" height="42" />
	            </a> 
            </div>
            <div class="shopt_right fr">
                 <span id="ctl00_ltlUname">你好！${users.uname }</span>
               <a href="page/index.jsp" class="my_dr">我的DR</a>
                <a href="#" class="tc_dr" onclick="javascript:logout()">退出</a>
               <a href="/help.html" class="help_dr">帮助中心</a>
            </div>
        </div>
        <!--头部end-->
        <!--导航条-->
        <div id="ctl00_showNav" class="shop_nav">
        </div>
        <!--导航条end-->
        
    <script type="text/javascript"> 
    function deleteCart(cartid) {
        if (confirm("确认删除？")) {
           $.post("cart/delete?cartid="+cartid,function(data){
        	   
           });
        }
    }

    function clearCart() {
        if (confirm("确认清除？")) {
            $.get("/nAPI/Cart.aspx?action=clear", function () {
                window.location.reload();
            });
        }
    }
    function toPay() {
        var nu = '2';
        window.location = "/ncart/cart.aspx?action=next&page=Agreement&lan=0";
        window.location = "/ncart/cart.aspx?action=next&page=Agreement&lan=0";
    }
</script>

        <!--内容-->
        <div class="shop_cort">
        	<!--左边-->
            <div class="shop_cort-left fl">
            <h3>查看我的购物车</h3>
                <!--购物车-->
                <table border="0" cellspacing="0" cellpadding="0" class="shop_tabble">
                    <tr class="nav_tr">
                        <td class="sp_td" style="width:240px">商品</td>
                        <td class="cz_td" style="width:100px">材质</td>
                        <td class="sc_td" style="width:100px">手寸/尺寸</td>
                        <td class="kz_td" style="width:100px">刻字</td>
                        <td class="gm_td">购买价</td>
                    </tr>
                            <tr class="cp_tr">
                                <td class="sp_td">
                        	       <a  class="jx_shop" href="/dr_phonics/P09050/none.html">
                                   <img src="images/20160120151303e777e7da43.jpg" width="85" height="85" />
                        	        <span>
                                    Darry Ring系列 you&me 对戒</span></a>
                                </td>
                                <td class="cz_td">分色18K金</td>
                                <td class="sc_td">男【15】,</br>女【8】</td>
                                <td class="kz_td"></td>
                                <td class="gm_td" style="font-family:微软雅黑">￥11398</td>
                                <td class="close_td"><span class="sicon s_close" onclick="deleteCart(187697);"></span></td>
                            </tr>
                        
                </table>
                <!--购物车end-->
                <!--结算-->
                 
                <div class="shop_js">
                	<a href="page/marrying.jsp" class="jx_shop">继续购物</a>
                    <a href="javascript:clearCart();" class="qk_shop">清空购物车</a>
                    <span>你购买了<i>2</i>件商品</span>
             
                    <span>总计：<i class="fw_bold" style="font-family:微软雅黑">￥30,497</i></span>
                    <span class="end_bt" onclick="toPay();"><em>立即结算</em></span>
                </div>
                <!--结算end-->
              
           	</div>     
            <!--左边end-->
            <!--右边-->
              <div class="shop_cort-right fr">
            	<div class="shop_right-nr">
                	<h3>购物帮助指南</h3>
                    <div class="shop_right-zx line_bottom">
                    	<p class="shop_lx">24小时在线客服</p>
                        <p class="shop_tel">400-01-13520</p>
                    </div>
                    <div class="shop_right-zf line_bottom">
                    	<h4>支付安全保障</h4>
                        <p>安全支付系统采用SSL加密。</p>
                        <ul class="shop_right-ul">
                        	<li class="shop_cor-yl"></li>
                            <li class="shop_cor-cft"></li>
                            <li class="shop_cor-zf"></li>
                        </ul>
                    </div>
                    <div class="shop_right-ps">
                    	<h4>全球配送</h4>
                    	<p class="shop_kd">支持全球配送,店铺取货</p>
                        <p class="shop_bj">全程保价 无风险</p>
                    </div>
                </div>
            </div>
            <!--右边end-->
        </div>

         <!--底部-->
    <div class="cmain shop_foot">
    	<p>Copyright &copy; 2006-2015 www.darryring.com 戴瑞珠宝 All Rights Reserved. 粤ICP备11012085号</p>
        <p>中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票</p>
        <div class="shop_foot-img">
        	<img src="Cart/images/db.jpg" width="776" height="55" />
        </div>
    </div>
    <!--底部end-->
</div>
<!--全部背景end-->
    </div>
    <script type="text/javascript">
        function logout() {
            if (window.confirm('确定退出吗？')) {
                $.get("/nAPI/QuitExit.ashx", function (data) {
                    window.location.href = "/";
                });
            }
        }
</script>
    </form>
 <script type="text/javascript">
// GOOGLE 统计工具代码
(function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
        (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date(); a = s.createElement(o),
m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

ga('create', 'UA-46798784-1', 'darryring.com');
ga('require', 'displayfeatures');
ga('send', 'pageview');


//咨询框按钮
function pyConsultPy() {
    var w = window, d = document, e = encodeURIComponent;
    var b = location.href, c = d.referrer, f, g = d.cookie, h = g.match(/(^|;)\s*ipycookie=([^;]*)/), i = g.match(/(^|;)\s*ipysession=([^;]*)/);
    if (w.parent != w) { f = b; b = c; c = f; };

}

var _intervalCount = 0;
var lxbCbInputBtnBinded = false;
var lxbCbInputBtnBindedA = false;
var _interval = window.setInterval(function () {
  /*  if ($('#Bearonline').length > 0 && !lxbCbInputBtnBinded) {
        $('#Bearonline').bind("click", function () {
            pyConsultPy();
        });
        lxbCbInputBtnBinded = true;
    }*/

   /* if ($('#dzzxonline').length > 0 && !lxbCbInputBtnBindedA) {
        $('#divOnline').bind("click", function () {
            pyConsultPy();
        });
        lxbCbInputBtnBindedA = true;
    }*/


    if (lxbCbInputBtnBinded && lxbCbInputBtnBindedA) {
        window.clearInterval(_interval);
    }

    _intervalCount++;
    if (_intervalCount > 60) {
        window.clearInterval(_interval);
    }
}, 200);


</script>
    <script type="text/javascript">
    //Google 再营销代码
    /* <![CDATA[ */
   /*  var google_conversion_id = 974707783;
    var google_custom_params = window.google_tag_params;
    var google_remarketing_only = true; */
    /* ]]> */

   /*  //百度代码
    var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
    document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fcbc01ac15a6b1e666bf91e1ecba215e9' type='text/javascript'%3E%3C/script%3E"));
 */
  
</script>
<!--有道start-->

<!--有道end-->
<!--底部Start-->

<!--底部end-->
<!--腾讯广点通广告代码-Start-->
 
<!--腾讯广点通广告代码-END-->

<script type="text/javascript">
/*弹窗*/
    function showxiaon()
    {
        dr('consult');
        NTKF.im_openInPageChat();
        $('.news_tc').css('display', 'none');
}

</script>

    

<script type="text/javascript" src="http://dl.ntalker.com/js/xn6/ntkfstat.js?siteid=kf_9883" charset="utf-8"></script>

<script src="http://data.darryring.com/Analytics.js?UID=DR-48670750-1"></script>
	</body>
</html>
