<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/Myvote/">
<meta content="text/html; charset=utf-8" />
<title></title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
$(function(){
	alert($("#vsId").val());
	$.post("option/view?vsId="+$("#vsId").val(),function(data){
		alert(data);
	},"json");
});
</script>
</head>
<body>
<jsp:include page="top.jsp" />
<div id="vote" class="wrap">
	<h2>查看投票</h2>
	<ul class="list">
		<li>
			<input type="hidden" name="vsId" value="${subject.vsId }" id="vsId">
			<h4>${subject.vsTitle }</h4>
			<p class="info">共有${subject.optionCount } 个选项，已有${subject.userCount }个网友参与了投票。</p>
				<ol>
						<div class="rate">
							<div class="ratebg"><div class="percent" style="width:<s:property value='statPercent[id]'/>%"></div></div>
							<p>票<span>(%)</span></p>
						</div>
					</li>
				</ol>
				<div class="goback"><a href="Subject!list.action?entityId=<s:property value='subject.id'/>">返回投票列表</a></div>
		</li>
	</ul>
</div>
<div id="footer" class="wrap">
	源辰信息 &copy; 版权所有
</div>
</body>
</html>
