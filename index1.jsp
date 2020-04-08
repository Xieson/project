<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/home?page=1">首页</a>
<a href="${pageContext.request.contextPath}/home?previous=-1">上一页</a>
<a href="${pageContext.request.contextPath}/home?next=+1">下一页</a>
<a href="${pageContext.request.contextPath}/home?back=${page.total}">尾页</a>
<a href="${pageContext.request.contextPath}/home?current=1">当前页/总页数</a>
<a href="${pageContext.request.contextPath}/home?total=1">一共多少页</a>
</body>
</html>