<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
<style type="text/css">
*{

	margin: 0;
	padding: 0;
	font-size: 20px;
}
	#for{
	 position: relative;
    width: 270px;
    max-width: 100%;
    padding: 35px 35px 0;
    margin: 150px auto;
    background: rgba(0,0,0,0.35);
    overflow: hidden;
}
</style>
</head>
<body>
	
	<form id="for" action="${pageContext.request.contextPath}/login" method="post">
			<h3 style="color: black;">登录</h3>
			<c:if test="${not empty error}">
				<span style="color:red;">${error}</span>
			</c:if>
			<br>
		用户名:<input type="text" name="username" placeholder="请输入用户名"><br>
		密&nbsp;&nbsp;&nbsp;码:<input type="password" name="password" placeholder="请输入密码"><br>
		<input type="submit" value="登录" style="width: 100px;margin-left: 75px;height: 50px;background-color: blue;">
	</form>
</body>
</html>