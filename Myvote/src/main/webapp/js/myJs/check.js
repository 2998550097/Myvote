$(function(){
		//第一页
		getGoodByPage(0);
		
    	//导航栏系列显示
    	$.post("series/getname",function(data){
    		var leftstr="";
    		var rightstr="";
    		for(var i=0;i<5;i++){
    			leftstr+='<a href="http://www.darryring.com/darry_ring?series=loveline">'+data[i].seriesname+'</a>';
    		}
    		$("#leftseries").append(leftstr);
    		for(var i=5;i<9;i++){
    			rightstr+='<a href="http://www.darryring.com/darry_ring?series=loveline">'+data[i].seriesname+'</a>';
    		}
    		$("#rightseries").before(rightstr);
    	},"json");
    	
    	//导航栏系列显示
    	$.post("style/getname",function(data){
    		var leftstr="";
    		for(var i=0;i<data.length;i++){
    			leftstr+='<a href="http://www.darryring.com/dr_phonics">'+data[i].stylename+'</a>';
    		}
    		$("#leftstyle").append(leftstr);
    	},"json");
    	
    	//系列循环
    	$.post("series/getname",function(data){
    		var str="";
    		for(i=data.length-1; i>=0;i--){
    			str += '<a rel="nofollow" style="" dr-type="1" href="/darry_ring?series=heart">'+data[i].seriesname+'</a> ';
    		}
    		$("#series").append(str);
    	},"json");
   
    	
    	
	//用户是否登录
	$.post("style/check",function(data){
        		var str="";
        		if(data==0){
        			str+='<div class="dr_member-left fl" id="div_islog">';
	                str+='<a href="page/login.jsp" rel="nofollow">登录</a>';
	                str+='<a href="page/register.jsp" rel="nofollow" class="drtojoin">加入DR族</a>';
	                str+='</div>';
        		}else if(data){
	        			str+='<div class="dr_member-left fl" id="loginInInfo">';
		                str+='<a href="javascript:;" class="userName">'+data.uname+'</a>'
		                str+='<div style="display: none;" class="loginIn fix" id="loginInaAtion">';
		                str+='<a href="http://www.darryring.com/member/myorder.html">我的订单</a>'
		                str+='<a href="http://www.darryring.com/cart/cart.html">购物车</a>';       
		                str+='<a href="http://www.darryring.com/member/myfavorites.html">我的收藏</a>';
		                str+='<a href="http://www.darryring.com/member/personinfo.html">个人中心</a>';
		                str+='<a href="javascript:;" onclick="logout()">退出</a>';
		                str+='</div>';
		                str+='</div>';
        		}
        		$("#telphone").before(str);
        	},"json");
});

function logout(){
	$.post("style/exit",function(data){
		if(data){
			location.href="page/index.jsp";
		}
	});
}

$("#loginInaAtion").bind({
		mousemove:function(){
				$(this).css("display","block");
		},
		mouseout:function(){
			$(this).css("display","none");
		},
});
var num=1;
var totalSize=12;
//显示分页商品
function getGoodByPage(page){
	$.post("goods/findByPage?page="+page+"&num="+num+"&totalSize="+totalSize,function(data){
		$("#dring_thing").html("");
		$("#pagein").html("");
		$("#pagein1").html("");
		var str="";
		var span="";
		var span1="";
		for(var i=0;i<data.goods.length;i++){
			str+='<li '+(i%3==0?'class="dring_thing_left"' : '')+'>';
            str+='<a href="darry_marry.jsp">';
            str+='<img width="320" height="320" alt="FOREVER 系列 经典款&nbsp;30分&nbsp;F色" src="images/products/'+data.goods[i].gimage.substring(0,data.goods[i].gimage.indexOf(","))+'">';
            str+='</a>';
            str+='<div class="dring_thing-cort">';
            str+='<div class="dring_thing-price">'+data.goods[i].gname.split(",")[3]+'</div>';
            str+='<p class="dring_thing-word">'+data.goods[i].gname.split(",")[0]+'&nbsp;'+data.goods[i].gname.split(",")[1]+'分&nbsp;'+data.goods[i].gname.split(",")[2]+'色</p>';
            str+='<div class="dring_thing-button">';
            str+='<span>收藏</span>';
            str+='<i><a rel="nofollow" target="_blank" href="/darry_ring/160.html">立即购买</a></i>';
            str+='</div>';
            str+='<div class="dring_thing-sold">';
            str+='<span>已售：26792</span><i>评价：<em>2705</em></i></div>';
            str+='</div>';
            str+='</li>';
		}
		span+='<a rel="nofollow" class="nextPage1" href="javascript:void(0)" onclick="getGoodByPage(1)"><img alt="" src="images/marryring/right.png"></a>';
		span+='<a rel="nofollow" class="prevPage1" href="javascript:void(0)" onclick="getGoodByPage(2)"><img alt="" src="images/marryring/left.png"></a>';
		span+='<span>'+data.pagenum+'/'+data.maxpage+'</span>';
		span+='<span>共'+data.totalSize+'件 商品</span>';
		
		span1+='<a rel="nofollow" class="nextPage1" href="javascript:void(0)" onclick="getGoodByPage(1)"><img alt="" src="images/marryring/right.png"></a>';
		span1+='<a rel="nofollow" class="prevPage1" href="javascript:void(0)" onclick="getGoodByPage(2)"><img alt="" src="images/marryring/left.png"></a>';
		span1+='<span>'+data.pagenum+'/'+data.maxpage+'</span>';
		span1+='<span>共'+data.totalSize+'件 商品</span>';
		$("#pagein").append(span);
		$("#pagein1").append(span1);
		num=data.pagenum;
		totalSize=data.totalSize;
		$("#dring_thing").append(str);
	});
}