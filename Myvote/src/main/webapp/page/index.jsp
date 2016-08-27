<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/Myvote/">
<meta content="text/html; charset=utf-8" />
<title>投票列表</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>

<script type="text/javascript">
	$(function(){
		$.post("subject/get",function(data){
			var str="";
			for(var i=0;i<data.length;i++){
				str+='<li '+(i%2==0?'class="odd"' : '')+'><h4><a href="subject/view?vsId='+data[i].vsId+'">'+data[i].vsTitle+'</a></h4>';
				str+='<div class="join"><a href="subject/view?vsId="'+data[i].vsId+'>我要参与</a></div>';
				str+='<p class="info">共有'+data[i].optionCount+'个选项，已有 '+data[i].userCount+'个网友参与了投票。</p></li>';
			}
			$("#subjectList").append(str);
		},"json");
	});
</script>
</head>
<body>
<jsp:include page="top.jsp" />
<div id="vote" class="wrap">
	<h2>投票列表</h2>
	<ul class="list" id="subjectList">
		<!-- <li class="odd" >
			<h4>				
				<a href="Vote!view.action?entityId="></a>
			</h4>
			<div class="join"><a href="Vote.action?entityId=">我要参与</a></div>
			<p class="info">共有  个选项，已有  个网友参与了投票。</p>
		</li> -->
	</ul>
</div>
<div id="footer" class="wrap">
	源辰信息 &copy; 版权所有
</div>
</body>
</html>
