$(function () {
    //-------------------------------论坛导航------------------------------//
    //滑动置顶
    $(window).scroll(function(){
		if($(window).scrollTop() >= 100){
			$('#hd').addClass('hdfixed');
		}else{
			$('#hd').removeClass('hdfixed');
		}	
	});
    //关闭弹出框
    $('.flbc').click(function () {
        $('#append_parent').hide();
    });

    $('.deanpublish').click(function () {

        var isLogin = $(this).children('a').attr('is_login');
        var request_url = $(this).children('a').attr('request_url');

        if (isLogin == '') {
            $('.dr_blackwall').show();
            $('.zone_dltc').show();
        }else{
            $('#append_parent').show();
        }

    });

    //切换父类
    $('#block_group p').click(function () {
        var _this = $(this);
        var _class = _this.attr('class');

        if (_class != 'pbls') {
            $('#block_group p[class="pbls"]').attr('class', '');
            _this.attr('class', 'pbls');

            //获取对应二级分类内容
            var id = _this.attr('data-id');

            var content = '';
            $('#fs_forum_' + id).children().each(function () {
                var _sub_id = $(this).attr('data-id');
                content += '<p data-id=' + _sub_id + '><a href="javascript:void(0)" >' + $(this).html() + '</a></p>';
            });

            $('#block_forum').html(content);
        }
        ;
    });

    //二级菜单点击事件
    $('#block_forum').on('click', 'p', function () {
        var _this = $(this);

        $('#block_group p[class="pbls"]').attr('class', '');
        $('#block_forum p[class="pbls"]').attr('class', '');
        _this.attr('class', 'pbls');

        $('#postbtn').removeAttr('disabled');
        $('#postbtn').attr('class', 'pn pnc y');
    });

    //点击发新帖
    $('#postbtn').click(function () {
        var _this = $(this);

        var baseUrl = _this.attr('data-url');
        var id = $('#block_forum p[class="pbls"]').attr('data-id');

        var url = baseUrl + '?id=' + id;

        location.href = url;
    });

    //拖动
    var clicked = true;

    $("#fctrl_nav ,.m_r,.b_c,.t_c,.m_l").mousemove(function (event) {
        mausx = event.pageX;
        mausy = event.pageY;
        winx = $("#fwin_nav").offset().left;
        winy = $("#fwin_nav").offset().top;
        if (clicked == true) {
            difx = mausx - winx;
            dify = mausy - winy;
        }

        var newx = event.pageX - difx - $("#fwin_nav").css("marginLeft").replace('px', '');
        var newy = event.pageY - dify - $("#fwin_nav").css("marginTop").replace('px', '');
        $("#fwin_nav").css({top: newy, left: newx});

        
    });

    $("#fctrl_nav ,.m_r,.b_c,.t_c,.m_l").mousedown(function (event) {
        clicked = false;
    });

    $("#fctrl_nav ,.m_r,.b_c,.t_c,.m_l").mouseup(function (event) {

        clicked = true;
    });

    //退出登录
    $('.logou').click(function(){
        var _this = $(this);
        var postUrl = _this.attr('logou-url');
        var url = _this.attr('url');

        $.post(postUrl,{},function(res){
            window.location=url;
        });
    });

    //点击出现登录
    $('.is-login').click(function() {
        $('.dr_blackwall').show();
        $('.zone_dltc').show();
    });
    $('.zone_dltc-top span').off('click').on('click',function(){
        $('.dr_blackwall').hide();
        $('.zone_dltc').hide();
    });

    //登录
    $('.zone_dlbutton').off('click').on('click',function(){

        var mobile = $('#mobile').val();
        var password = $('#password').val();
        var postUrl = $('#postUrl').val();
        var requestUrl = $('#requestUrl').val();
        var ideaMore = $('#idea_more_login').val();
         if (ideaMore) {
            requestUrl = $('.idea_more').attr('request_url');
        }
        var remember = $('input:checked').val();
        var errorMessage = $('.zone_dltcwrong');

        if (parseInt(remember) == 1) {
            var remember = 1;
        }else{
            var remember = 0;
        }

        $.post(postUrl,{'data[mobile]':mobile,'data[password]':password,'remember':remember},function(res){
            if (res.result>0) {
                window.location=requestUrl;
                return true;
            }
            errorMessage.css('display','block');
            errorMessage.find('p').html(res.message);
            return false;
        });
    });

    var title = $('input[name="title"]').val();
    var desc = $('input[name="desc"]').val();
    var pic = $('input[name="pic"]').val();
    var url = $('input[name="url"]').val();
    $('.share_wb').attr({'href' : "http://service.weibo.com/share/share.php?title="+title+"&desc="+desc+"&pic="+pic+"&url=" + url});
    $('.share_qzone').attr({'href':"http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?title="+title+"&summary="+desc+"&pics="+pic+"&url=" + url});
    
});





