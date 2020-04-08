<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
margin: 0;
padding: 0;

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
	<form id="for" action="${pageContext.request.contextPath}/updategrade" method="post" enctype="multipart/form-data">
		<h4 style="color: red;margin-left: 170px;">编辑</h4>
		<input type="hidden" value="${grade.id}" name="id" required="required">
	班级名字:<input type="text" value="${grade.gname}"	name="gname" required="required"><br>
	班&nbsp;主&nbsp;任&nbsp;:<input type="text" value="${grade.gteacher }" name="gteacher"><br>
	图&nbsp;&nbsp;&nbsp;片&nbsp;&nbsp;&nbsp;:<br>
	<img alt="看不到我??" src="${pageContext.request.contextPath}/imager/${grade.gimager}" style="margin-left: 100px;"><br>
	<input type="file" name="file"><br>
	<input type="submit" value="保存" style="width:120px;height:50px;background: blue;">
	</form>
	</div>
</body>
</html>