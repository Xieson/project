<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加学生</title>
</head>
<body>
<jsp:include page="../longout.jsp" flush="true"></jsp:include>
	<div style="width: 400px;margin: 0 auto;background-color: #8c807f">
	<form name="for" id="for" action="${pageContext.request.contextPath}/addstudentone" method="post" enctype="multipart/form-data">
		<h4 style="color: red;margin-left: 170px;">添加学生</h4>
		<input type="hidden" value="${gradeid}" name="gradeid">
	学生名字:<input type="text" name="name" required="required"><br>
	年&nbsp;&nbsp;&nbsp;龄&nbsp;&nbsp;&nbsp;:<input type="text" name="age" required="required"><br>
	性&nbsp;&nbsp;&nbsp;别&nbsp;&nbsp;&nbsp;:<select name="gender">
			<option value="男" selected="selected">男</option>
			<option value="女">女</option>
		</select><br>
	学&nbsp;&nbsp;&nbsp;号&nbsp;&nbsp;&nbsp;:<input type="text" name="studentid" required="required"><br>
	图&nbsp;&nbsp;&nbsp;片&nbsp;&nbsp;&nbsp;:<input type="file" name="file"><br>
	<input type="submit" value="保存" style="margin-left:40px;width:120px;height:30px;background: blue;">
	</form>
	</div>
	
</body>
</html>