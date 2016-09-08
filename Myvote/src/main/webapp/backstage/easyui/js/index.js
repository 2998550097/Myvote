$(function(){
	$('#center_area').tabs('add',{
		title:'首页',
		href:"txgx.html"
	});
	
	$('#menu_tree').tree({  
		onClick: function(node){
			var text=node.text; //获取选中的节点的文本值
			var tabs=$('#center_area');
			if(text=="店铺管理"){
				if(tabs.tabs('exists',"店铺管理")){//如果存在则选中
					tabs.tabs('select',"店铺管理");
				}else{
					tabs.tabs('add',{
						title:"店铺管理",
						href:"store.html",
						closable:true
					});
				}
			}else if(text=="评论管理"){
				if(tabs.tabs('exists',"评论管理")){//如果存在则选中
					tabs.tabs('select',"评论管理");
				}else{
					tabs.tabs('add',{
						title:"评论管理",
						href:"comment.html",
						closable:true
					});
				}
			}else if(text=="管理员管理"){
				if(tabs.tabs('exists',"管理员管理")){//如果存在则选中
					tabs.tabs('select',"管理员管理");
				}else{
					tabs.tabs('add',{
						title:"管理员管理",
						href:"admin.html",
						closable:true
					});
				}
			}else if(text=="会员管理"){
				if(tabs.tabs('exists',"会员管理")){//如果存在则选中
					tabs.tabs('select',"会员管理");
				}else{
					tabs.tabs('add',{
						title:"会员管理",
						href:"Users.html",
						closable:true
					});
				}
				
			}
			else if(text=="款式管理"){
				if(tabs.tabs('exists',"款式管理")){//如果存在则选中
					tabs.tabs('select',"款式管理");
				}else{
					tabs.tabs('add',{
						title:"款式管理",
						href:"design.html",
						closable:true
					});
				}
				
			}
			else if(text=="系列管理"){
				if(tabs.tabs('exists',"系列管理")){//如果存在则选中
					tabs.tabs('select',"系列管理");
				}else{
					tabs.tabs('add',{
						title:"系列管理",
						href:"series.html",
						closable:true
					});
				}
				
			}
			else if(text=="商品管理"){
				if(tabs.tabs('exists',"商品管理")){//如果存在则选中
					tabs.tabs('select',"商品管理");
				}else{
					tabs.tabs('add',{
						title:"商品管理",
						href:"goods.html",
						closable:true
					});
				}
				
			}
			else if(text=="订单管理"){
				if(tabs.tabs('exists',"订单管理")){//如果存在则选中
					tabs.tabs('select',"订单管理");
				}else{
					tabs.tabs('add',{
						title:"订单管理",
						href:"order.html",
						closable:true
					});
				}
				
			}
			else if(text=="收藏管理"){
				if(tabs.tabs('exists',"收藏管理")){//如果存在则选中
					tabs.tabs('select',"收藏管理");
				}else{
					tabs.tabs('add',{
						title:"收藏管理",
						href:"collection.html",
						closable:true
					});
				}
				
			}
		
		}
 
	});  

});