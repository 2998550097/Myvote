/*验证弹窗*/
$('#newBuy').click(
		function() {
			if ($("#ctl00_content_ddlHandSize").val() == -1) {
				alert("请选择手寸。");
				return;
			}
			if ($(".thr_first .iborder").text() == null
					|| $(".thr_first .iborder").text() == "") {
				alert("请选择材质");
				return;
			}
			var fontlen = strlength($("#ipt_font").val());
			if (fontlen > 10) {
				alert("刻字数超过了10个字符。");
			}
			// 判断是否登录
			if ('True' == 'True') {
				// 判断在购物车中是否存在
				$.get("/API/DarryringYzAPI.ashx", {
					action : 'cart'
				}, function(data) {
					if (data == "false") {
						// 购物中不存在
						$.get("/API/DarryringYzAPI.ashx", {
							action : 'darryhome'
						}, function(dat) {
							// 未购买过
							var json = $.parseJSON(dat);
							if (dat == "false") {
								$('.yz_password').show();
								$(".toyz_begin").show();
								$('.backall').show();
								$(".gmg").hide();
							} else {
								// 购买过
								$("#cg").text(json.Name);
								$(".ygmg").show();
								$('.yz_password').show();
								$(".toyz_begin").hide();
								$('.backall').show();
								// addCartFun();
								// cartsynccrm(); // 数据上报CRM
							}
						});
					} else {
						// 购物车中存在
						$(".addcart").hide();
						$('.yz_password').show();
						$(".toyz_begin").hide();
						$('.backall').show();
						$(".carthave").show();
					}
				});
			} else {
				// 用户未登录

				$('.dr_Registsign,.dr_blackwall').show();
				loginRefresh();

			}
		});

// 弹窗的一个立即购买
$("#btnBuy").click(function() {
	var name = $("#textName").val();
	var id = $("#textIDCard").val();
	sirname = $("#textName").val();
	sircode = $("#textIDCard").val();
	var nat = $("#textNat option:selected").text();
	$.post("/API/DarryringYzAPI.ashx", {
		action : 'session',
		name : name,
		id : id,
		nat : nat
	});
	toBuy();
	$(".yz_password").hide();
	$(".wgm").hide();
});

$("#newCart").click(
		function() {
			if ($("#ctl00_content_ddlHandSize").val() == -1) {
				alert("请选择手寸。");
				return;
			}
			if ($(".thr_first .iborder").text() == null
					|| $(".thr_first .iborder").text() == "") {
				alert("请选择材质");
				return;
			}
			// 判断是否登录
			var fontlen = strlength($("#ipt_font").val());
			if (fontlen > 10) {
				alert("刻字数超过了10个字符。");
				return;
			}

			if ('True' == 'True') {
				// 判断在购物车中是否存在
				$.get("/API/DarryringYzAPI.ashx", {
					action : 'cart'
				}, function(data) {
					if (data == "false") {
						// 购物中不存在
						// 初始化数据
						$.get("/API/DarryringYzAPI.ashx", {
							action : 'darryhome'
						}, function(data) {
							var json = $.parseJSON(data);
							// 未购买过
							if (data == "false") {
								$('.yz_password').show();
								$(".toyz_begin").show();
								$('.backall').show();
								$(".gmg").hide();
							} else {
								// 购买过
								$("#cg").text(json.Name);
								$(".ygmg").show();
								$('.yz_password').show();
								$(".toyz_begin").hide();
								$('.backall').show();
							}
						});
					} else {
						// 购物车中存在
						$(".addcart").hide();
						$(".toyz_begin").hide();
						$('.backall').show();
						$('.yz_password').show();
						$(".carthave").show();
					}
				});
			} else {
				// 用户未登录

				$('.dr_Registsign,.dr_blackwall').show();
				loginRefresh();

			}
		});
