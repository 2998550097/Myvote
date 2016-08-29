$(function(){
	 //首页大Banner
	 var indexBan = new Banner().init({
	  id:'#ni-houmeBanner',
	  btnListId:'#ni-HomeBanxd',
	  btnListClass:'activate'
	 });
	 //侧边栏精选推荐轮播图
	 var sidebarBan = new Banner().init({
	  id:'#ni-sidebarBanner',
	  btnListId:'#ni-sidebarBanxd',
	  btnListClass:'activate'
	 });
    //主导航子菜单效果
    $('#ni-showEwmBtn').mouseenter(function(){
        $('#ni-ewmShow').show();
    }).mouseleave(function(){
        $('#ni-ewmShow').hide();
    });
    //个人中心菜单效果
    $('#ni-memberInfo').mouseenter(function(){
        $(this).addClass('ni-memberDown').find('.ni-memberMenu').show();
    }).mouseleave(function(){
        $(this).removeClass('ni-memberDown').find('.ni-memberMenu').hide();
    });
});
function setContentImg(){
    $('.ni-contentImg img').each(function(index){
    	$(this).css({'marginTop':-($(this).height()/2)+'px','top':50+'%'});
    });
}