<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<base href="/MyDarry/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>验证码</title>

<script type="text/javascript" src="headerJs/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	function reload(){
		$("#signcode").remove();
		var str='<img src="signcode/get" onclick="reload()" id="signcode">';
		$("#code").append(str);
	}
	function tijiao(){
		$.post("signcode/check",function(data){
			
		})
	}
</script>
</head>
<body>
	<div id="code">
		<img src="signcode/get" onclick="reload()" id="signcode">
	</div>
	<button onclick="tijiao()">提交</button>
</body>
</html>