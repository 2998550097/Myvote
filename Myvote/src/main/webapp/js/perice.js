//面向对象
var dSearchStartBudget, dSearchEndBudget, dSearchStartWeight, dSearchEndWeight;
var dSearchColorArray = [], dSearchJingduArray = [], dSearchQiegongArray = [], dSearchDuichenArray = [], dSearchPaoguangArray = [], dSearchYingguangArray = [];


var HighLevelSearch = (function () {
    return {

        dToSearch: function () {
            $(".serach_bottom").show();
            //                var data = this.dToGetArgs();
            var sb = $(".spline").eq(0).find("input:text").eq(0).val();
            var eb = $(".spline").eq(0).find("input:text").eq(1).val();
            var sw = $(".spline").eq(1).find("input:text").eq(0).val();
            var ew = $(".spline").eq(1).find("input:text").eq(1).val();
            if (isNaN(sb) || isNaN(eb)) {
                alert("预算不是合法数字.");
                return;
            }
            if (isNaN(sw) || isNaN(ew)) {
                alert("钻重不是合法数字.");
                return;
            }
            this.SearchPage();
        },
        dSearchReset: function () {
            setBudgetValue("", "");
            setWeightValue("", "");

            $(".gj_search").find("i").each(function () {
                $(this).removeClass("pp_border");
            });
            dSearchColorArray = [];
            dSearchJingduArray = [];
            dSearchQiegongArray = [];
            dSearchDuichenArray = [];
            dSearchPaoguangArray = [];
            dSearchYingguangArray = [];
        },
        dToGetArgs: function () {
            dSearchStartBudget = $(".spline").eq(0).find("input:text").eq(0).val();
            dSearchEndBudget = $(".spline").eq(0).find("input:text").eq(1).val();

            dSearchStartWeight = $(".spline").eq(1).find("input:text").eq(0).val();
            dSearchEndWeight = $(".spline").eq(1).find("input:text").eq(1).val();

            var data = [];
            data.push("startBudget");
            data["startBudget"] = dSearchStartBudget;
            data.push("endBudget");
            data["endBudget"] = dSearchEndBudget;
            data.push("startWeight");
            data["startWeight"] = dSearchStartWeight;
            data.push("endWeight");
            data["endWeight"] = dSearchEndWeight;
            data.push("color");
            data["color"] = dSearchColorArray.join(',');
            data.push("jingdu");
            data["jingdu"] = dSearchJingduArray.join(',');
            data.push("qiegong");
            data["qiegong"] = dSearchQiegongArray.join(',');

            data.push("duichen");
            data["duichen"] = dSearchDuichenArray.join(',');
            data.push("paoguang");
            data["paoguang"] = dSearchPaoguangArray.join(',');
            data.push("yingguang");
            data["yingguang"] = dSearchYingguangArray.join(',');
            return data;
        },
        SearchPage: function () { }
    };
})();

//设置预算
function setBudgetValue(s,e) {
    $(".theline").eq(0).find("input:text").eq(0).val(s);
    $(".theline").eq(0).find("input:text").eq(1).val(e);
    dSearchStartBudget = s;
    dSearchEndBudget = e;
}
//设置预算
function setWeightValue(s, e) {
    $(".theline").eq(1).find("input:text").eq(0).val(s);
    $(".theline").eq(1).find("input:text").eq(1).val(e);
    dSearchStartWeight = s;
    dSearchEndWeight = e;
}


$(function () {
    /*高级搜索颜色净度*/
    $('.the_color i').each(function (index) {
        $(this).click(function () {
            $(this).toggleClass("pp_border");
            var c = $(this).parent().parent();

             //颜色
            if (c.hasClass('color_cs')) {
                dSearchColorArray = [];
                c.find("i[class$='pp_border']").each(function () {
                    dSearchColorArray.push($(this).text());
                });
            }
            //净度
            else if (c.hasClass('clear_cs')) {
                dSearchJingduArray = [];
                c.find("i[class$='pp_border']").each(function () {
                    dSearchJingduArray.push($(this).text());
                });
            } //切工
            else if (c.hasClass('the_qg')) {
                dSearchQiegongArray = [];
                c.find("i[class$='pp_border']").each(function () {
                    dSearchQiegongArray.push($(this).text());
                });
            } //对称
            else if (c.hasClass('the_dc')) {
                dSearchDuichenArray = [];
                c.find("i[class$='pp_border']").each(function () {
                    dSearchDuichenArray.push($(this).text());
                });
            } //抛光
            else if (c.hasClass('the_pg')) {
                dSearchPaoguangArray = [];
                c.find("i[class$='pp_border']").each(function () {
                    dSearchPaoguangArray.push($(this).text());
                });
            } //荧光
            else if (c.hasClass('the_yg')) {
                dSearchYingguangArray = [];
                c.find("i[class$='pp_border']").each(function () {
                    dSearchYingguangArray.push($(this).text());
                });
            }
        });
    });
});

