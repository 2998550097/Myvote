/*
 * 红坊店页面
 * 2016-06-21
 * */
define(function(require,exports,module){
	/*通过 require 引入依赖*/
	require('jquery');	  
	var Imgscroll = require('../../../drjs/modules/scrolling.js');
	$(function(){
		//调用图片滚动组件
		var Imgscrol = new Imgscroll().init({
			id: '#drstore_Over',
			prev: '.button_pre',
			next: '.button_next',
			scrollNum: 1,
			theMag: 14,
			Alllist:3,
			overlist:1,
			overnum:7,
			thebutton:true
		});
		//丝带切换图片
		$('.drstorefirst_one').hover(function(){
		    $(this).css('background-image', 'url(/dractivity/drstore_sh/img/1.gif)');
		},function(){
			$(this).css('background-image','');
		}).click(function(){
			$('.drstore_blackwall,.drstoreTC_one').show();
		});
		//vip体验切换图片
		$('.drstorefirst_two').hover(function(){
			$(this).css('background-image','url(/dractivity/drstore_sh/img/2.gif)');
		},function(){
			$(this).css('background-image','');
		}).click(function(){
			$('.drstore_blackwall,.drstoreTC_two').show();
		});
		//设计师切换图片
		$('.drstorefirst_three').hover(function(){
			$(this).css('background-image','url(/dractivity/drstore_sh/img/3.gif)');
		},function(){
			$(this).css('background-image','');
		}).click(function(){
			$('.drstore_blackwall,.drstoreTC_three').show();
		});
		//奖项切换图片
		$('.drstorefirst_four').hover(function(){
			$(this).css('background-image','url(/dractivity/drstore_sh/img/4.gif)');
		},function(){
			$(this).css('background-image','');
		}).click(function(){
			$('.drstore_blackwall,.drstoreTC_four').show();
		});
		//博物馆
		$('.drstorefirst_five').click(function(){
			$('.drstore_blackwall,.drstoreTC_five').show();
		});
		//点击关闭弹窗
		$('.drstoreTC_close').click(function(){
			$(this).parent().hide();
			$('.drstore_blackwall').hide();
		});
		//实体店出现提示
		$('.drstore_shop li').each(function(index){
			$(this).hover(function(){
				$(this).find('.drstore_tohide').show();
			},function(){
				$(this).find('.drstore_tohide').hide();
			});
		});
	});
});
