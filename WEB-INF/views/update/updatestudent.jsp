<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生信息修改</title>
<style type="text/css">
*{
margin: 0;
padding: 0;
font-size: 20px;
}
img{
width:100px;
height:100px;
}
#for{
	 position: relative;
    width: 520px;
    padding: 35px 35px 0;
    background: rgba(0,0,0,0.35);
}
</style>
</head>
<body>
<jsp:include page="../longout.jsp" flush="true"></jsp:include>
	<div style="width: 400px;margin: 0 auto;">
	<form id="for" action="${pageContext.request.contextPath}/saveupdatestudent" method="post" enctype="multipart/form-data">
		<h4 style="color: red;margin-left: 170px;">编辑</h4>
		<input type="hidden" value="${list.id}" name="id">
	学生姓名:<input type="text" value="${list.name}"	name="name"><br>
	学生年龄:<input type="text" value="${list.age}" name="age"><br>
	学生性别:<select name="gender">
				<option <c:if test="${lsit.gender=='男'}">selected</c:if> value="男">男</option>
				<option <c:if test="${lsit.gender=='男'}">selected</c:if> value="女">女</option>
			</select><br>
	学生学号:<input type="text" value="${list.studentid}" name="studentid"><br>
	学生图片:<br>
	<img alt="${pageContext.request.contextPath}/imager/${list.studentimager}" src="${pageContext.request.contextPath}/imager/${list.studentimager}" style="margin-left: 100px;"><br>
	<input type="file" name="file"><br>
	所在班级:<select name="gradeid">
				<c:forEach items="${grade}" var="gr">
				<!-- <option value="${gr.id}" selected=${gr.id}==1?selected:null;>${gr.gname}</option>
				 -->
				 <option value="${gr.id}" <c:if test="${gr.id==list.gradeid}">selected</c:if>>${gr.gname}</option>
				</c:forEach>
			</select><br>
	<input type="submit" value="保存" style="width:120px;height:50px;background: blue;">
	</form>
	</div>
</body>
</html>