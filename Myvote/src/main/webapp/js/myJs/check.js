$(function(){
		//显示全部商品
		$.post("goods/findAll",function(data){
			var str="";
			for(var i=0;i<12;i++){
				str+='<li '+(i%3==0?'class="dring_thing_left"' : '')+'>';
                str+='<a href="darry_marry.jsp">';
                str+='<img width="320" height="320" alt="FOREVER 系列 经典款&nbsp;30分&nbsp;F色" src="images/products/'+data[i].gimage.substring(0,data[i].gimage.indexOf(","))+'">';
                str+='</a>';
                str+='<div class="dring_thing-cort">';
                str+='<div class="dring_thing-price">'+data[i].paramters[0].pprice+'</div>';
                if(data[i].paramters[0].pcarat!=null){
                	str+='<p class="dring_thing-word">'+data[i].gname+'&nbsp;'+data[i].paramters[0].pcarat.split("分")[0]+'分&nbsp;'+data[i].paramters[0].pcarat.split("分")[1]+'色</p>';
                }else{
                	str+='<p class="dring_thing-word">'+data[i].gname+'</p>';
                }
                str+='<div class="dring_thing-button">';
                str+='<span>收藏</span>';
                str+='<i><a rel="nofollow" target="_blank" href="/darry_ring/160.html">立即购买</a></i>';
                str+='</div>';
                str+='<div class="dring_thing-sold">';
                str+='<span>已售：26792</span><i>评价：<em>2705</em></i></div>';
                str+='</div>';
                str+='</li>';
			}
			$("#dring_thing").append(str);
		});
		
    	//导航栏系列显示
    	$.post("series/getname",function(data){
    		var leftstr="";
    		var rightstr="";
    		for(var i=0;i<5;i++){
    			leftstr+='<a href="http://www.darryring.com/darry_ring?series=loveline">'+data[i].seriesname+'</a>';
    		}
    		$("#leftseries").append(leftstr);
    		for(var i=5;i<data.length;i++){
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
    		for(var i=0; i<7; i++){
    			str += '<li><a href="#">'+ data[i].seriesname + '</a></li>';
    		}
    		$("#more").before(str);
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