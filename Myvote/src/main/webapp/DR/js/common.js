$(function(){
    //主导航子菜单效果
    $('#ni-navs li').mouseenter(function(){
        $(this).find('.ni-subMenu').show();
    }).mouseleave(function(){
        $(this).find('.ni-subMenu').hide();
    });
    //个人中心菜单效果
    $('#ni-memberInfo').mouseenter(function(){
        $(this).addClass('ni-memberDown').find('.ni-memberMenu').show();
    }).mouseleave(function(){
        $(this).removeClass('ni-memberDown').find('.ni-memberMenu').hide();
    });

    //点击登录
    $('#ni-loginBtn').off('click').on('click',function(){
        alertFadeIn('.ni-loginBox');
        loginRefresh();
    });

   

    $('.ni-publish').off('click').on('click',function(){
        var _this = $(this);
        var isLogin = _this.attr('is-login');
        if (isLogin == '' || isLogin == null) {
            alertFadeIn('.ni-loginBox');
            loginRefresh();
            return false;
        }else{
            var requestUrl = _this.attr('request-url');
            window.location=requestUrl;
        }
    });

    var loginRefresh = function() {
        var _this = $('.ni-loginBox');
        var requestUrl = _this.attr('request-url');
       window.loginInterval = setInterval(function() {
            $.get('/user/login', function(res) {
                if (res.result >= 0) {
                    alertFadeOut('.ni-loginBox');
                    location.reload();
                    clearInterval(window.loginInterval);
                }
            });
        },1000);
    };

    //注册
    $('#ni-resterBtn,.ni-resterBtn').off('click').on('click',function(){
        //更改url
        $('.url').attr('src','http://passport.darryring.com/other?type=reg')
        alertFadeIn('.ni-regBox');
        regRefresh();
    });

    var regRefresh = function(){
        var requestUrl = $(this).attr('request-url');
        window.loginInterval = setInterval(function() {
            $.get('/user/login', function(res) {
                if (res.result >= 0) {
                    alertFadeIn('.ni-regBox');
                    clearInterval(window.loginInterval);
                    location.reload();
                }
            });
        },1000);
    }
    //点击注册
    $('#ni-closeRegBox').off('click').on('click',function(){
        alertFadeOut('.ni-regBox');
        clearInterval(window.loginInterval);
    });

    //点击登录
    $('#ni-closeLoginBox').off('click').on('click',function(){
        alertFadeOut('.ni-loginBox');
        clearInterval(window.loginInterval);
    });

    //退出登录
    $('.logou').off('click').on('click',function(){
        var _this = $(this);
        var postUrl = _this.attr('logou-url');
        var url = _this.attr('url');

        $.post(postUrl,{},function(res){
            window.location=url;
        });
    });

    /*显示隐藏侧边栏工具*/
    var scrollTop = '';
    var offon = true;
    checkScroll();
    $(window).scroll(function() {
        checkScroll();
    });
    function checkScroll() {
        scrollTop = $(document).scrollTop();
        if (scrollTop >= 200 & offon) {
            offon = false;
            $('#dr-quickservice').show();
        } else if (scrollTop <= 200) {
            $('#dr-quickservice').hide();
        } else {
            $('#dr-quickservice').show();
        }
    };
    //侧边工具栏提示效果
    $('.dr_quick-cort').off('mouseenter').on('mouseenter', function() {
        $(this).addClass('dr_quickcort-hover').find('.dr_quick-word').stop(false, false).animate({
            right: '50px',
            opacity: 1
        }, 500).show();
    }).off('mouseleave').on('mouseleave', function() {
        $(this).removeClass('dr_quickcort-hover').find('.dr_quick-word').stop(false, false).animate({
            right: '0',
            opacity: 0
        }, 500).hide();
    });
    /*回到顶部*/
    $('.dr_totop').off('click').on('click', function() {
        $("html,body").stop(true, false).animate({
            "scrollTop": 0 + 'px'
        }, 300)
    });
});

var loginRefresh = function() {
    window.loginInterval = setInterval(function() {
        $.get('/user/login', function(res) {
            if (res.result >= 0) {
                alertFadeOut('.ni-loginBox');
                window.location.reload();
                clearInterval(window.loginInterval);
            }
        });
    },1000);
};

//公用显示弹框及蒙版
function alertFadeIn(obj){
    $('.dr_blackwall,'+obj).fadeIn();
}
//公用隐藏弹框及蒙版
function alertFadeOut(obj){
    $('.dr_blackwall,'+obj).fadeOut();
}
//定义加入收藏夹函数
function join_favorite() {
    var url = window.location.href;
var $title = "Darry Ring";
// IE Favorite
if ( 'AddFavorite' in window.external ) {
    event.preventDefault();
    window.external.AddFavorite(url, $title);
}
// Fx <23 Bookmark, 'addPanel' not available from v23 on any more.
else if ( 'addPanel' in window.sidebar ) {
    event.preventDefault();
    window.sidebar.addPanel($title, url, '');
}
// Op 7+ && Fx >= 23
else if ( window.opera || window.sidebar ) {
    $favLink.attr('title', $title);
    return true; // do nothing - the rel="sidebar" should do the trick
}
// for Saf, Konq etc - browsers who do not support bookmarking scripts
else {
    event.preventDefault();
    alert('Your browser doesn\'t support the bookmark functionality,'
    + 'please add this page to your bookmarks manually.');
}
    // var siteUrl = window.location.href;
    // var siteName = "Darry Ring";
    // try {
    //     if (document.all) {
    //         window.external.addFavorite(siteUrl, siteName);
    //     } else if (window.sidebar) {
    //         window.sidebar.addPanel(siteName, siteUrl, '');
    //     } else {
    //         alert("加入收藏夹失败，请使用Ctrl+D快捷键进行添加操作!");
    //     }
    // }
    // catch (e) {
    //     alert("加入收藏夹失败，请使用Ctrl+D快捷键进行添加操作!");
    // }
}