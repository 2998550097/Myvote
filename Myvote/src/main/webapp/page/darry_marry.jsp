<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE htm>

<html>
<head>
<base href="/MyDarry/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/jiathis_counter.css" rel="stylesheet"
	type="text/css">


<link rel="stylesheet" href="css/dr.css">
<link href="css/jiathis_share.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css" href="css/same.css">
<link rel="stylesheet" type="text/css" href="css/kefu.css">
<script type="text/javascript" src="headerJs/jquery-1.11.3.min.js"></script>
<script src="js/ckepop.js" charset="utf-8"></script>
<script src="js/hm.js"></script>
<script charset="utf-8" src="js/lxb.js"></script>
<script src="js/hm(1).js"></script>
<script async="" src="js/gt.js"></script>
<script charset="utf-8" src="js/lxb.js"></script>
<script charset="utf-8" src="js/v.js"></script>
<script type="text/javascript" src="headerJs/index.js"></script>
<script async="" src="headerJs/banner.js"></script>

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
<script type="text/javascript" src="headerJs/header.js"></script>
<link rel="stylesheet" href="css/common.css">
<!--统计系统-->
<script type="text/javascript" src="js/Magnifier.js"></script>
<script type="text/javascript" src="js/buy_xq.js"></script>
<script type="text/javascript" src="js/fd_hd.js"></script>
<script type="text/javascript">
        var DiamondChanged = function(c){
            CurrentDiamondPrice = parseFloat($(c).attr("value"));
            CurrentDiamondCode =  $(c).attr("diamondcode") ;
            $(".byright_sec li").eq(0).find("span").text($(c).attr("ct"));//钻重
            $(".byright_sec li").eq(1).find("span").text($(c).attr("color"));//颜色
            $(".byright_sec li").eq(2).find("span").text($(c).attr("clarity"));//净度
            $(".byright_sec li").eq(3).find("span").text($(c).attr("cut"));//切工
            $(".byright_top span").text("￥"+getProductPrice());
            $(".border_cs-td2 em").eq(1).text($(c).attr("ct")+"克拉");//克拉
            $(".border_cs-td4 em").eq(1).text($(c).attr("clarity"));
            $(".border_cs-td5 em").eq(1).text($(c).attr("color"));
            $(".border_cs-td6 em").eq(0).text($(c).attr("cut"));
        }

        $(function(){
            MaterialChoosedEvent = function(m,p) {
                CurrentMaterialPrice = p;
                CurrentMaterial=m;
                material = m;
                getSizeList(m);
                getAddPrice(m);
                $(".byright_top span").text("￥"+getProductPrice());
            };
            //初始化钻石选项点
            $(".more_ul li:not([class='choose_more'])").click(function(){
            });
            $("#ctl00_content_ddlHandSize").change(function() {
                size = $("#ctl00_content_ddlHandSize").find("option:selected").text();
                $(".byright_top span").text("￥"+getProductPrice());
            });
            getSizeList('白18K金');
            getAddPrice('白18K金');

        });

        function formatCurrency(num) {
            num = Math.round(num);
            num = num.toString().replace(/\$|\,/g, '');
            if (isNaN(num))
                num = "0";
            sign = (num == (num = Math.abs(num)));
            num = Math.floor(num * 100 + 0.50000000001);
            cents = num % 100;
            num = Math.floor(num / 100).toString();
            if (cents < 10)
                cents = "0" + cents;
            for (var i = 0; i < Math.floor((num.length - (1 + i)) / 3); i++)
                num = num.substring(0, num.length - (4 * i + 3)) + ',' +
                    num.substring(num.length - (4 * i + 3));
            var str = (((sign) ? '' : '-') + num + '.' + cents);
            str = str.substr(0, str.length - 3);
            return str;
        }

        function getSizeList(material) {
            var sizes = "<option value='-1'>-请选择-</option>";
            for (var j in sizejson) {
                if (sizejson[j].material == material) {
                    sizes += "<option value='" + sizejson[j].price + "'>" + sizejson[j].size + "</option>";
                }
            }
            $("#ctl00_content_ddlHandSize").html(sizes);
            $("#ctl00_content_ddlHandSize  option[text='"+size+"']").attr("selected", true);
        }

        function  getAddPrice(materialname) {
            addprice = 0;
            if(addpricejson!=null ) {
                for (var i in addpricejson) {
                    if (addpricejson[i].material == materialname && addpricejson[i].dia_code == 'Z07021300002') {
                        addprice =parseInt( addpricejson[i].price);

                    }
                }
            }
        }
    </script>
<title>MY HEART 系列 奢华款_0.7克拉_H色_价格图片_Darry Ring求婚钻戒 戴瑞珠宝官网</title>
<meta name="description"
	content="Darry Ring官网提供Darry Ring MY HEART 系列 奢华款系 列钻戒购买，更有MY HEART 系列 奢华款0.7克拉钻戒价格、H色、切工、SI净度等相关资讯，了解MY HEART 系列 奢华款系列求婚钻戒图片、价格就上戴瑞珠宝官网。">
<script charset="utf-8" async="" src="footerJs/footer.js"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="js/zh_cn.js" data-requiremodule="lang"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="js/chat.in.js" data-requiremodule="chatManage"></script>
<script type="text/javascript" async="async" charset="utf-8"
	src="js/comet.chat.js" data-requiremodule="TChat"></script>
<script src="js/_cm.js"></script>
</head>
<body>
	<!--头部-->
	<jsp:include page="header.jsp" />

	<!-- 导航 -->
	<jsp:include page="nav.jsp" />

	<div id="nTalk_post_hiddenElement"
		style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>

	<iframe frameborder="0"
		style="position: absolute; display: none; opacity: 0; top: 464px; left: 492px; width: 122px; height: 235px;"></iframe>
	<div class="jiathis_style"
		style="position: absolute; z-index: 1000000000; display: none; top: 50%; left: 50%; overflow: auto;"></div>
	<div class="jiathis_style"
		style="position: absolute; z-index: 1000000000; display: none; overflow: auto; top: 464px; left: 491.5px;">
		<div class="jiadiv_01">
			<div
				style="width: 100%; background: #F2F2F2; border-bottom: 1px solid #E5E5E5; line-height: 180%; padding-left: 5px; font-size: 12px">
				<table width="100%">
					<tbody>
						<tr class="jt_sharetitle">
							<td align="left"
								style="text-align: left; font-size: 14px; font-weight: bold; color: #000000;">分享到</td>
							<td align="right" style="text-align: right;"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="jiadiv_02" style="width: 100%;" id="jiathis_sers">
				<a href="javascript:;"
					onclick="jiathis_sendto();"
					class="jiatitle"><span class="jtico jtico_qzone">QQ空间</span></a><a
					href="javascript:;"
					onclick="jiathis_sendto(&#39;tsina&#39;);return false;"
					class="jiatitle"><span class="jtico jtico_tsina">微博</span></a><a
					href="javascript:;"
					onclick="jiathis_sendto(&#39;tqq&#39;);return false;"
					class="jiatitle"><span class="jtico jtico_tqq">腾讯微博</span></a><a
					href="javascript:;"
					onclick="jiathis_sendto(&#39;renren&#39;);return false;"
					class="jiatitle"><span class="jtico jtico_renren">人人网</span></a><a
					href="javascript:;"
					onclick="jiathis_sendto(&#39;weixin&#39;);return false;"
					class="jiatitle"><span class="jtico jtico_weixin">微信</span></a><a
					href="javascript:;"
					onclick="jiathis_sendto(&#39;ishare&#39;);return false;"
					class="jiatitle"><span class="jtico jtico_ishare">一键分享</span></a><a
					href="javascript:;" onclick="$CKE.center(this);return false;"
					class="jiatitle"><span class="jtico jtico_jiathis">查看更多(96)</span></a>
				<div style="clear: both"></div>
			</div>
			<div class="ckepopBottom" style="width: 100%;">
				<div style="float: right; font-size: 11px; margin: 0 5px 0 0;">
					<img src="images/darry_marry/img_012.gif" align="absmiddle" border="0"><a
						href="http://www.jiathis.com/index2"
						style="color: #333333; padding: 0 3px;" class="link_01"
						target="_blank">JiaThis</a>
				</div>
				<div style="clear: both"></div>
			</div>
		</div>
	</div>
	<form name="aspnetForm" method="post"
		action="images/darry_marry/MY HEART 系列 奢华款_0.7克拉_H色_价格图片_Darry Ring求婚钻戒 戴瑞珠宝官网.html"
		id="aspnetForm">
		<div>
			<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
				value="/wEPDwUKLTI1MzY0MjMzMmRkSxLVL1eRCHGLHgw9DpS2qOIgwf8=">
		</div>

		<div>

			<input type="hidden" name="__VIEWSTATEGENERATOR"
				id="__VIEWSTATEGENERATOR" value="B4C41517">
		</div>
			<!--遮罩-->
			<div class="backall"></div>
			<!--遮罩end-->
			<!--钻戒页面中间-->
			<div class="cort">
				<div class="tobuy cmain">

					<div class="zbk_top spalid">

						<span id="ctl00_content_website_SiteMapPath1"><a
							href="http://www.darryring.com/darry_ring/628.html#ctl00_content_website_SiteMapPath1_SkipLink"><img
								alt="Skip Navigation Links" src="images/darry_marry/WebResource.axd"
								width="0" height="0" style="border-width: 0px;"></a><span>
								<a href="http://www.darryring.com/" target="_blank">Darry
									Ring</a>
						</span><span> <em>&gt;</em>
						</span><span> <span>求婚钻戒</span>
						</span><a id="ctl00_content_website_SiteMapPath1_SkipLink"></a></span>
					</div>


					<!--购买页中间-->
					<div class="buy_cort">

						<!--统计系统-->
						<script type="text/javascript">
    /*收藏事件*/
    var favoritesEvent = function () { };
    $(function () {
        try {
            
            goodstatistics();
            // 产品详情上报的CRM
            goodspvsynccrm();
            favoritesEvent = function () {
                var _self = this;
                $(_self).unbind("click");
                var url = window.location.href;
                var arr = url.split("/");
                url = arr[arr.length - 1].toString();
                url = url.substring(0, url.indexOf(".html"));
                var price = $(".byright_top span").text();
                var pname = 'MY HEART 系列 奢华款'; 
                price = price.substr(1);
               // var material = encodeURI($(".border_cs-td4 em").eq(0).text()); 
                $.get("/nAPI/favorites.ashx?action=add&diacode=" + 'Z07021300002' + "&stylecode=" + 'A03003' + "&material=" + encodeURI(material) + "&handsize=" + size + "&pname=" + pname, function (msg) {
                    $(_self).click(favoritesEvent);

                    if (msg != "") {
                        
                        if (msg.indexOf("Success") > -1) {
                            var favid = msg.split(',')[1];
                            collection('Z07021300002', pname, favid);
                        }
                        else {
                            alert(msg);
                        }
                    }
                    else {
                        favoritesCss(true);
                        alert("收藏成功");
                    }
                 }, "html");
            };
        }
        catch (e) { }
        $(".share_sc").click(function () {
            if ('true' == 'false') {
                alert("请登录！");
                window.location.href = 'http://passport.darryring.com/login?forward=http://www.darryring.com/darry_ring/628.html';
            }
        });

    });

    function goodstatistics() {
        
        var diacode = 'Z07021300002';
        var productname = 'MY HEART 系列 奢华款';
        var goodstype = '求婚钻戒';
        var series = 'MY HEART 系列';
        var material = '白18K金,PT950';
        var ct = '0.7';
        var price = '39699.00';
        $.post("/API/DataReporting.ashx?action=goodspv" + "&diacode=" + diacode + "&productname=" + productname + "&goodstype=" + goodstype + "&series=" + series + "&material=" + material + "&ct=" + ct + "&price=" + price, function (msg) {
            var obj = JSON.parse(msg);
            dr('goodspv', obj.data);
        });
    }

    // 产品详情页面
    function goodspvsynccrm()
    {
        var data={
            pid: 628,
            sku: "Z07021300002",
            goodsSeries: "A03003",
            diamondFraction: "0.7",
            amount: "39699.00",
            goodsName: "MY HEART 系列 奢华款",
            clarity : "SI",
            viewcolor :"",
            color: "H",
            cut: "",
            shape:"HEART",
            material: "白18K金,PT950",
            number: "1",
            viceDrill:"0.7",
        };
        // 用户登录则上报将产品详情页CRM
        if ('True' == 'True') {
            $.post("/API/DataReporting.ashx?action=goodspvsynccrm",data, function (msg) {
                var obj = JSON.parse(msg);
                dr('goodspv', obj.data);
            });
        }
    }

     function collection(diacode, pname, favid) {
         $.post("/API/DataReporting.ashx?action=collection" + "&diacode=" + diacode + "&productname=" + pname + "&favid=" + favid, function (msg) {
             
             var obj = JSON.parse(msg);
             dr('collection', obj.data);
         });
     }
</script>
						<!--购买页中间的左边图片-->
						<div class="buycort_left fl">
							<ul class="bc_left">

								<li class="li_border"><img alt="MY HEART 系列 奢华款 0.7 H"
									src="images/darry_marry/201606201013425c46d90c91.jpg"></li>

								<li><img alt="MY HEART 系列 奢华款 0.7 H"
									src="images/darry_marry/2016062010134644945bb6a4.jpg"></li>

								<li><img alt="MY HEART 系列 奢华款 0.7 H"
									src="images/darry_marry/201606201013489a22139075.jpg"></li>

								<li><img alt="MY HEART 系列 奢华款 0.7 H"
									src="images/darry_marry/20160620101350d2f9fcb5a8.jpg"></li>

							</ul>
							<!--上下按钮-->
							<div class="top"></div>
							<div class="bottom"></div>
						</div>
						<!--购买页中间的左边图片end-->
						<!--购买页中间的中间图片-->
						<div class="buycort_center fl">
							<ul class="ul_center">

								<li id="magnifier0" style="display: list-item;">
									<img alt="MY HEART 系列 奢华款 0.7 H" src="images/darry_marry/201606201013425c46d90c91.jpg"> 
									<span style="position: absolute; left: 192.5px; top: 248px; display: none; width: 150px; height: 150px; border: 1px solid rgb(0, 0, 0); cursor: move; opacity: 0.4; zoom: 1; background: rgb(153, 153, 153);"></span>
									<div style="position: absolute; overflow: hidden; width: 300px; height: 300px; top: 0px; right: -385px; border: 1px solid rgb(204, 204, 204); z-index: 99998; display: none;">
										<img src="images/darry_marry/201606201013425c46d90c91.jpg" style="position: absolute; left: -386.552px; top: -498px; width: 800px; height: 800px;">
									</div>
								</li>

								<li id="magnifier1">
									<img alt="MY HEART 系列 奢华款 0.7 H" src="images/darry_marry/2016062010134644945bb6a4.jpg">
								</li>

								<li id="magnifier2"><img alt="MY HEART 系列 奢华款 0.7 H"
									src="images/darry_marry/201606201013489a22139075.jpg"></li>

								<li id="magnifier3"><img alt="MY HEART 系列 奢华款 0.7 H"
									src="images/darry_marry/20160620101350d2f9fcb5a8.jpg"></li>

							</ul>
							<div class="kzyl"></div>
							<!--右按钮-->
							<div class="big_next"></div>
							<!--收藏分享-->
							<div class="share">
								<span class="share_sc fl" style="">收藏商品</span>
								<!-- JiaThis Button BEGIN -->
								<div class="jiathis_style fl" style="display: block">
									<span class="jiathis_txt">分享到：</span> <a
										class="jiathis_button_qzone" title="分享到QQ空间"><span
										class="jiathis_txt jtico jtico_qzone"></span></a> <a
										class="jiathis_button_tsina" title="分享到微博"><span
										class="jiathis_txt jtico jtico_tsina"></span></a> <a
										class="jiathis_button_tqq" title="分享到腾讯微博"><span
										class="jiathis_txt jtico jtico_tqq"></span></a> <a
										class="jiathis_button_renren" title="分享到人人网"><span
										class="jiathis_txt jtico jtico_renren"></span></a> <a
										href="http://www.jiathis.com/share"
										class="jiathis jiathis_txt jtico jtico_jiathis"
										target="_blank"></a> <a class="jiathis_counter_style"><span
										class="jiathis_button_expanded jiathis_counter jiathis_bubble_style"
										id="jiathis_counter_132" title="累计分享27次">27</span></a>
								</div>
								<script type="text/javascript" src="js/jia.js"
									charset="utf-8"></script>
								<script type="text/javascript"
									src="js/plugin.client.js" charset="utf-8"></script>
								<!-- JiaThis Button END -->
							</div>
							<!--收藏分享end-->
						</div>

						<!--购买页中间的中间图片end-->
						<!--购买页中间的右边购买选项-->
						<div class="buycort_right fr">
							<!--钻戒-->
							<div class="byright_top">
								<p>MY HEART 系列 奢华款[A03003]</p>
								<p>
									<span>￥39,699</span>
								</p>
								<div class="byright_top-xq">
									<i>最近售出：18354</i> <i>用户评论：69</i> <i>收藏人气：1828</i>
								</div>
							</div>
							<!--钻戒end-->
							<!--参数-->
							<ul class="byright_sec">
								<li>钻石重量(ct)：<span>0.7</span>
								</li>
								<li>钻石颜色(color)：<span>H</span>
								</li>
								<li>钻石净度(clarity)：<span>SI</span>
								</li>
								<li>钻石切工(cut)：<span></span>
								</li>
							</ul>
							<!--参数end-->
							<!--选择材质刻字等-->
							<div class="byright_thr">
								<!--第一行-->

								<script type="text/javascript">
    var MaterialChoosedEvent = function (m,p) { };
    $(function () {
        $("#materialDiv i").click(function () {
            //alert("222");
            MaterialChoosedEvent($(this).text(), parseFloat($(this).attr("value")));
        });
        var w = $(".border_cs-td4 em").eq(0).text();
        $("#materialDiv i").eq(0).click();
        $("#materialDiv i").eq(0).click(function() {
            $(".border_cs-td4 em").eq(0).text(w);
        });
  
//        var m = $("#materialDiv i").eq(1).text();
//        $("#materialDiv i").eq(1).click(function () {
//            if (m=="PT950") {
//                var ww = w * 1.375;
//                $(".border_cs-td4 em").eq(0).text(ww);
//            }
//        });

    });
</script>
								<div class="thr_first" id="materialDiv">
									<span>材质：</span> <i value="8199.00" class="iborder">白18K金</i> <i
										value="9399.00">PT950</i>


								</div>
								<!--第二行-->
								<div class="thr_first">
									<span>手寸：</span> <select name="ctl00$content$ddlHandSize"
										id="ctl00_content_ddlHandSize"><option value="-1">-请选择-</option>
										<option value="0">5</option>
										<option value="0">6</option>
										<option value="0">7</option>
										<option value="0">8</option>
										<option value="0">9</option>
										<option value="0">10</option>
										<option value="0">11</option>
										<option value="0">12</option>
										<option value="0">13</option>
										<option value="0">14</option>
										<option value="0">15</option>
										<option value="100">16</option>
										<option value="200">17</option>
										<option value="300">18</option>
										<option value="400">19</option>
										<option value="500">20</option>
										<option value="600">21</option>
										<option value="700">22</option></select> <a
										href="http://www.darryring.com/help/77.html" target="_blank">如何测量?</a>
									<a onclick="" class="droline_showkf" style="cursor: pointer"
										target="_blank">联系客服</a>
								</div>
								<!--第三行-->
								<div class="thr_secound">
									<span>刻字：</span> <input type="text" placeholder="5个汉字或10个字母"
										id="ipt_font"> <i class="write_choose">♥</i> <i
										class="write_choose">&amp;</i> <em class="ylxg">预览效果</em>
								</div>
							</div>
							<!--选择材质刻字等end-->
							<!--更多钻石搭配-->
							<div id="ctl00_content_tjlzDiv">
								<p class="more_dp">更多钻石搭配:</p>
								<ul class="more_ul">

									<li class="" value="15600.00" diamondcode="Z05021300002"
										ct="0.5" color="H"><a
										href="http://www.darryring.com/darry_ring/A03003/Z05021300002.html">
											50分H色 </a></li>

									<li class="moreul_sp" value="31500.00"
										diamondcode="Z07021300002" ct="0.7" color="H"><a
										href="http://www.darryring.com/darry_ring/A03003/Z07021300002.html">
											70分H色 </a></li>

									<li class="" value="35000.00" diamondcode="Z070253000021"
										ct="0.7" color="D"><a
										href="http://www.darryring.com/darry_ring/A03003/Z070253000021.html">
											70分D色 </a></li>

									<li class="" value="66920.00" diamondcode="Z100213000021"
										ct="1" color="H"><a
										href="http://www.darryring.com/darry_ring/A03003/Z100213000021.html">
											100分H色 </a></li>

									<li class="" value="73920.00" diamondcode="Z100234000021"
										ct="1" color="F"><a
										href="http://www.darryring.com/darry_ring/A03003/Z100234000021.html">
											100分F色 </a></li>

									<li class="" value="131900.00" diamondcode="Z100257000021"
										ct="1" color="D"><a
										href="http://www.darryring.com/darry_ring/A03003/Z100257000021.html">
											100分D色 </a></li>

									<li class="" value="165999.00" diamondcode="Z200213000021"
										ct="2" color="H"><a
										href="http://www.darryring.com/darry_ring/A03003/Z200213000021.html">
											200分H色 </a></li>

									<li class="" value="1952400.00" diamondcode="Z300257000021"
										ct="3" color="D"><a
										href="http://www.darryring.com/darry_ring/A03003/Z300257000021.html">
											300分D色 </a></li>

									<li class="" value="2613900.00" diamondcode="Z500214000021"
										ct="5" color="H"><a
										href="http://www.darryring.com/darry_ring/A03003/Z500214000021.html">
											500分H色 </a></li>

									<li class="" value="15192400.00" diamondcode="Z999257000021"
										ct="9.99" color="D"><a
										href="http://www.darryring.com/darry_ring/A03003/Z999257000021.html">
											999分D色 </a></li>

									<li class="choose_more" style="display: none">钻石定制</li>

								</ul>
							</div>
							<p class="thered_word" style="display: block">中国大陆用户付款后20个工作日内可收到货品,其它地区请咨询客服。</p>
							<!--购买选项-->
							<div class="button buy_button">
								<div class="bt1" title="把darry ring加入购物车" id="newCart">
									<span>加入购物车</span>
								</div>
								<div class="bt2" title="购买darry ring钻戒" id="newBuy">
									<span>立即购买</span>
								</div>
							</div>
						</div>
						<!--购买页中间的右边end-->
					</div>
					<!--购买页中间end-->
				</div>

				<script type="text/javascript">
    function getPage(action) {
        var currentPage = $("#i_curr").html();
        var totPage = $("#i_tot").html();
        if (action == "up") {
            if (currentPage == 1) {
              
                return false;
            }
           
            currentPage = parseInt(currentPage) - 1;
        }
        else {
            if (currentPage == totPage) {
                currentPage = parseInt(currentPage)
                return false;
            }
            else {
                currentPage = parseInt(currentPage) + 1;    
            }
        }
        loadData(currentPage);
    }

    function getOrderbyArgs() {
       // var by = $(".hot-ks span[class='other_color']").text().trim();
        var orderby = "";
        var by = "";
        var descby = $.trim($(".hot-ks span[class='other_color'] span[class='ff']").text());
        var ascby = $.trim($(".hot-ks span[class='other_color ota_color'] span[class='ff']").text());   
        /**
        $(".hot-ks span[class='other_color']").each(function () {
            if ($(this).attr("class").indexOf("ota_color") == -1) {
                by += " desc";
            }
            else {
                by += " asc";
            }
        });
      ***/


        if (descby != "") {
            orderby = descby ;
            by = "desc";
        }
        else if (ascby != "") {
            orderby = ascby;
            by="asc";
        }

        var data = [];
        data.push("orderby");
        data["orderby"] = orderby;
        data.push("by");
        data["by"] = by;
      
        return data;
    }
    $(document.body).ready(function () {

        __CurrentPagingDiamond.CustomChanged = function (num) {
            loadData(num);
        };
        HighLevelSearch.SearchPage = function () {
            $("#i_curr").html(1);
            loadData(1);
        }
        OrderByComplete = function () {
            loadData(__CurrentPagingDiamond.CurrentPageNum);
        };
    });
    var isSpot;
    function loadData(num) {

        $("#i_curr").html(num);
 
        var paras = [];
        paras.push(HighLevelSearch.dToGetArgs());
        paras.push(getOrderbyArgs());
        var url = "";
        $(paras).each(function (index) {
            var item = this;
            $(item).each(function () {
                var key = this.toString();
                var value = item[key];
                url += "&" + key + "=" + value;
            });
        });
        $.get("/nAPI/DiamondSearch.aspx?lan=0&isSpot=" + isSpot + "&stylecode=A03003&pagenum=" + num + url + "&mprice=" + CurrentMaterialPrice + "&Material=" + escape(CurrentMaterial) + "&rate=" + rate, function (data) {
            $("#zsResult").html(data);
            $(".thb_bottom #lzCount i").text(ZSSearchPageNum);
            __CurrentPagingDiamond.ReCreate(ZSSearchPageCount, num);
            $("#i_tot").html(ZSSearchPageCount);
            if (ZSSearchPageNum == num) {
                $("#em_up").addClass("no_paget");
            }
            else {
                $("#em_up").addClass("have_paget");
            }
            if (ZSSearchPageCount == num) {
                $("#em_down").addClass("last_paget");
            }
            else {
                $("#em_down").removeClass("last_paget");
            }

            /*结果鼠标经过事件*/
            result_hover();
            //选择裸钻事件
            $(".result_right").click(function () {
                try {
                    DiamondChanged($(this).parent());
                    $("html,bo dy").animate({ scrollTop: 0 }, 400);
                } catch (e) { }
            });
        });
    }

 
</script>

				<!--高级搜索-->
				<div class="thesearch_jg">
					<!--高级搜索-->
					<div class="gj_search od1" style="display: none">
						<div class="ser_top">
							<div class="fr">
								<span class="clear_kong"
									onclick="HighLevelSearch.dSearchReset();">清空</span> <img
									src="images/darry_marry/close.png" width="61" height="15"
									class="toclose">
							</div>
							<h3 class="fl">钻石个性搭配</h3>
						</div>

						<script type="text/javascript" src="js/perice.js"></script>
						<div id="ctl00_content_ucdiamonsearch_dsearch_gj_search" class="">
							<!--高级搜索-->

							<!--搜索框内-->
							<div class="all_search">
								<!--价格拉动-->
								<div class="thepirce">
									<!--价格拉动左边-->
									<div class="spline fl">
										<span class="word_right fl">预算</span>
										<div class="tz_border fl">

											<span class="the_pirce">¥</span> <input type="text">
											<em>元-</em> <input type="text"> <em>元</em>
										</div>
									</div>
									<!--价格拉动左边end-->
									<!--价格拉动右边-->
									<div class="spline fr">
										<span class="word_right fl">钻重</span>
										<div class="tz_border fl">
											<i class="the_zzhong"></i> <input type="text"> <em>克拉-</em>
											<input type="text"> <em>克拉</em>
										</div>
									</div>
									<!--价格拉动右边end-->
								</div>
								<!--价格拉动end-->
								<!--颜色净度-->
								<div class="color_jd fix">
									<!--颜色净度左边-->
									<div class="the_color fl">
										<span class="fl">颜色</span>
										<div class="color_cs fl">
											<b> <i>D</i> <em>完全无色, 属于最高级别, 极其稀有，具有一定收藏价值。</em>
											</b> <b> <i>E</i> <em>无色。只有钻石鉴定专家才能检测到微量颜色，非常稀有。</em>
											</b> <b> <i>F</i> <em>无色。少量的颜色仅珠宝专家可以检测到，属高品质钻石。</em>
											</b> <b> <i class="zs2">G</i> <em>接近无色。和高色级钻石比较,有轻微颜色,有较高价值。</em>
											</b> <b> <i class="zs3">H</i> <em>接近无色。和高色级钻石比较时，有轻微的颜色。</em>
											</b> <b> <i class="zs4">I</i> <em>接近无色。可检测到轻微的颜色。</em>
											</b> <b> <i class="zs5">J</i> <em>可检测到轻微的颜色。</em>
											</b> <b> <i class="zs6">K</i> <em>颜色较深，火彩差。Darry
													Ring不采用此等级钻石。</em>
											</b>
										</div>
									</div>
									<!--颜色净度左边end-->
									<!--颜色净度左边-->
									<div class="the_color fr">
										<span class="fl">净度</span>
										<div class="clear_cs fl">
											<b> <i>IF</i> <em>内无瑕级,10倍放大镜下观察,没有任何内含物或表面特征。</em>
											</b> <b> <i>VVS1</i> <em>极轻微内含级,10倍放大镜下,可见内部仅有极微小内含物。</em>
											</b> <b> <i>VVS2</i> <em>极轻微内含级,10倍放大镜下,可见内部极微小内含物。</em>
											</b> <b> <i>VS1</i> <em>轻微内含级,10倍放大镜下,可见内部仅有微小内含物。</em>
											</b> <b> <i>VS2</i> <em>轻微内含级,10倍放大镜下,可见内部有微小的内含物。</em>
											</b> <b> <i>SI1</i> <em>微内含级，在10倍放大镜下观察，钻石有可见的微内含物。</em>
											</b> <b> <i>SI2</i> <em>微内含级，在10倍放大镜下观察，钻石有可见的内含物。</em>
											</b>
										</div>
									</div>
									<!--颜色净度左边end-->
								</div>
								<!--颜色净度end-->
								<!--切工对称-->
								<div class="color_jd fix">
									<!--切工左边-->
									<div class="the_color fl">
										<span class="fl">切工</span>
										<div class="the_qg fl">
											<b> <i>Ideal</i> <em>完美切工，仅3%的一流高质量钻石才能达到的标准。</em>
											</b> <b> <i>EX</i> <em>极优切工，仅3%的一流高质量钻石才能达到的标准。</em>
											</b> <b> <i>VG</i> <em>优良切工，仅大约15%的钻石才能达到的标准。</em>
											</b> <b> <i>GD</i> <em>良好切工，Darry Ring不采用此等级切工。</em>
											</b> <b> <i>Fair</i> <em>尚可切工，Darry Ring不采用此等级切工。</em>
											</b>
										</div>
									</div>
									<!--切工左边end-->
									<!--对称右边-->
									<div class="the_color fr">
										<span class="fl">对称</span>
										<div class="the_dc fl">
											<b> <i>EX</i> <em>完美，钻石的各切面的排列达到完美标准。</em>
											</b> <b> <i>VG</i> <em>很好，钻石的各切面的排列比较好。</em>
											</b> <b> <i>GD</i> <em>好，Darry Ring不采用此类钻石。</em>
											</b> <b> <i>Fair</i> <em>尚可，Darry Ring不采用此类钻石。</em>
											</b>
										</div>
									</div>
									<!--对称右边end-->
								</div>
								<!--切工对称end-->
								<!--抛光荧光-->
								<div class="color_jd fix">
									<!--抛光左边-->
									<div class="the_color fl">
										<span class="fl">抛光</span>
										<div class="the_pg fl">
											<b> <i>EX</i> <em>优，钻石抛光的光滑度达到完美标准。</em>
											</b> <b> <i>VG</i> <em>很好，钻石抛光的光滑度比较好。</em>
											</b> <b> <i>GD</i> <em>好，Darry Ring不采用此类钻石。</em>
											</b> <b> <i>Fair</i> <em>尚可，Darry Ring不采用此类钻石。</em>
											</b>
										</div>
									</div>
									<!--抛光左边end-->
									<!--荧光右边-->
									<div class="the_color fr">
										<span class="fl">荧光</span>
										<div class="the_yg fl">
											<b> <i>NON</i> <em>无荧光。在专业紫外线镜下检测无荧光。</em>
											</b> <b> <i>FNT</i> <em>弱荧光。在专业紫外线镜下检测可见弱荧光。</em>
											</b> <b> <i>MED</i> <em>中荧光。在专业紫外线镜下检测可见中荧光。</em>
											</b> <b> <i>STG</i> <em>强荧光。在专业紫外线镜下检测可见强荧光。</em>
											</b>
										</div>
									</div>
									<!--荧光右边end-->
								</div>
								<!--抛光荧光end-->
								<div class="fix">
									<!--立即搜索-->
									<div class="toserach sp_toserach fl">
										<div class="more_search fl" style="margin-right: 20px"
											onclick="isSpot=false;HighLevelSearch.dToSearch();">
											<span>搜索更多</span>
										</div>
										<div class="the_ljss fl"
											onclick="isSpot=true;HighLevelSearch.dToSearch();">
											<span>搜索现货</span>
										</div>
									</div>
									<!--立即搜索end-->
								</div>
							</div>
							<!--搜索框end-->

						</div>


						<!--搜索框end-->
						<!--搜索结果-->
						<div class="serach_bottom" style="display: none">
							<div class="result_top">
								<h4>搜索结果</h4>
							</div>
							<!--筛选-->
							<div class="thb_bottom">
								<div class="hot-ks thesearch fl">
									<span class="other_color"> <i><span class="ff"
											style="display: none">price</span>价格</i><em></em>
									</span> <span> <i><span class="ff" style="display: none">ct</span>钻重</i><em></em>
									</span> <span> <i><span class="ff" style="display: none">color</span>颜色</i><em></em>
									</span> <span> <i><span class="ff" style="display: none">clarity</span>净度</i><em></em>
									</span> <span> <i><span class="ff" style="display: none">cut</span>切工</i><em></em>
									</span>
								</div>
								<div>
									<div class="thesec_word fr" style="margin-left: 10px">
										<span> <i class="thered_color" id="i_curr">1</i>/<i
											id="i_tot">1</i>
										</span> <em class="no_paget" id="em_up"
											onclick="getPage(&#39;up&#39;)">上一页</em> <em
											onclick="getPage(&#39;down&#39;)" id="em_down">下一页</em>
									</div>
									<p id="lzCount" class="fr">
										<span>共找到裸钻</span><i></i><span>颗</span>
									</p>
								</div>
							</div>
							<!--筛选end-->
							<!--筛选列表-->
							<ul class="result" id="zsResult">

							</ul>
							<!--筛选列表end-->
							<!--分页-->

							<script src="js/paging.js" type="text/javascript"></script>
							<script type="text/javascript">
        var __CurrentPagingDiamond = new Paging("ctl00_content_ucdiamonsearch_zsPaging_pagingDiv");
    $(document.body).ready(function () {
        __CurrentPagingDiamond.Create(0, 1);
    });
</script>
							<!--分页-->
							<div id="ctl00_content_ucdiamonsearch_zsPaging_pagingDiv"
								class="paging_all">
								<div class="paging_all-cort">
									<ul class="paging fl">

										<li class="pli pag_gray">&lt;&lt;上一页</li>
										<li class="pag_gray">1</li>
										<li class="pli2 pag_gray">下一页&gt;&gt;</li>
									</ul>
									<p class="pag_p fl">
										<span>共0页，到第</span> <input
											name="ctl00$content$ucdiamonsearch$zsPaging$pag_txt"
											type="text"
											id="ctl00_content_ucdiamonsearch_zsPaging_pag_txt"
											class="pag_txt">页 <input type="button" value="确定"
											onclick="__CurrentPagingDiamond.PageIndexChaned($(&#39;#ctl00_content_ucdiamonsearch_zsPaging_pag_txt&#39;).val());$(&#39;#ctl00_content_ucdiamonsearch_zsPaging_pag_txt&#39;).val(&#39;&#39;);"
											class="pag_bt">
									</p>
								</div>
							</div>
							<!--分页end-->

							<!--分页end-->
						</div>
						<!--搜索结果end-->
					</div>
					<!--高级搜索end-->
				</div>

				<script type="text/javascript">
    $(function () {
        CommentLoadEvent = function (datacount) {
            $(".gdnav_ul #commentDataCount").text("(" + datacount + ")");
        };

    });
</script>
				<script>
    function addy(id) {
        $.post("/API/ProductAPI.ashx", { action: 'addy', id: id }, function (data) {
            $("#addy" + id).text('(' + data + ')是');

        });
        }
        function addn(id) {

            $.post("/API/ProductAPI.ashx", { action: 'addn', id: id }, function (data) {
                $("#addn" + id).text('(' + data + ')否');
        });
        }
</script>
				<!--小导航-->
				<div class="allthenav">
					<!--导航-->
					<div class="gd_nav">
						<ul class="gdnav_ul">
							<li class="gdnav_sp"><span>商品详情</span></li>
							<li><span>最新评论<em id="commentDataCount">(69)</em></span></li>
							<li><span>如何购买</span></li>
							<li><span>常见问答</span></li>
							<li><span>售后服务</span></li>
						</ul>
					</div>
					<!--导航end-->
					<!--导航下的线条-->
					<div class="gd_nav-line"></div>
					<!--导航下的线条end-->
				</div>
				<!--小导航end-->
				<!--导航下的所有-->
				<div class="sy_xx">
					<!--商品详情-->
					<div class="thing_wrap xqbuy_it cmain" id="wrap"
						style="display: block">
						<!--参数详情加图片-->
						<div class="xq_it cmain">
							<!--参数显示-->
							<div class="border_cs">

								<table cellpadding="0" cellspacing="0" border="0"
									class="border_cs-table">
									<tbody>
										<tr>
											<td class="border_cs-td1">款式信息</td>
											<td class="border_cs-td2"><span>产品编号：</span> <em>A03003</em>
											</td>
											<td class="border_cs-td3"><span>证书类型：</span> <em></em></td>
											<td class="border_cs-td5"><span>材 质：</span> <em>白18K金,PT950</em>
											</td>
											<td class="border_cs-td6">&nbsp;</td>
										</tr>
										<tr>
											<td class="border_cs-td1">钻石信息</td>
											<td class="border_cs-td2"><span>主钻重量：</span> <em
												id="em_zct">0.7克拉</em></td>
											<td class="border_cs-td4"><span>净 度：</span> <em>SI</em>
											</td>
											<td class="border_cs-td5"><span>颜 色：</span> <em>H</em></td>
											<td class="border_cs-td6"><span>切 工：</span> <em></em></td>
										</tr>

									</tbody>
								</table>





							</div>
							<!--参数显示end-->
							<!--产品详情图片-->
							<div class="allphoto">
								<p>
									<img alt="" height="221"
										src="images/darry_marry/2016030318152719953be006.jpg" width="980"><img
										alt="" src="images/darry_marry/20160303182019ac7c9c6030.jpg"><img
										alt="" height="989"
										src="images/darry_marry/20160303182031f46e94c3a8.jpg" width="980"><img
										alt="" height="773"
										src="images/darry_marry/201603031815336b24c9e743.jpg" width="980"><img
										alt="" height="359"
										src="images/darry_marry/201603031815403680933aac.jpg" width="980"><img
										alt="" height="671"
										src="images/darry_marry/2016030318154696400e2ded.jpg" width="980"><img
										alt="" height="769"
										src="images/darry_marry/201603031815518f17174331.jpg" width="980"><img
										alt="" height="580"
										src="images/darry_marry/20160303181557c509744d80.jpg" width="980"><img
										alt="" height="635"
										src="images/darry_marry/2016030318160450b249f607.jpg" width="980"><img
										alt="" height="675"
										src="images/darry_marry/20160303181610204256af98.jpg" width="980"><img
										alt="" height="729"
										src="images/darry_marry/201603031816154a84270f34.jpg" width="980"><img
										alt="" height="734"
										src="images/darry_marry/201603031816203b79ad5cdd.jpg" width="980"><img
										alt="" height="502"
										src="images/darry_marry/20160303181625cd6e4f0759.jpg" width="980"><img
										alt="" height="819"
										src="images/darry_marry/2016030318163166624c2651.jpg" width="980"><img
										alt="" src="images/darry_marry/20150902111714647077b9bf.jpg"><img
										alt="" height="225"
										src="images/darry_marry/201509021152591a91c7667f.jpg" width="980"><img
										alt="" height="187"
										src="images/darry_marry/201509021153155cb47d6703.jpg" width="980"><img
										alt="" height="204"
										src="images/darry_marry/201509021153261f43559636.jpg" width="980"><img
										alt="" height="314"
										src="images/darry_marry/2015090211533233ac3887fc.jpg" width="980"><img
										alt="" height="158"
										src="images/darry_marry/201509021153464c850cdb81.jpg" width="980"><img
										alt="" height="170"
										src="images/darry_marry/20150902115356a0f2371d41.jpg" width="980"><img
										alt="" height="245"
										src="images/darry_marry/20150902115406be1b55c291.jpg" width="980"><img
										alt="" height="134"
										src="images/darry_marry/201509021154169d2d97bed8.jpg" width="980"><img
										alt="" height="118"
										src="images/darry_marry/201509021154221bc32f2240.jpg" width="980"><img
										alt="" height="251"
										src="images/darry_marry/20150902115429b3ff1e4d67.jpg" width="980"><img
										alt="" height="256"
										src="images/darry_marry/20150902115437a886f3dcd9.jpg" width="980"><img
										alt="" height="171"
										src="images/darry_marry/20150902115443fcb642d81a.jpg" width="980"><img
										alt="" height="172"
										src="images/darry_marry/20150902115450cb7bef9b1d.jpg" width="980"><img
										alt="" height="203"
										src="images/darry_marry/20150902115501f0e42625c5.jpg" width="980"><img
										alt="" height="173"
										src="images/darry_marry/2015090211550613b5718578.jpg" width="980"><img
										alt="" height="179"
										src="images/darry_marry/20150902115512df2a5aa5b8.jpg" width="980"><img
										alt="" height="151"
										src="images/darry_marry/20150902115518b9a912a08b.jpg" width="980"><img
										alt="" height="197"
										src="images/darry_marry/20150902115526379c401c46.jpg" width="980"><img
										alt="" height="222"
										src="images/darry_marry/2015090211553406fb7f7db9.jpg" width="980"><img
										alt="" height="110"
										src="images/darry_marry/201509021155467768707193.jpg" width="980"><img
										alt="" height="218"
										src="images/darry_marry/2015090211555955f4920e0a.jpg" width="980"><img
										alt="" height="153"
										src="images/darry_marry/2015090211565195f29091b7.jpg" width="980"><img
										alt="" height="175"
										src="images/darry_marry/201509021157093e5e7561c1.jpg" width="980"><img
										alt="" height="133"
										src="images/darry_marry/201509021157173628c76a7d.jpg" width="980"><img
										alt="" height="154"
										src="images/darry_marry/2015090211572457d12c5691.jpg" width="980"><img
										alt="" src="images/darry_marry/201509021157330c933ac212.jpg"><img
										alt="" src="images/darry_marry/20150902115750f4d48687f3.jpg"><img
										alt="" height="181"
										src="images/darry_marry/20150902115802e4b9f53b68.jpg" width="980"><img
										alt="" height="136"
										src="images/darry_marry/20150902115809637278bccd.jpg" width="980"><img
										alt="" height="259"
										src="images/darry_marry/20150902115835829b757067.jpg" width="980"><img
										alt="" height="135"
										src="images/darry_marry/20150902115845f30561a5fe.jpg" width="980"><img
										alt="" height="117"
										src="images/darry_marry/20150902115853ecf1bee330.jpg" width="980"><img
										alt="" height="222"
										src="images/darry_marry/20150902115900862f5f58d8.jpg" width="980"><img
										alt="" height="144"
										src="images/darry_marry/20150902115908ee1f22c30e.jpg" width="980"><img
										alt="" height="17"
										src="images/darry_marry/20150902110923f8f726118a.jpg" width="980">
								</p>
							</div>
							<!--产品详情图片end-->
						</div>
						<!--参数详情加图片end-->
						<!--评论页开始-->
						<!--评论页结束-->
					</div>
					<!--商品详情end-->

					<!--最新评论-->
					<!--评论页-->
					<div class="xq_it xqbuy_it cmain" id="wrap">


						<script>
    var CommentLoadEvent = function () { };
    var CommentCurrentNum = 1;
    function CommentLoadData(currentPageNum) {
        $.get("/nAPI/Comment.aspx?pagenum=" + currentPageNum + "&stylecode=A03003", function (data) {
            $("#commentContent").empty();
            $("#commentContent").html(data);
            $("#countpl").text(CommentDataCount);
            $("#commentpnum").text(currentPageNum + "/" + CommentPageCount);
            CommentCurrentNum = currentPageNum;
            __CurrentPagingComment.ReCreate(CommentPageCount, currentPageNum);
            CommentLoadEvent(CommentDataCount);
        });
    }
    $(function () {
        __CurrentPagingComment.CustomChanged = function (num) {
            CommentLoadData(num);
        };
        setTimeout(function () {
            CommentLoadData(CommentCurrentNum);
        },300);
    });


    function CommentToNext() {
        if (CommentPageCount >= (CommentCurrentNum + 1)) {
            __CurrentPagingComment.Next();
        }
    }
</script>
						<!--评论页-->
						<div class="ask cmain">
							<!--别人的评论-->
							<div class="talk_it">
								<!--new评论标题-->
								<div class="talkit_top">
									<div class="talktop_left">最新评论</div>
								</div>
								<div id="commentContent">
									<!--每一条评论-->
									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="evertalk_right fl">
											<p>好看，挺漂亮的。下次换个大的</p>
											<p></p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论左边-->
										<div class="evertalk_left fr">
											<!--星星-->
											<p class="star"></p>
											<div class="name_date">
												<p>5**</p>
												<p>2016/05/29 10:54:32</p>
											</div>
										</div>
										<!--每一条评论左边end-->
									</div>
									<!--每一条评论end-->

									<!--每一条评论-->
									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="evertalk_right fl">
											<p>戴着特别吸引眼球 很喜欢 钻也很耀眼</p>
											<p></p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论左边-->
										<div class="evertalk_left fr">
											<!--星星-->
											<p class="star"></p>
											<div class="name_date">
												<p>G**</p>
												<p>2016/05/28 15:27:19</p>
											</div>
										</div>
										<!--每一条评论左边end-->
									</div>
									<!--每一条评论end-->

									<!--每一条评论-->
									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="evertalk_right fl">
											<p>老婆很喜欢</p>
											<p></p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论左边-->
										<div class="evertalk_left fr">
											<!--星星-->
											<p class="star"></p>
											<div class="name_date">
												<p>大**</p>
												<p>2016/05/18 20:00:43</p>
											</div>
										</div>
										<!--每一条评论左边end-->
									</div>
									<!--每一条评论end-->

									<!--每一条评论-->
									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="evertalk_right fl">
											<p>喜欢 喜欢 喜欢</p>
											<p></p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论左边-->
										<div class="evertalk_left fr">
											<!--星星-->
											<p class="star"></p>
											<div class="name_date">
												<p>6**</p>
												<p>2016/05/17 21:54:39</p>
											</div>
										</div>
										<!--每一条评论左边end-->
									</div>
									<!--每一条评论end-->

									<!--每一条评论-->
									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="evertalk_right fl">
											<p>品牌的寓意不错！我家丫头手小小的，戴着看起来很霸气，很奢华。给我家小丫头戴上的那刻，她就说这才是：一生一世一双人，我们还有一只猫。领证那会儿，我抱着我家猫和丫头求婚了。如今，丫头带着戒指，抱着猫，我们一家子这就凑齐了，圆满……</p>
											<p></p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论左边-->
										<div class="evertalk_left fr">
											<!--星星-->
											<p class="star"></p>
											<div class="name_date">
												<p>猫**</p>
												<p>2016/04/20 14:51:35</p>
											</div>
										</div>
										<!--每一条评论左边end-->
									</div>
									<!--每一条评论end-->

									<!--每一条评论-->
									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="evertalk_right fl">
											<p>很喜欢</p>
											<p></p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论左边-->
										<div class="evertalk_left fr">
											<!--星星-->
											<p class="star"></p>
											<div class="name_date">
												<p>h**</p>
												<p>2016/04/19 10:17:41</p>
											</div>
										</div>
										<!--每一条评论左边end-->
									</div>
									<!--每一条评论end-->

									<!--每一条评论-->
									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="evertalk_right fl">
											<p>东西收到了，非常漂亮，做工也很精细，希望给老婆一个惊喜~</p>
											<p></p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论左边-->
										<div class="evertalk_left fr">
											<!--星星-->
											<p class="star"></p>
											<div class="name_date">
												<p>0**</p>
												<p>2016/04/19 08:40:00</p>
											</div>
										</div>
										<!--每一条评论左边end-->
									</div>
									<!--每一条评论end-->

									<!--每一条评论-->
									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="evertalk_right fl">
											<p>东西收到了，非常漂亮，做工也很精细，希望给老婆一个惊喜~</p>
											<p></p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论左边-->
										<div class="evertalk_left fr">
											<!--星星-->
											<p class="star"></p>
											<div class="name_date">
												<p>0**</p>
												<p>2016/04/19 08:40:00</p>
											</div>
										</div>
										<!--每一条评论左边end-->
									</div>
									<!--每一条评论end-->
								</div>
								<!--new评论标题end-->
								<!--评论数目-->
								<div class="talkit_top">
									<div class="bt2 fl">
										<a href="http://www.darryring.com/member/myevaluate.html"
											target="_blank">我要评论</a>
									</div>
									<div class="talktop_left fr">
										<span>共<i id="countpl">69</i>条评论
										</span> <em>|</em> <span id="commentpnum">1/9</span> <span
											class="next_page" onclick="CommentToNext();">下一页</span>
									</div>
								</div>
								<!--评论数目end-->
							</div>
							<!--别人的评论end-->
							<!--分页-->

							<script src="js/paging.js" type="text/javascript"></script>
							<script type="text/javascript">
        var __CurrentPagingComment = new Paging("ctl00_content_ucrelatedinfo_uccommnet_ucpaging_pagingDiv");
    $(document.body).ready(function () {
        __CurrentPagingComment.Create(0, 1);
    });
</script>
							<!--分页-->
							<div
								id="ctl00_content_ucrelatedinfo_uccommnet_ucpaging_pagingDiv"
								class="paging_all">
								<div class="paging_all-cort">
									<ul class="paging fl">

										<li class="pli pag_gray">&lt;&lt;上一页</li>
										<li class="pag_gray">1</li>
										<li>2</li>
										<li>3</li>
										<li>4</li>
										<li>5</li>
										<li class="pli2">下一页&gt;&gt;</li>
									</ul>
									<p class="pag_p fl">
										<span>共9页，到第</span> <input
											name="ctl00$content$ucrelatedinfo$uccommnet$ucpaging$pag_txt"
											type="text"
											id="ctl00_content_ucrelatedinfo_uccommnet_ucpaging_pag_txt"
											class="pag_txt">页 <input type="button" value="确定"
											onclick="__CurrentPagingComment.PageIndexChaned($(&#39;#ctl00_content_ucrelatedinfo_uccommnet_ucpaging_pag_txt&#39;).val());$(&#39;#ctl00_content_ucrelatedinfo_uccommnet_ucpaging_pag_txt&#39;).val(&#39;&#39;);"
											class="pag_bt">
									</p>
								</div>
							</div>
							<!--分页end-->

							<!--分页end-->
						</div>
						<!--评论页end-->

					</div>
					<!--评论页end-->
					<!--最新评论end-->

					<!--如何购买-->
					<div class="xq_it xqbuy_it cmain" id="wrap">
						<p>
							<img alt="" height="876"
								src="images/darry_marry/20160719150519bee984c77b.jpg" width="980">
						</p>

					</div>
					<!--如何购买end-->

					<!--常见问答-->
					<div class="xq_it xqbuy_it cmain" id="wrap">

						<script>
    var ComLoadEvent = function () { };
    var ComCurrentNum = 1;
    function ComLoadData(currentPageNum) {
        $.get("/nAPI/ComQuestion.aspx?lanid=0&pagenum=" + currentPageNum, function (data) {
            $("#questionContent").empty();
            $("#questionContent").html(data);
            $(".count").text(ComDataCount);
            $("#compnum").text(currentPageNum + "/" + ComPageCount);
            ComCurrentNum = currentPageNum;
            __Question.ReCreate(ComPageCount, currentPageNum);
            ComLoadEvent(ComPageCount);
        });
    }
    $(document.body).ready(function () {
        __Question.CustomChanged = function (num) {
            ComLoadData(num);
        };
        ComLoadData(ComCurrentNum); 
    });
    function ComToNext() {
        if (ComPageCount >= (ComCurrentNum + 1)) {
            __Question.Next();
        }
    }
</script>
						<div class="xq_it cmain">
							<div class="talk_it">
								<!--new提问标题-->
								<div class="talkit_top">
									<div class="talktop_left">常见问答</div>
								</div>

								<div id="questionContent">

									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="question_left fl">
											<p>
												<i></i> <span> <span style="margin-top: 8px;">Q：素金首饰如何保养？
												</span>
												</span>
											</p>
											<p class="answer">
												<i></i> <span>
													A：1、为防止首饰变形、氧化，应避免接触化学物品如漂白水、洗洁精等，亦需避免于处理家务时佩戴K金/pt950首饰</span>
											</p>
											<p class="answer">
												<span>2、应避免把K金/pt950首饰与其他首饰放置一起，尤其是钻石首饰，因其硬度会引致互相摩擦而刮花，建议摘取后存放至我们特别订制的首饰盒内。</span>
											</p>
											<p class="answer">
												<span>3、K金/pt950是最耐磨的金属，若出现刮花或损坏时，只要把首饰联系我们客服打磨、翻新，首饰便能恢复昔日光彩，有划痕应尽快处理修补，首饰不使用时要放置我们特别定制的首饰盒内单独存放。</span>
											</p>
											<p class="answer">
												<span>4、建议每半年把首饰送至清洗，即可使其保持闪亮光芒</span>
											</p>
											<p class="answer">
												<span>5、清洗时，可以用稀释的皂液清洗K金/pt950首饰，再以软布吸干水分，可用非研磨性的布块清除表面指纹及污迹，如抹银布、眼镜布等。</span>
											</p>

											<p></p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论右边-->
										<div class="question_right fr">
											<p>
												该问答是否对您有帮助？<span id="addy39" onclick="addy(39)">(89)是</span>
												<span id="addn39" onclick="addn(39)">(29)否</span>
											</p>
										</div>
										<!--每一条评论右边end-->
									</div>





									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="question_left fl">
											<p>
												<i></i> <span> <span style="margin-top: 8px;">Q：镶嵌（钻石）首饰如何保养？</span>
												</span>
											</p>
											<p class="answer">
												<i></i> <span>
													A：1、佩戴首饰时不可接触如香水、化妆品、护肤品等化学物质，容易使宝石以及金属表面失去光泽；</span>
											</p>
											<p class="answer">
												<span>2、虽然钻石首饰金属部分耐磨损，但是容易刮花，而钻石脆性很高，不可与硬物碰撞摔击，为防止破碎，家务时建议摘取后存放至我们特别订制的首饰盒内。</span>
											</p>
											<p class="answer">
												<span>3、皮肤分泌的油脂跟汗液在长期佩戴后可能会使首饰变脏，甚至可能出现氧化的现象，所以不建议洗漱睡觉时佩戴；</span>
											</p>
											<p class="answer">
												<span>4、居家环境下，建议将饰品摘取后分开存放于首饰盒内，便于保养，防止相互磨损，形成划痕，；
													（注：我们的首饰盒都是采取特别订制的，内里的材质采用具有环保效果的超纤皮，有着极其优异的耐寒、透气、耐磨、耐老化性能，首饰置于盒内，可以达到防氧化、防磨损、防撞击的保养效果）。</span>
											</p>
											<p class="answer">
												<span>5、清洁钻石只需要经过稀释过的中性洗液浸泡，用软毛刷清洁，一定要用清水洗净，并用软布抹干后再放入首饰盒。勿用强烈皂液、腐蚀性极强的含氯漂白水或热水清洗，否则钻石会失去光泽。更不易用硬毛刷清洁，以免刮花宝石。</span>
											</p>
											<p class="answer">
												<span>6、为了更好的保养您的首饰，以维持钻石原有的光芒，建议您每隔半年联系我们的售后服务人员为您购买的首饰清洗保养以及检查钻石是否在佩戴过程中出现松动迹象，darry
													ring更会提供免费的检查及清洁服务。</span>
											</p>

											<p></p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论右边-->
										<div class="question_right fr">
											<p>
												该问答是否对您有帮助？<span id="addy38" onclick="addy(38)">(28)是</span>
												<span id="addn38" onclick="addn(38)">(9)否</span>
											</p>
										</div>
										<!--每一条评论右边end-->
									</div>





									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="question_left fl">
											<p>
												<i></i> <span> </span>
											</p>
											<p>
												<span style="margin-top: 8px;">Q：哪些电商平台可以购买到DR正品？</span>
											</p>

											<p></p>
											<p class="answer">
												<i></i> <span> </span>
											</p>
											<p>
												<span style="margin-top: 8px;">A：戴瑞珠宝目前开通的电商平台有：</span>天猫<span
													style="margin-top: 8px;">、</span>京东等电商平台
											</p>
											<p>&nbsp;</p>
											<p>&nbsp;</p>
											<p>
												<span style="margin-top: 8px;"><a
													href="http://darryring.tmall.com/?spm=a220o.1000855.1997427721.d4918089.bGtU16"><img
														alt="" height="60"
														src="images/darry_marry/20150708134939afa264ac2f.jpg" width="163"></a>&nbsp;<a
													href="http://darryring.jd.com/"><img alt="" height="60"
														src="images/darry_marry/201507081351233b24523301.jpg" width="151"></a>&nbsp;&nbsp;</span>
											</p>

											<p></p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论右边-->
										<div class="question_right fr">
											<p>
												该问答是否对您有帮助？<span id="addy37" onclick="addy(37)">(49)是</span>
												<span id="addn37" onclick="addn(37)">(146)否</span>
											</p>
										</div>
										<!--每一条评论右边end-->
									</div>





									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="question_left fl">
											<p>
												<i></i> <span> </span>
											</p>
											<p>
												<span style="margin-top: 8px;">Q：网上购买，如果手寸不合适或者想要修改刻字怎么办啊？</span>
											</p>

											<p></p>
											<p class="answer">
												<i></i> <span> </span>
											</p>
											<p>
												<span style="margin-top: 1px;">A：小戴非常理解您的顾虑，请您放心。DR支持常规手寸范围内终身免工费修改手寸或刻字的呢。
													注：女士常规手寸范围（8-15），男士常规手寸范围（15-22）；刻字范围（5个汉字/10个英文字母）</span>
											</p>

											<p></p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论右边-->
										<div class="question_right fr">
											<p>
												该问答是否对您有帮助？<span id="addy36" onclick="addy(36)">(32)是</span>
												<span id="addn36" onclick="addn(36)">(30)否</span>
											</p>
										</div>
										<!--每一条评论右边end-->
									</div>





									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="question_left fl">
											<p>
												<i></i> <span> <span style="margin-top: 8px;">Q：只能购买一次，如果以后款式不喜欢了怎么办？</span></span>
											</p>
											<p class="answer">
												<i></i> <span> <span style="margin-top: 1px;">A：请您放心，DR支持每年一次免工费更换款式/钻石升级服务的呢。您届时联系官网客服协助您进行换款申请即可哦。</span>
												</span>
											</p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论右边-->
										<div class="question_right fr">
											<p>
												该问答是否对您有帮助？<span id="addy35" onclick="addy(35)">(66)是</span>
												<span id="addn35" onclick="addn(35)">(24)否</span>
											</p>
										</div>
										<!--每一条评论右边end-->
									</div>





									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="question_left fl">
											<p>
												<i></i> <span> <span style="margin-top: 8px;">Q：购买了Darry
														Ring的戒指不满意可以退货吗？</span></span>
											</p>
											<p class="answer">
												<i></i> <span> <span style="margin-top: 1px;">A：您好，DR支持您收到货品后15天内无理由退换货的哦。你收到商品如果不是十分满意，可以联系客服选择更换款式或是退货处理的。但因DR都是定制商品，如非质量原因申请退货，则需要扣除一定的定制费用。
														注：扣费标准请参考http://www.darryring.com/help_se/84.html</span></span>
											</p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论右边-->
										<div class="question_right fr">
											<p>
												该问答是否对您有帮助？<span id="addy34" onclick="addy(34)">(49)是</span>
												<span id="addn34" onclick="addn(34)">(20)否</span>
											</p>
										</div>
										<!--每一条评论右边end-->
									</div>





									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="question_left fl">
											<p>
												<i></i> <span> <span style="margin-top: 8px;">Q：Darry
														Ring戒指内可以刻字吗？</span>
												</span>
											</p>
											<p class="answer">
												<i></i> <span> <span style="margin-top: 1px;">A：您好，DR戒指类产品均支持免费刻字服务（刻字范围：5个汉字/10个英文字母）</span>
												</span>
											</p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论右边-->
										<div class="question_right fr">
											<p>
												该问答是否对您有帮助？<span id="addy33" onclick="addy(33)">(142)是</span>
												<span id="addn33" onclick="addn(33)">(14)否</span>
											</p>
										</div>
										<!--每一条评论右边end-->
									</div>





									<div class="every_talk">
										<!--每一条评论左边-->
										<div class="question_left fl">
											<p>
												<i></i> <span> <span style="margin-top: 8px;">Q：收到后如果级别跟我选的不一样怎么处理？</span></span>
											</p>
											<p class="answer">
												<i></i> <span> <span style="margin-top: 1px;">A：您好，定制中心都是按照您挑选的钻石级别来帮您定制，复检的结果如果出现不符，那么您是可以无条件退回给我们，并由我们来承担复检的费用，以及邮寄的费用。</span></span>
											</p>
										</div>
										<!--每一条评论左边end-->
										<!--每一条评论右边-->
										<div class="question_right fr">
											<p>
												该问答是否对您有帮助？<span id="addy31" onclick="addy(31)">(595)是</span>
												<span id="addn31" onclick="addn(31)">(405)否</span>
											</p>
										</div>
										<!--每一条评论右边end-->
									</div>



								</div>

								<!--new评论标题end-->
								<!--评论数目-->
								<div class="talkit_top">

									<div class="talktop_left fr">
										<span>共<i class="count">38</i>条问答
										</span> <em>|</em> <span id="compnum">1/5</span><span
											class="next_page" onclick="ComToNext();">下一页</span>
									</div>
								</div>
								<!--评论数目end-->
								<!--联系客服-->
								<div class="talkit_bottom">
									<div class="talkit_top-lx fr">
										<span class="fl">更多疑问咨询请联系我们，欢迎留下您宝贵的意见。</span>
										<div class="bt2" onclick="">
											<span>联系客服</span>
										</div>
									</div>
								</div>
								<!--联系客服end-->
							</div>
							<!--分页-->

							<script src="images/darry_marry/paging.js" type="text/javascript"></script>
							<script type="text/javascript">
        var __Question = new Paging("ctl00_content_ucrelatedinfo_ucq_ucpaging_pagingDiv");
    $(document.body).ready(function () {
        __Question.Create(0, 1);
    });
</script>
							<!--分页-->
							<div id="ctl00_content_ucrelatedinfo_ucq_ucpaging_pagingDiv"
								class="paging_all">
								<div class="paging_all-cort">
									<ul class="paging fl">

										<li class="pli pag_gray">&lt;&lt;上一页</li>
										<li class="pag_gray">1</li>
										<li>2</li>
										<li>3</li>
										<li>4</li>
										<li>5</li>
										<li class="pli2">下一页&gt;&gt;</li>
									</ul>
									<p class="pag_p fl">
										<span>共5页，到第</span> <input
											name="ctl00$content$ucrelatedinfo$ucq$ucpaging$pag_txt"
											type="text"
											id="ctl00_content_ucrelatedinfo_ucq_ucpaging_pag_txt"
											class="pag_txt">页 <input type="button" value="确定"
											onclick="__Question.PageIndexChaned($(&#39;#ctl00_content_ucrelatedinfo_ucq_ucpaging_pag_txt&#39;).val());$(&#39;#ctl00_content_ucrelatedinfo_ucq_ucpaging_pag_txt&#39;).val(&#39;&#39;);"
											class="pag_bt">
									</p>
								</div>
							</div>
							<!--分页end-->

							<!--分页end-->
						</div>


					</div>
					<!--常见问答end-->
					<!--售后服务-->
					<div class="xq_it xqbuy_it cmain" id="wrap">
						<p>
							<img alt="" height="669"
								src="images/darry_marry/201607191807091f2adfd8c7.jpg" width="980">
						</p>

					</div>
					<!--售后服务end-->
				</div>
				<!--导航下的所有end-->
				<!--预约其他功能-->

				<div class="other_do cmain" style="">
					<div class="ot_all">

						<div class="ot_left fl">
							<img src="images/darry_marry/erwei.png" alt="Darry Ring 微信号" width="196"
								height="150">
							<p>加入微信 了解品牌动态</p>
						</div>
						<div class="ot_left fl otherot_p">
							<div class="thephone"></div>
							<h3>400-01-13520</h3>
							<p>欢迎致电Darry Ring服务热线</p>
							<p>珠宝顾问为您解答任何关于购买疑问</p>
							<p>或钻石知识。</p>
							<p>
								<a style="cursor: pointer" onclick="" class="droline_showkf"
									target="_blank"> 联系在线客服</a>
							</p>
						</div>
						<div class="ot_left no-border fl">
							<div class="thetaxi"></div>
							<h3>预约到实体店</h3>
							<select
								name="ctl00$content$ucrelatedinfo$ucappointment$drpListShop"
								id="ctl00_content_ucrelatedinfo_ucappointment_drpListShop">
								<option value="-1">请选择预约实体店</option>
								<option value="1">深圳实体店</option>
								<option value="2">北京实体店</option>
								<option value="3">广州实体店</option>
								<option value="4">重庆WFC实体店</option>
								<option value="7">上海红坊店</option>
								<option value="9">武汉实体店</option>
								<option value="10">南京实体店</option>
								<option value="11">长沙实体店</option>
								<option value="12">天津实体店</option>
								<option value="13">昆明实体店</option>
								<option value="14">苏州实体店</option>
								<option value="15">大连实体店</option>
								<option value="16">无锡实体店</option>
								<option value="17">成都实体店</option>
								<option value="18">宁波实体店</option>
								<option value="19">郑州实体店</option>
								<option value="20">杭州实体店</option>
								<option value="21">沈阳市府恒隆店</option>
								<option value="22">西安实体店</option>
								<option value="23">青岛实体店</option>
								<option value="24">济南实体店</option>
								<option value="25">哈尔滨实体店</option>
								<option value="26">福州实体店</option>
								<option value="27">太原实体店</option>
								<option value="28">南宁实体店</option>
								<option value="29">合肥实体店</option>
								<option value="30">石家庄实体店</option>
								<option value="31">厦门实体店</option>
								<option value="32">香港实体店</option>
								<option value="33">沈阳中街恒隆店</option>
								<option value="34">温州实体店</option>
								<option value="35">重庆观音桥实体店</option>
								<option value="36">上海香港广场店</option>
								<option value="37">长春活力城实体店</option>
								<option value="368">南通圆融广场实体店</option>
								<option value="371">常州吾悦广场实体店</option>
								<option value="374">南京金茂汇店</option>
								<option value="377">大连恒隆广场店</option>
								<option value="380">海口-东方广场店</option>
								<option value="383">唐山-银泰城店</option>
								<option value="386">成都-仁恒置地店</option>
								<option value="389">北京-银泰in88店</option>
								<option value="392">贵阳-汇金星力城店</option>
								<option value="395">银川-CC MALL店</option>

							</select>
							<div class="all_txt">
								<input type="text" class="name_txt" id="txtName" value="X先生/女士">
								<input type="text" class="phone_txt" id="txtTel" value="手机号码">
							</div>
							<div class="bt1" id="btnyd">
								<span>确认预约</span>
							</div>
						</div>
					</div>
				</div>
				<script>
    $("#btnyd").click(function () {
        var slect = $("#ctl00_content_ucrelatedinfo_ucappointment_drpListShop option:checked").val();
        var name = $("#txtName").val();
        var tel = $("#txtTel").val();

        if (slect=="-1") {
            alert("请选择预约门店");
            return false;
        }
        if (name == "") {
            alert("请输入姓名！");
            return false;
        }
        if (!checkTel(tel)) {
            alert("请输入正确的手机号！");
            $("#txtTel").val("");
            return false;
        }

        sendMessage(slect, tel);
        
        

    });
    function sendMessage(action, tel) {
        //店铺预约统计
        ag_dianpuyuyue();
        $.get("/API/SendMessageAPI.ashx", { action: action, tel: tel }, function (data) {
            if (contains(data, "ok", true)) {
                alert("店铺地址发送成功！");
                $("#txtTel").val("");
                $("#txtName").val("");
            }
        });
    }
    function contains(string, substr, isIgnoreCase) {
        if (isIgnoreCase) {
            string = string.toLowerCase();
            substr = substr.toLowerCase();
        }
        var startChar = substr.substring(0, 1);
        var strLen = substr.length;
        for (var j = 0; j < string.length - strLen + 1; j++) {
            if (string.charAt(j) == startChar)//如果匹配起始字符,开始查找
            {
                if (string.substring(j, j + strLen) == substr)//如果从j开始的字符与str匹配，那ok
                {
                    return true;
                }
            }
        }
        return false;
    }
    //
    function checkTel(tel) {
        var mobile = /^1[3-8]+\d{9}$/;
        return mobile.test(tel);
    }

 
</script>

				<!--预约其他功能end-->


				<!--浏览过的产品-->

				<div class="kgd_cp cmain">
					<div class="read_it">
						<p class="read_jl">您的浏览记录</p>
						<ul class="read_ul" id="u_history" style="width: 1650px;">

							<li>
								<div class="read_top">
									<a rel="nofollow"
										href="http://www.darryring.com/dr_phonics/P09018/none.html"
										target="_blank"> <img alt="Darry Ring系列 真爱印记"
										src="images/darry_marry/201607110923578531d5eea0.jpg">
									</a>
								</div>
								<p>
									<a href="http://www.darryring.com/dr_phonics/P09018/none.html"
										target="_blank"> Darry Ring系列 真爱印记 </a>
								</p>
								<p>
									<span>¥9098</span>
								</p>
							</li>

						</ul>
						<ul class="read_ul" id="u_rx"
							style="display: none; width: 1650px;">

							<li>
								<div class="read_top">
									<a rel="nofollow"
										href="http://www.darryring.com/darry_ring/78.html"
										target="_blank"> <img alt="FOREVER 系列 经典款"
										src="images/darry_marry/201409031259093e45b5ecf0.jpg">
									</a>
								</div>
								<p>
									<a href="http://www.darryring.com/darry_ring/78.html"
										target="_blank"> FOREVER 系列 经典款 </a>
								</p>
								<p>
									<span>¥23999</span>
								</p>
							</li>

							<li>
								<div class="read_top">
									<a rel="nofollow"
										href="http://www.darryring.com/darry_ring/87.html"
										target="_blank"> <img alt="FOREVER 系列 经典款"
										src="images/darry_marry/201409031259093e45b5ecf0.jpg">
									</a>
								</div>
								<p>
									<a href="http://www.darryring.com/darry_ring/87.html"
										target="_blank"> FOREVER 系列 经典款 </a>
								</p>
								<p>
									<span>¥16499</span>
								</p>
							</li>

							<li>
								<div class="read_top">
									<a rel="nofollow"
										href="http://www.darryring.com/darry_ring/128.html"
										target="_blank"> <img alt="FOREVER 系列 经典款"
										src="images/darry_marry/201409031259093e45b5ecf0.jpg">
									</a>
								</div>
								<p>
									<a href="http://www.darryring.com/darry_ring/128.html"
										target="_blank"> FOREVER 系列 经典款 </a>
								</p>
								<p>
									<span>¥16999</span>
								</p>
							</li>

							<li>
								<div class="read_top">
									<a rel="nofollow"
										href="http://www.darryring.com/darry_ring/129.html"
										target="_blank"> <img alt="FOREVER 系列 经典款"
										src="images/darry_marry/201409031259093e45b5ecf0.jpg">
									</a>
								</div>
								<p>
									<a href="http://www.darryring.com/darry_ring/129.html"
										target="_blank"> FOREVER 系列 经典款 </a>
								</p>
								<p>
									<span>¥9999</span>
								</p>
							</li>

							<li>
								<div class="read_top">
									<a rel="nofollow"
										href="http://www.darryring.com/darry_ring/137.html"
										target="_blank"> <img alt="FOREVER 系列 经典款"
										src="images/darry_marry/201409031259093e45b5ecf0.jpg">
									</a>
								</div>
								<p>
									<a href="http://www.darryring.com/darry_ring/137.html"
										target="_blank"> FOREVER 系列 经典款 </a>
								</p>
								<p>
									<span>¥35199</span>
								</p>
							</li>

						</ul>
					</div>
					<!--向左-->
					<div class="read_pre" style="display: block"></div>
					<div class="read_next" style="display: block"></div>
				</div>

				<!--浏览过的产品end-->
				<!--验证身份-->

				<script type="text/javascript" src="js/click_hide.js"></script>
				<script type="text/javascript" src="js/index_clear.js"></script>

				<!--验证身份框-->
				<div class="yz_password">
					<div class="yzp_border">
						<div class="yzpb_top"></div>
						<!--验证-->
						<div class="yzpb_cort toyz_begin">
							<h3>真爱验证</h3>
							<h4>Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
							<div class="yz_tittle">
								<p>
									<i></i><span>请您输入身份证号进行购买权限验证</span> <i></i>
								</p>
							</div>
							<div class="yz_begin">
								<p>
									<input type="text" class="bzy_3 sirname" id="textName"
										name="textName" value="先生姓名"> <select class="secl"
										id="textNat">
										<option value="-1">国家/地区</option>
										<option value="0">中国大陆</option>
										<option value="1">中国香港</option>
										<option value="2">中国澳门</option>
										<option value="3">中国台湾</option>
										<option value="4">海外地区</option>
										<option value="5">其他</option>
									</select>
								</p>
								<p>
									<input type="text" id="textIDCard" name="textIDCard"
										class="bzy_4 password" value="身份证号码">
								</p>
								<div class="ts_wrong" style="display: none">
									<span id="wrong">报错信息提示样式，请重新输入。</span>
								</div>
								<div class="ts_button">
									<div class="bt2" id="btnsub">
										<span>开始验证</span>
									</div>
								</div>
							</div>
						</div>
						<!--验证end-->
						<!--未购买过-->
						<div class="yzpb_cort toyz_nobuy wgm" style="display: none">
							<h3>真爱验证</h3>
							<h4>Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
							<p>
								<span id="ng"></span>先生 您好！
							</p>
							<p>您的身份证号码尚未有购买记录，欢迎购买Darry Ring求婚钻戒。</p>
							<p>祝您购物愉快 ！</p>
							<div class="ts_button">
								<div class="bt2" id="btnBuy">
									<span>立即购买</span>
								</div>
							</div>
						</div>
						<!--未购买过end-->
						<!--购买过-->
						<div class="yzpb_cort toyz_buyit gmg ygmg" style="display: none">
							<h3>真爱验证</h3>
							<h4>Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
							<p>
								<span id="cg"></span>先生 您好！
							</p>
							<p>您已购买Darry Ring产品，无法再次购买Darry Ring求婚钻戒</p>
							<p>现即可购买其它产品。祝您购物愉快 ！</p>
							<div class="other_buy">
								<div class="bt2">
									<a href="http://www.darryring.com/dr_phonics" target="_blank">了解结婚对戒</a>
								</div>
								<div class="bt2">
									<a href="http://www.darryring.com/jewelry" target="_blank">了解饰品</a>
								</div>
							</div>
						</div>
						<!--购买过end-->
						<!--未登陆-->
						<div class="yzpb_cort toyz_buyit wdl" style="display: none">
							<h3>真爱验证</h3>
							<h4>Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
							<p>Darry Ring 求婚钻戒，男士一生只能定制一枚</p>
							<p>
								您尚未登录，无法购买请<a href="javascript:backLogin();">登录</a>/<a
									href="javascript:backSign();">注册</a>
							</p>
						</div>
						<!--未登陆 end-->
						<!--购物车存在Darry钻戒-->
						<div class="yzpb_cort toyz_buyit carthave" style="display: none">
							<h3>真爱验证</h3>
							<h4>Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
							<p>
								<span id="memberName"></span>先生 您好！
							</p>
							<p>在您的购物车中已存在Darry Ring钻戒，无法重复购买。</p>
							<p>
								点击<a href="http://www.darryring.com/cart/cart.html">这里</a>进入购物车。祝您购物愉快
								！
							</p>
						</div>
						<!--购物车存在Darry钻戒-->
						<!--购物车存在Darry钻戒-->
						<div class="yzpb_cort toyz_buyit addcart" style="display: none">
							<h3>真爱验证</h3>
							<h4>Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
							<p>
								<span id="addcar"></span>先生 您好！
							</p>
							<p>Darry Ring 钻戒 已加入购物车。</p>
							<p>
								点击<a href="http://www.darryring.com/cart/cart.html">这里</a>进入购物车。祝您购物愉快
								！
							</p>
						</div>
						<!--购物车存在Darry钻戒-->
						<div class="yzpb_bottom"></div>
					</div>
					<!--close-->
					<div class="yz_close"></div>
					<!--close end-->
				</div>

				<!--登录注册弹窗-->
				<div class="dr_sametc dr_Registsign">
					<!--关闭按钮-->
					<a href="javascript:;" class="Popup_close"></a>
					<!--关闭按钮end-->
					<iframe id="papLogin" name="papLogin" class="papLogin"
						src="images/darry_marry/other.html" width="" height=""></iframe>
				</div>
				<!--登录注册弹窗end-->

				<!--验证身份框end-->
				<script type="text/javascript">
    function strlength(str) { num = str.length; var arr = str.match(/[^\x00-\x80]/ig); if (arr != null) num += arr.length; return num; }
    String.prototype.replaceAll = function (s1, s2) {
        return this.replace(new RegExp(s1, "gm"), s2);
    }

    function backLogin() {
        var currentUrl = window.location.href;
        
        window.location.href = "http://passport.darryring.com/login?&forward=" + currentUrl;
        
    }
    
    function backSign() {
        var currentUrl = window.location.href;
        
        window.location.href = "http://passport.darryring.com/sign?&forward=" + currentUrl;
        
    }

    $(function () {
        $("#textName").focus(function () {
            $(".ts_wrong").hide();
        });
        $("#textIDCard").focus(function () {
            $(".ts_wrong").hide();
        });
    });    

    var loginRefresh = function () {
        window.loginInterval = setInterval(function () {
            $.get('http://www.darryring.com/api/login_status.ashx', function (res) {
                var p = $.parseJSON(res);
                if (p.result >= 0) {
                    $('.dr_Registsign,.dr_blackwall').hide();
                    clearInterval(window.loginInterval);
                    location.replace(location.href);
                }
            });
        }, 1000);
    };

    $('.yz_close').click(function () {
        $("#textName").val("先生姓名");
        $("#textIDCard").val("身份证号码");
        $(".wrong").hide();
        $(".wdl").hide();
        $(".carthave").hide();
        $('.yz_password').hide();
        $(".toyz_nobuy").hide();
        $('.backall').hide();
        $(".ygmg").hide();
    });

    /*验证弹窗*/
    $('#newBuy').click(function () {
        if ($("#ctl00_content_ddlHandSize").val() == -1) {
            alert("请选择手寸。");
                return;
            }
            if ($(".thr_first .iborder").text() == null || $(".thr_first .iborder").text() == "") {
                alert("请选择材质");
                return;
            }
            var fontlen = strlength($("#ipt_font").val());
            if (fontlen > 10) {
                alert("刻字数超过了10个字符。");
            }
            //判断是否登录
            if ('True' == 'True') {
                //判断在购物车中是否存在
                $.get("/API/DarryringYzAPI.ashx", { action: 'cart' }, function (data) {
                    if (data == "false") {
                        //购物中不存在
                        $.get("/API/DarryringYzAPI.ashx", { action: 'darryhome' }, function (dat) {
                            //未购买过
                            var json = $.parseJSON(dat);
                            if (dat == "false") {
                                $('.yz_password').show();
                                $(".toyz_begin").show();
                                $('.backall').show();
                                $(".gmg").hide();
                            }
                            else {
                                //购买过
                                $("#cg").text(json.Name);
                                $(".ygmg").show();
                                $('.yz_password').show();
                                $(".toyz_begin").hide();
                                $('.backall').show();
                                //addCartFun();
                                //cartsynccrm(); // 数据上报CRM
                            }
                        });
                    } else {
                        //购物车中存在
                        $(".addcart").hide();
                        $('.yz_password').show();
                        $(".toyz_begin").hide();
                        $('.backall').show();
                        $(".carthave").show();
                    }
                });
            }
            else {
                //用户未登录
                
                
                $('.dr_Registsign,.dr_blackwall').show();
                loginRefresh();
                

            }
        });

        //弹窗的一个立即购买
        $("#btnBuy").click(function () {
            var name = $("#textName").val();
            var id = $("#textIDCard").val();
            sirname = $("#textName").val();
            sircode = $("#textIDCard").val();
            var nat = $("#textNat option:selected").text();
            $.post("/API/DarryringYzAPI.ashx", { action: 'session', name: name, id: id, nat: nat });
            toBuy();
            $(".yz_password").hide();
            $(".wgm").hide();
        });

        $("#newCart").click(function () {
            if ($("#ctl00_content_ddlHandSize").val() == -1) {
                alert("请选择手寸。");
                return;
            }
            if ($(".thr_first .iborder").text() == null || $(".thr_first .iborder").text() == "") {
                alert("请选择材质");
                return;
            }
            //判断是否登录
            var fontlen = strlength($("#ipt_font").val());
            if (fontlen > 10) {
                alert("刻字数超过了10个字符。");
                return;
            }

            if ('True' == 'True') {
                //判断在购物车中是否存在
                $.get("/API/DarryringYzAPI.ashx", { action: 'cart' }, function (data) {
                    if (data == "false") {
                        //购物中不存在
                        //初始化数据
                        $.get("/API/DarryringYzAPI.ashx", { action: 'darryhome' }, function (data) {
                            var json = $.parseJSON(data);
                            //未购买过
                            if (data == "false") {
                                $('.yz_password').show();
                                $(".toyz_begin").show();
                                $('.backall').show();
                                $(".gmg").hide();
                            }
                            else {
                                //购买过
                                $("#cg").text(json.Name);
                                $(".ygmg").show();
                                $('.yz_password').show();
                                $(".toyz_begin").hide();
                                $('.backall').show();
                            }
                        });
                    } else {
                        //购物车中存在
                        $(".addcart").hide();
                        $(".toyz_begin").hide();
                        $('.backall').show();
                        $('.yz_password').show();
                        $(".carthave").show();
                    }
                });
            }
            else {
                //用户未登录
                
                
                $('.dr_Registsign,.dr_blackwall').show();
                loginRefresh();
                

            }
        });
</script>
			</div>
			<script type="text/javascript" src="js/ntkfstat.js"
				charset="utf-8"></script>



		<script type="text/javascript">
//<![CDATA[
new Magnifier('magnifier0',{pPath:'http://img.darryring.com/userfiles/image/product/201606201013425c46d90c91.jpg',sWidth:150,sHeight:150,sOpacity:0.4,pWidth:300,pHeight:300,mLeft:85,mTop:0});new Magnifier('magnifier1',{pPath:'http://img.darryring.com/userfiles/image/product/2016062010134644945bb6a4.jpg',sWidth:150,sHeight:150,sOpacity:0.4,pWidth:300,pHeight:300,mLeft:85,mTop:0});new Magnifier('magnifier2',{pPath:'http://img.darryring.com/userfiles/image/product/201606201013489a22139075.jpg',sWidth:150,sHeight:150,sOpacity:0.4,pWidth:300,pHeight:300,mLeft:85,mTop:0});new Magnifier('magnifier3',{pPath:'http://img.darryring.com/userfiles/image/product/20160620101350d2f9fcb5a8.jpg',sWidth:150,sHeight:150,sOpacity:0.4,pWidth:300,pHeight:300,mLeft:85,mTop:0});$(function(){favoritesCss(false);});//]]>
</script>
	</form>
	<!-- 底部 -->
	<jsp:include page="footer.jsp" />
	<script>
	    // 加载底部入口模块
	    seajs.use("MyDarry/footerJs/footer.js");
	</script>
	<a data-version="201601131096" data-cltversion="2.3.1"
		data-cltsource="80001"
		data-cltuuid="extkVJHzwwfOaU4onM86ZiOhMV1glsPRrU4c" data-cltats="3"
		href="javascript:" id="yht-info-explugin" style="display: none;"></a>
</body>
</html>