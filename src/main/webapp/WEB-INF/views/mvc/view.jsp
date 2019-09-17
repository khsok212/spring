<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${cp }/js/jquery-3.4.1.min.js"></script>
<script>
	$(document).ready(function(){
		//pathBtn이 클릭 될 때 이벤트 핸들러
		$("#pathBtn").on("click", function(){
			var subpath = $("input[name=path]:checked").val();
			$("#frm").attr("action", "${cp}/mvc/path/" + subpath);
			$("#frm").submit();
		})
	})
</script>
</head>
<body>
	<h2>mvc/view.jsp</h2>
	<h3>requestParam</h3>
	<form action="${cp }/mvc/requestParam" method="post">
		userId : <input type = "text" name="userId" value="sally"/><br><br>
		<input type = "submit" value = "전송"/>
	</form>
	
	<hr>
	<h3>pathvariable</h3>
	<form id = "frm">
		<input type = "radio" name = "path" value = "brown" checked="checked">brown<br>
		<input type = "radio" name = "path" value = "sally">sally<br><br>
		<input type = "button" id = "pathBtn" value = "전송"/>
	</form>
	
	
</body>
</html>