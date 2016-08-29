$(function(){
    $('.add_reply').off('click').on('click',function(){
        var _this = $(this);
        var  dataId = _this.attr('data-id');
        // var postSubmit = $('.reply2 #postsubmit2');
        //postSubmit.parent().find('#data-context2').val(dataId);
        $(this).parents('.reply_list2').find('.reply_textarea').toggle();
    });
    
    //二级回复
    $('.Edit_reply').click(function(){
         $(this).parent().parent().next('.replyBox').toggle();
         $(this).parent().parent().next('.replyBox').find('.forumInput').attr('placeholder','回复:'+$(this).data('nickname'));
        
    });
    
     $('.Edit_reply2').off('click').on('click',function(){
            $(this).parent().next('.replyBox').toggle();
            $(this).parent().next('.replyBox').find('.forumInput').attr('placeholder','回复:'+$(this).data('nickname'));
     });
    //二级回复
    $(".forumLoginBtn.forLoginBtn").off("click").on("click",function(){
     
         if (isLogin == '' || isLogin == null) {
            $('.dr_blackwall,.ni-loginBox').fadeIn();
            loginRefresh();
            return false;
        }
         _this = $(this);
         var content = _this.parent().find('.forumInput').val();
         var postId     = _this.parent().find('input[name="data[post_id]"]').val();
         var parentId   = _this.parent().find('input[name="data[parent_id]"]').val();
         var userId    =  _this.parent().find('input[name="data[user_id]"]').val();
         var reply_user_id = _this.parent().find('input[name="data[reply_user_id]"]').val();
         var postUrl    = _this.parent().find('input[name="postUrl"]').val();
         //var postUserId = _this.parent().find('input[name="user_id"]').val();
         if(content == ''){
             show_message('内容不能为空');
             return false;
         }
         var data = {
            context : content,
            post_id : postId,
            parent_id : parentId,
            user_id : userId,
            reply_user_id : reply_user_id,
         };
         $.post(postUrl,{'data': data},function(res){
            if (res.result>0) {
                window.location = res.url;
                if (res.message) {
                    showEXP();
                }else{
                    $("#reply_success").fadeIn();
                    setTimeout("$('#reply_success').fadeOut()",2000);
                }
            }
        });
        
    });

    
    // 删除评论
    $('.Edit_del,.del_reply').off('click').on('click',function(){
        var _this = $(this);
        var comment_id  = $(this).attr('comment-id');
        var comment_total = $(this).attr('comment-total');
        var post_id = $(this).attr('post-id');
        var data = {
            comment_id : comment_id,
            comment_total : comment_total,
            post_id : post_id,
        }
       
        $.get(commentDeleteUrl ,{'data' : data},function(res){
            if(res.result == 1){
                show_message('删除成功');
                window.location.reload()
            } else if (res.result == 2){
                show_message('已被管理员屏蔽');
                window.location.reload()
            } else {
                  show_message('非法参数');
            }
        })
      
    });
    

    // 我的评论详情页 删除评论
    $('.Edit_del1').off('click').on('click',function(){
    
        var _this = $(this);
        var comment_id  = $(this).attr('comment-id');
        var comment_total = $(this).attr('comment-total');
        var post_id = $(this).attr('post-id');
        var data = {
            comment_id : comment_id,
            comment_total : comment_total,
            post_id : post_id,
        }
       
        $.get(commentDeleteUrl ,{'data' : data},function(res){
            if(res.result == 1){
                show_message('删除成功');
                location.href =  detailUrl;
            } else if (res.result == 2){
                show_message('已被管理员屏蔽');
                window.location.reload()
            } else {
                  show_message('非法参数');
            }
        })
      
    });

    //评论点赞
    $('.reply_zanIco').click(function(){
        var id = $(this).data('id');
        var isLogin = $(this).data('login');
        if (isLogin == '' || isLogin == null) {
            $('.dr_blackwall,.ni-loginBox').fadeIn();
            loginRefresh();
            return false;
        }

        $.ajax({
            type :'GET',
            url : praise_url,
            data : {'id' : id},
            success : function (res) {
                if(res.result == 1){
                 show_message('点赞成功');
                 window.location.reload()
                } else if (res.result == 2){
                  show_message('取消点赞成功');
                  window.location.reload()
                }
            }
        })
    });

    //文章关注
    $('#guanzhu').click(function(){
        if (isLogin == '' || isLogin == null) {
            $('.dr_blackwall,.ni-loginBox').fadeIn();
            loginRefresh();
            return false;
        }
        
        var id = $(this).data('id');
        var user_id  = $(this).data('user-id');
        var class_id = $(this).data('class-id');
        var loginuser_id = $(this).data('loginuser-id');
        var data = {
            id : id,
            user_id :user_id,
            class_id : class_id,
        };

        if(loginuser_id == user_id) {
            show_message('不能关注自己发布的文章!');
            return false;
        }
         $.get(loveUrl ,{'data' : data},function(res){
                if(res.result == 1) {
                 show_message('关注成功');
                 window.location.reload()
                } else if (res.result == -1) {
                  show_message('取消关注成功');
                  window.location.reload()
                } else if (res.result == -2) {
                  show_message('不能关注自己发布的文章');
               
                }
        });
    });

    //删除文章
     $('#post_del').off('click').on('click',function(){
        var flag = false;
       if(confirm('确认删除吗')){
        var flag = true;
       } else {
        var flag = false;
       }
       if(flag == false){
        return false;
       }
        var id = $(this).data('id');
        var user_id  = $(this).data('user-id');
        var class_id = $(this).data('class-id');
        var data = {
            id : id,
            user_id :user_id,
            class_id : class_id,
        };
    
        $.post(postDeteleUrl ,{'data' : data},function(res){
            if(res.result == 1){
                show_message('删除成功');
                window.location.reload()
            } else {
                show_message('非法参数');
            }
        })
      
    });
    

   
    //举报
    $("#reportList a").click(function() {
        var post_id = $("#reportList").attr('post-id');
        var reportUrl = $("#reportList").data('url');
        var content = $(this).text();
        var type = $('#reportList').data('type');
        if (type == 1) {
            show_message('请不要重复举报');
            return false;
        }
        var data = {
          post_id : post_id,
          content : content,
        };
      
        if(content == '其他') {
            $('.report_popping').show();
            return false;
        }
        $.post(reportUrl  ,{'data' : data},function(res){
            if(res.result == 1){
                show_message('举报成功');
                window.location.reload()
            } else {
                show_message('请不要重复举报');
            }
        })
   })
    //其他举报
    $("#popBtnOk").click(function() {
        var post_id = $(this).attr('post-id');
        var reportUrl = $(this).data('url');
        var content = $('.report_text').val();
        if(content == '') {
            alert('内容不能为空');
            return false;
        }
        var data = {
          post_id : post_id,
          content : content,
        };
      
       $('.report_popping').hide();
        $.post(reportUrl  ,{'data' : data},function(res){
            if(res.result == 1){
                show_message('举报成功');
                window.location.reload()
            } else {
                show_message('请不要重复举报');
            }
        })
   })

    // $('.del_reply').off('click').on('click',function(){
    //     $(this).parents('.reply_sec').remove();
    // });

    //三级回复
    $('.reply_btn').off('click').on('click',function(){
        var _this = $(this);
        var  dataId = _this.attr('data-id');
        var  replyUserId = _this.attr('reply-user-id');

        var postSubmit = $('.reply2 #postsubmit2');
        postSubmit.attr('user-id',replyUserId);
        postSubmit.attr('parent-id',dataId);
        $(this).parents('.reply_list2').find('.reply_textarea').toggle();
    });

    // 模拟单选框
    $('.radio_con').delegate('.radio_list', 'click', function(){
        $(this).siblings().find('span').removeClass('radio_cur').addClass('radio_box');
        $(this).find('span').addClass('radio_cur').removeClass('radio_box');
        $(this).parent().find('.radio').removeAttr('checked');
        var _class = $(this).find('span').attr('class');
        if(_class =='radio_cur')
            $(this).find('.radio').attr('checked','checked');
        else
            $(this).find('.radio').attr('checked','checked');
    });

    // 下拉单
    var c_select;
    $('.c_select > ul').hide();
    $('.c_select span').click(function(){
        $(this).parents('.c_select').siblings('.c_select').find('ul').hide();;
        $(this).parents('.c_select').siblings('.c_select').find('span').removeClass('on');
        $(this).parents('.c_select').find('ul').show();
        $(this).addClass('on');
        $(this).parents('.c_select').css({ 'z-index' : '2' }).siblings('.c_select').css({ 'z-index' : '1' });
    });
    $('.c_select').hover(function(){
        clearTimeout(c_select);
    },function(){
        c_select = setTimeout(function(){
            $('.c_select').find('ul').slideUp();
            $('.c_select').find('span').removeClass('on');
        },500);
    });
    $('.c_select ul li').click(function(){
        $(this).parents('.c_select').find('span').html($(this).html()).removeClass('on');
        $('.c_select').find('ul').slideUp();
    });
    $.each( $(".c_select"), function(k,list){
        $(list).find("li:odd").addClass("even");
    });

    //	头部会员中心入口
    $('.myActionMain').off('mouseenter').on('mouseenter',function(){
        $('.myAction').show();
        $(this).addClass('down');
    }).off('mouseleave').on('mouseleave',function(){
        $('.myAction').hide();
        $(this).removeClass('down');
    });

    //配置以及显示提示信息
    // setTips('您的会员邮箱已绑定成功！');
    setTips('成功绑定邮箱，奖励<span class="red"><i>10</i> 积分</span>');
    showTips();

    //上传头像预览
    var finputfiles = document.getElementById('album_cover');
    if(finputfiles){
        finputfiles.onchange = function(evt) {
            if (!window.FileReader) return;
            var files = evt.target.files;
            for (var i = 0, f; f = files[i]; i++) {
                if (!f.type.match('image.*')) {
                    continue;
                }
                var reader = new FileReader();
                reader.onload = (function(theFile) {
                    return function(e) {
                        // img 元素
                        document.getElementById('bgSurface').src = e.target.result;
                        $('.bgSurface').val(e.target.result);
                    };
                })(f);
                reader.readAsDataURL(f);
            }
        }
    }

    //上传背景图
    var finputfiles = document.getElementById('bg-upload');
    if(finputfiles){
        finputfiles.onchange = function(evt) {
            if (!window.FileReader) return;
            var files = evt.target.files;
            for (var i = 0, f; f = files[i]; i++) {
                if (!f.type.match('image.*')) {
                    continue;
                }
                var reader = new FileReader();
                reader.onload = (function(theFile) {
                    return function(e) {
                        // img 元素
                        document.getElementById('bgUploadimg').src = e.target.result;
                        $('#bgUpload').css('backgroundImg',e.target.result)
                        var images = $('#bgUploadimg').attr('src');
                        var postUrl = $('#bgUpload').attr('post-url');
                        var id = $('#bgUpload').attr('data-id');
                        console.log(id);
                        $.post(postUrl, {'id': id, 'images':images}, function(res){
                            if (res.result == 0) {
                                window.location.reload();
                            }
                            if (res.result == -1) {
                                alert(res.message);
                            }
                        });
                    };
                })(f);
                reader.readAsDataURL(f);
            }
        }
    }

    //会员中心-关闭弹出框
    $('#menberDialog .highlight').off('click').on('click',function(){
        hideDialog();
    });
    //确认删除
    $('#myDialogBox .highlight').off('click').on('click',function(){
        removeItem();
        hideDialog();
    });
    //会员中心-弹出框-取消
    $('#myDialogBox .cancel').off('click').on('click',function(){
        hideDialog();
    });
    //显示弹出框
    //showDialog();

    //我的收藏
    $('.subjectList li').live('mouseenter',function(){
        $(this).find('.subjectDelect,.subjectActionBtns').show();
    })
    $('.subjectList li').live('mouseleave',function(){
        $(this).find('.subjectDelect,.subjectActionBtns').hide();
    });
    //回复我的
    $('.replyList li').off('mouseenter').on('mouseenter',function(){
        $(this).find('.replyAction').show();
    }).off('mouseleave').on('mouseleave',function(){
        $(this).find('.replyAction').hide();
    });

   // emotionBox.init();
    // 评论回复成功
    $("#postsubmit").off("click").on("click",function(){
        var isLogin = $('input[name="isLogin"]').val();
        if (isLogin == '' || isLogin == null) {
            $('.dr_blackwall,.ni-loginBox').fadeIn();
            loginRefresh();
            return false;
        }else{
            var content = $('#data-context').val();
            var postId = $('input[name="data[post_id]"]').val();
            var parentId = $('input[name="data[parent_id]"]').val();
            var userId = $('input[name="data[user_id]"]').val();
            var postUrl = $('input[name="postUrl"]').val();
            if (content.trim() == '') {
                showNullTips('不能提交空白信息');
                $('#reply_success').css('display','none');
                return false;
            }
            var postUserId = $('input[name="user_id"]').val();

            $.post(postUrl,{"data[post_id]":postId,"data[user_id]":userId,"data[parent_id]":parentId,"data[context]":content,'user_id':postUserId},function(res){
                if (res.result>0) {
                    window.location = res.url;
                    if (res.message) {
                        showEXP();
                    }else{
                        $("#reply_success").fadeIn();
                        setTimeout("$('#reply_success').fadeOut()",2000);
                    }
                }
            });
        }
    });

     $(".reply2 #postsubmit2").off("click").on("click",function(){
         var _this = $(this);
         var isLogin = $('.islogin').val();
        if (isLogin == '' || isLogin == null){
            $('.dr_blackwall,.ni-loginBox').fadeIn();
            loginRefresh();
            return false;
        }
         var replyBin = $('.reply_btn');
         var content = _this.parent().find('#data-context2').val();
         var postId = $('input[name="data[post_id]"]').val();
         var parentId = _this.attr('parent-id');
         var replyUserId = $('input[name="data[reply_user_id]"]').val();
         var userId = _this.attr('user-id');
         var postUserId = _this.attr('post_user_id');
         var postUrl = $('input[name="postUrl"]').val();

         if (content.trim() == '') {
            showNullTips('不能提交空白信息');
             return false;
         }
         $.post(postUrl,{"data[post_id]":postId,"data[user_id]":userId,"data[reply_user_id]":replyUserId,"data[context]":content,"data[parent_id]":parentId,'postUserId':postUserId},function(res){
           if (res.result>0) {
                 window.location = res.url;
                 if (res.message) {
                     showEXP();
                 }else{
                     $("#reply_success2").fadeIn();
                     setTimeout("$('#reply_success2').fadeOut()",2000);
                 }
             }
         });

    });
    //10-09 
    // // 二级回复
    // $(".more_reply_btn").off("click").on("click",function(){
    //     $(this).parent().find($(".more_reply")).fadeIn();
    //     $(this).hide();
    // });
    //11-16 个人主页Ta的文章&评论
    //切换文章-评论
    $(".userinfo-topic").off('click').on('click',function(){
        $(this).addClass("active").siblings().removeClass("active");
        $(".UItab-topic").fadeIn().siblings().css("display","none");
        return false;
    });
    $(".userinfo-comment").off('click').on('click',function(){
        $(this).addClass("active").siblings().removeClass("active");
        $(".UItab-comment").fadeIn().siblings().css("display","none");
        return false;
    });
    //替换背景
    $("#topbg-change").off('click').on('click',function(){
        $("#bg-upload").click();
        return false;
    });



    // 关注
    $(document).on('click','.userfllow',function(){
        var _this = $(this);
        var userId = _this.attr('user-id');
        var postUrl = _this.attr('post-url');
        var isLogin = _this.attr('is-login');
        var type = _this.data('type');

        //var requestUrl = _this.attr('request-url');

        if (isLogin == '' || isLogin == null) {
            $('.dr_blackwall,.ni-loginBox').fadeIn();
            loginRefresh();
            return false;
        }

        $.post(postUrl,{'uid':userId},function(res) {
            console.log(res);
            if (res.result == 1) {
            window.location.reload();

            }
            if (res.result == -1) {
                window.location.reload()
            }


        });
    });

   
   
    // $('.fr').off('change').on('change',function(){
    //     var _this = $(this);
    //     var pointYear = _this.val();
    //     var postUrl = _this.attr('post-url');
    //     window.location=postUrl+'?year='+pointYear;
    // });

    // 显示隐藏DR理念弹框
    $('.deanpublish').off('click').on('click',function(){
        var _this = $(this);
        var isLogin = _this.attr('is_login');
        var requestUrl = _this.attr('request_url');

        if (isLogin == '' || isLogin == null) {
            $('.dr_blackwall,.ni-loginBox').fadeIn();
            loginRefresh();
            return false;
        }else{
            window.location=requestUrl;
            //showActionTips();
        }
    });

    //关闭爱情部落
    $('.flbc').off('click').on('click',function(){
        hideActionTips();
    });
    

    var loginRefresh = function() {
        var _this = $('.ni-loginBox');
        var requestUrl = _this.attr('request-url');
        window.loginInterval = setInterval(function() {
            $.get('/user/login', function(res) {
                if (res.result >= 0) {
                    alertFadeOut('.ni-loginBox');
                    window.location.href=requestUrl;
                    clearInterval(window.loginInterval);
                }
            });
        },1000);
    };

    //关注用户按钮文字切换
    $('.concernBtn').off('mouseenter').on('mouseenter',function(){
        $(this).html('取消关注');
    }).off('mouseleave').on('mouseleave',function(){
        $(this).html('已关注');
    });
    //选择分组
    $('.sg-list li').off('click').on('click',function(){
        if($(this).hasClass('activate')){
            $(this).removeClass('activate');
        }else{
            $(this).addClass('activate');
        }
        var selectedNum=$(this).parent().find('li.activate').length;
        $(this).parent().siblings('.sg-successMsg').find('#group_num').html(selectedNum);
    });
    //显示隐藏分组
    $('.grouping').off('click').on('click',function(){
        var groupBox = $(this).next('.setGrouping');
        if(groupBox.css('display') == 'none'){
            $('.setGrouping').hide();
            groupBox.show();
        }else{
            groupBox.hide();
        }
    });
    //确认分组
    $('.sg-submitBtn').off('click').on('click',function(){
        var groupBox =$(this).parents('.setGrouping');
        groupBox.hide();
        var changeStr = '';
        groupBox.find('.sg-list li').each(function(index){
            if($(this).hasClass('activate')){
                changeStr += $(this).html() + '、';
            }
        });
        if(changeStr){
            changeStr = changeStr.substring(0,changeStr.length-1);
            $(this).parents('.userinfo-fllow').find('.grouping i').html(changeStr).attr('title',changeStr);
        }
    });
    //显示隐藏分组
    $('.sg-closeBtn,.sg-cancelBtn').off('click').on('click',function(){
        $(this).parents('.setGrouping').hide();
    });

    //我收到的消息：回复框
    $('#myReplyList .confirmBtn').off('click').on('click',function(){
        var revBox = $(this).parents('li').find('.reviewBox');
        if(revBox.css('display') == 'none'){
            $('.reviewBox').hide();
            revBox.show();
        }else{
            revBox.hide();
        }
    });

  
});

function show_message($message){
  $('.dr_blackwall').fadeIn();
  $('.haveexp').html($message).fadeIn();
  showTipsTimer = setTimeout(function(){
    $('.dr_blackwall,.haveexp').fadeOut();
    clearTimeout($message);
    },1000);
}

function showEXP(){
    $('.dr_blackwall,.haveexp').fadeIn();
    showTipsTimer = setTimeout(function(){
        $('.dr_blackwall,.haveexp').fadeOut();
        clearTimeout(showTipsTimer);
    },1000);
}

// 显示专属空间未公开提示框
function showspacePop(str){
    var spacePop = new Popping().init({
        hasTitle : false,
        content : str,
        hasBtns: true,
        btns: {
         confirm : '确认',
         cancel : '取消'
        },
        callback: function(res){
         //alert(res);  //返回结果(确定返回:true,取消返回:false)
        }
    });
}

var showTipsTimer = null;
function showEXP(){
    $('.dr_blackwall,.haveexp').fadeIn();
    showTipsTimer = setTimeout(function(){
        $('.dr_blackwall,.haveexp').fadeOut();
        clearTimeout(showTipsTimer);
    },1000);
}

//显示弹出框  DR理念弹
function hideActionTips(){
      $('.dr_blackwall,.actionTips').fadeOut()
}
function showActionTips(){
      $('.dr_blackwall,.actionTips').fadeIn()
}
//显示弹出框  回复我的
function replyDel(o,id,user_id,postUrl){
    removeObj = $(o).parents('li')[0];
    $('.dialogBox').show();
    $('.highlight').click(function(){
        $.post(postUrl,{"id":id,"user_id":user_id},function(res){
            location.reload();
        });
    });
}

//显示弹出框  我的文章
function showDialog(o,id,class_id,user_id,postUrl){
    var num = $('.topic_total').text();

    removeObj = $(o).parents('li')[0];
    $('.dialogBox').show();
    $('.highlight').click(function(){
        $.post(postUrl,{"id":id,"class_id":class_id,"user_id":user_id},function(res){
            if (res.result == 1 && num>=0) {
                var _now_num = parseInt(num)-1;
                $('span .topic_total').html(_now_num);
            }
        });
    });

}

//显示弹出框  我的收藏
function collectDel(o,id,user_id,postUrl){

    removeObj = $(o).parents('li')[0];
    $('.dialogBox').show();
    $('.highlight').click(function() {
        $.post(postUrl, {"id": id, "user_id": user_id}, function (res) {

            if(res.result == 1){

                $('.topic_total').text(res.love_num);
            }
        });
    });
}
//显示弹出框 积分提示
function showAlertDialog(content){
    $('.dialogBox .dialogBoxMain p').html(content);
    $('.dialogBox').show();
    $('.highlight').click(function(){
        hideDialog();
    });
}
function hideDialog(){
    $('.dialogBox').hide();
}
var showTipsTimer = null;
function showTipsDialog(content){
    $('.tipsBox').html(content).fadeIn();
    showTipsTimer = setTimeout(function(){
        $('.tipsBox').fadeOut();
        clearTimeout(showTipsTimer);
    },2000);
}

//删除列表项
var removeObj = null;
function removeItem(){
   
    $(removeObj).remove();
}

//配置提示信息
function setTips(str){
    $('.mySweetheart_tips span').html(str);
}
//显示提示信息
var tipsTimer = null;
function showTips(){
    $('.mySweetheart_tips').fadeIn();
    if(tipsTimer){clearTimeout(tipsTimer)}
    tipsTimer = setTimeout(function(){
        hideTips();
    },3000);
}
//隐藏提示信息
function hideTips(){
    $('.mySweetheart_tips').fadeOut();
    if(tipsTimer){clearTimeout(tipsTimer);}
}

//显示提示信息
var nullTipsTimer = null;
function showNullTips(str){
    $('.reply1 i.nullTips').html(str).fadeIn();
    if(nullTipsTimer){clearTimeout(nullTipsTimer)}
    nullTipsTimer = setTimeout(function(){
        hideNullTips();
    },3000);
}
//隐藏提示信息
function hideNullTips(){
    $('.reply1 i.nullTips').fadeOut();
    if(nullTipsTimer){clearTimeout(nullTipsTimer);}
}




/**
 * 纪念日提醒
 */
var myDayReminder = function(){
    var ess_i = 0;
    var ess_count = $('.table_myDayReminder').length;
    $('.myDayReminder_Ltop .next').click(function(){
        if(ess_i != ess_count-1)
        {
            ess_i ++;
            $('.table_myDayReminder').eq(ess_i).removeClass('hide').siblings('.table_myDayReminder').addClass('hide');
        }
    });
    $('.myDayReminder_Ltop .prev').click(function(){
        if(ess_i != 0)
        {
            ess_i --;
            $('.table_myDayReminder').eq(ess_i).removeClass('hide').siblings('.table_myDayReminder').addClass('hide');
        }
    });
}

/**
 * Date扩展
 */
Date.prototype.Format = function (fmt) {
    // 对Date的扩展，将 Date 转化为指定格式的String
    // 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符，
    // 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字)
    // 例子：
    // var time = new Date().Format("yyyy-MM-dd hh:mm:ss.S") ==> 2006-07-02 08:09:04.423
    // var time = new Date().Format("yyyy-M-d h:m:s.S")      ==> 2006-7-2 8:9:4.18
    var o = {
        "M+": this.getMonth() + 1, //月份
        "d+": this.getDate(), //日
        "h+": this.getHours(), //小时
        "m+": this.getMinutes(), //分
        "s+": this.getSeconds(), //秒
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度
        "S": this.getMilliseconds() //毫秒
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}



/*
 用途：检查输入手机号码是否正确
 输入：
 s：字符串
 返回：
 如果通过验证返回true,否则返回false

 */
function checkMobile(s) {
    var regu = /^[1][345678][0-9]{9}$/;
    var re = new RegExp(regu);
    if (re.test(s)) {
        return true;
    } else {
        return false;
    }
}

/*
 用途：检查输入的Email信箱格式是否正确
 输入：
 strEmail：字符串
 返回：
 如果通过验证返回true,否则返回false

 */
function checkEmail(strEmail) {
//var emailReg = /^[_a-z0-9]+@([_a-z0-9]+\.)+[a-z0-9]{2,3}$/;
    var emailReg = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
    if (emailReg.test(strEmail)) {
        return true;
    } else {
        return false;
    }
}


/*
 用途：检查输入字符串是否只由英文字母和数字和下划线组成
 输入：
 s：字符串
 返回：
 如果通过验证返回true,否则返回false

 */
function isNumberOr_Letter(s) {//判断是否是数字或字母

    var regu = /^[0-9a-zA-Z_\u4e00-\u9fa5]{2,16}$/i;
    var re = new RegExp(regu);
    if (re.test(s)) {
        return true;
    } else {
        return false;
    }
}


/*
 用途：检查输入字符串是否只由英文字母和数字和下划线组成
 输入：
 s：字符串
 返回：
 如果通过验证返回true,否则返回false

 */
function isNumberOr_Letters(s) {
//^[0-9a-zA-Z\u4e00-\u9fa5][0-9a-zA-Z\u4e00-\u9fa5_* \u00b7]{1,15}$
    var regu = /^[0-9a-zA-Z\u4e00-\u9fa5][0-9a-zA-Z_,\.;\:"'?!<<>>《》\、\，\。；：“‘！？\—（） \u4e00-\u9fa5]{2,}$/i;
    var re = new RegExp(regu);
    if (re.test(s)) {
        return true;
    } else {
        return false;
    }
}


