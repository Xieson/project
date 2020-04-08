<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎来到班级页面</title>
<style type="text/css">
	*{
	margin: 0;
	padding:0;
	}
	img{
		width: 100px;
		height: 50px;
	}
	td{
		text-align: center;
	}
</style>
</head>
<body>
<jsp:include page="../longout.jsp" flush="true"></jsp:include>
	<div style="float:left;">
	<form action="${pageContext.request.contextPath}/selete" method="post">
		快速查询班级信息:<input type="text" name="conditions" value="<c:if test="${cond!=null}">${cond}</c:if>" placeholder="请输入查询条件"><input type="submit" value="查询">
	</form>
	</div>
	<div>一共查询到:【${list.size()}】条数据</div>
	
	<table width="100%" border="1" cellspadding="0" cellspacing="0" >
		<tr>
			<th>班级图片</th>
			<th>班级</th>
			<th>班主任</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${list}" var="li">
		<tr>
			<td><img alt="${pageContext.request.contextPath}/imager/${li.gimager}" src="${pageContext.request.contextPath}/imager/${li.gimager}"></td>
			<td>${li.gname}</td>
			<td>${li.gteacher}</td>
			<td>
			<a href="${pageContext.request.contextPath}/editor?id=${li.id}">编辑</a>
			<a href="${pageContext.request.contextPath}/view?id=${li.id}">查看班级人员信息</a>
			</td>
		</tr>
		</c:forEach>
		
	</table>
	<div style="width: 50px;height: 50px;margin: 0 auto;">
	<a href="${pageContext.request.contextPath}/add"><img alt="" src="${pageContext.request.contextPath}/imager/add.jpg" style="width: 50px;height: 50px;" title="添加班级"></a>
	</div>
</body>
</html>