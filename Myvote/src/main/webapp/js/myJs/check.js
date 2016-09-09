$(function(){
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