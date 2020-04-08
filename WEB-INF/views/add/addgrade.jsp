<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加班级</title>
</head>
<body>
<jsp:include page="../longout.jsp" flush="true"></jsp:include>
	<div style="width: 400px;margin: 0 auto;">
	<form name="for" id="for" action="${pageContext.request.contextPath}/addgrade" method="post" enctype="multipart/form-data">
		<h4 style="color: red;margin-left: 170px;">添加班级</h4>
		<input type="hidden" name="id">
	班级名字:<input type="text" name="gname" required="required"><br>
	班&nbsp;主&nbsp;任&nbsp;:<input type="text" name="gteacher" required="required"><br>
	添加图片:<br>
	<input type="file" name="file"><br>
	<input type="submit" value="保存" style="width:120px;height:50px;background: blue;">
	</form>
	</div>
	
</body>

</script>
</html>