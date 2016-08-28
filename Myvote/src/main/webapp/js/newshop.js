$(function () {
    if ($('#shopBanMenu a').length >= 1) {
        startBanner();
    }
	//	免费预约效果
	$('#showActionBtn,#cancelActionBtn').click(function(){
		if($('#actionMain').is(':hidden')){
			$('#actionMain').show();
		}else{			
			$('#actionMain').hide();
		}
	});
	$('#closeActionBtn').click(function(){
		$('#subscribeMain').hide();
		$('#minSubscribe').show();
	});
	$('#minSubscribe').click(function(){
		$('#subscribeMain').show();
		$('#minSubscribe').hide();
	});
	$('#closeMapBtn').click(function () {
	    $('#shopMapMain').fadeOut();
	    $('.dr_blackwall').fadeOut();
	});
	$('.showMapBtn,#lookBigMapBtn').click(function(){		
		$('#shopMapMain').fadeIn();
	});
	
	//	分页页码效果
	$('.pagin a').each(function(index){
		$(this).click(function(){
			$('.pagin a').removeClass('current');
			$(this).addClass('current');
			if(index == $('.pagin a').length - 2){
				$('.next-disabled').show();
				$('.next').hide();
			}else if(index == 1){				
				$('.prev-disabled').show();
				$('.prev').hide();
			}else{						
				$('.prev-disabled,.next-disabled').hide();
				$('.prev,.next').show();
			}
		});
	});	
	//	地图隐藏初始化
	$('#shopMapMain').hide().css({'opacity':1,'filter':'Alpha(Opacity=10)'});
	//关闭提示弹出框
	$('#closeTipsBtn').click(function(){
	    $('#shopTips').fadeOut();
	    clearInterval(tipsTimer);
	    $('#countdown').html(5);
	});
});
//显示提示框
var tipsTimer;
function showTips(){
    $('#shopTips').fadeIn();
    autoHideTips();
}
//自动关闭提示弹出框
function autoHideTips() {
    var thisTime = 5;
	tipsTimer = setInterval(function(){
		thisTime--;
		if (thisTime > 0) {
		    $('#countdown').html(thisTime);
		} else {
		    $('#countdown').html(5);
		    $('#shopTips').fadeOut();
		    clearInterval(tipsTimer);
		}		
	},1000);
}
function startBanner() {
    //banner菜单宽度、位置控制
    var BanMenuWidth = 250 * $('#shopBanMenu a').length;
    $('#shopBanMenu').css({ 'width': BanMenuWidth + 'px', 'marginLeft': -BanMenuWidth / 2 + 'px' });
    $('#shopBanMenu a').eq(0).addClass('select');
    $('#shopBanMenu a').each(function (index) {
        $(this).click(function () {
            thisBanner = index;
            startBanner();
            clearInterval(bannerTimer);
            bannerTimer = setInterval(startBanner, 3000);
        });
    });
    //banner效果
    $('#banner li').hide().eq(0).fadeIn();
    var thisBanner = 1;
    function startBanner() {
        $('#banner li').stop(false, false).fadeOut();
        $('#banner li').eq(thisBanner).stop(false, false).fadeIn();
        $('#shopBanMenu a').removeClass('select').eq(thisBanner).addClass('select');
        if (thisBanner >= $('#shopBanMenu a').length - 1) {
            thisBanner = 0;
        } else {
            thisBanner++;
        }
    }
    var bannerTimer = setInterval(startBanner, 3000);
}
