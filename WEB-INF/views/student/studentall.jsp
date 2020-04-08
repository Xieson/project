<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>学生管理</title>
<style type="text/css">
*{
margin: 0;
padding: 0;
}
td{
		text-align: center;
	}
	img{
		width: 100px;
		height: 50px;
	}
	<!--1213-->
	body{margin:0;padding:100px 100px;position:relative;}
	#fd{	
			margin:0 auto;
			padding:14px 0;
			width:400px;
			height:100px;
			background:#eee;
			border:1px solid #ddd;
			text-align:center;
			position:aboslute;
			display:none;
			top:0;
			left:0;
			}
	#fd #q{width:120px;height:22px;}
</style>
</head>
<body>
<jsp:include page="../longout.jsp" flush="true"></jsp:include>
		
	<table width="100%" border="1" cellspadding="0" cellspacing="0" >
		<tr>
			<th>学生姓名</th>
			<th>学生性别</th>
			<th>学生年龄</th>
			<th>学号</th>
			<th>学生照片</th>
			<th>所在班级编号</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${list}" var="li">
		<tr>
			<td>${li.name}</td>
			<td>${li.gender}</td>
			<td>${li.age}</td>
			<td>${li.studentid}</td>
			<td><img alt="${pageContext.request.contextPath}/imager/${li.studentimager}" src="${pageContext.request.contextPath}/imager/${li.studentimager}"></td>
			<td>${li.gradeid}</td>
			<td>
			<a href="${pageContext.request.contextPath}/deleteid?id=${li.id}&gradeid=${li.gradeid}">删除</a>
			<a href="${pageContext.request.contextPath}/updatestudent?id=${li.id}">编辑</a>
			</td>
		</tr>
		</c:forEach>
	</table>
	<div style="width: 50px;height: 50px;margin: 0 auto;">
	<a href="${pageContext.request.contextPath}/addstudent?gradeid=${gradeid}"><img alt="" src="${pageContext.request.contextPath}/imager/add.jpg" style="width: 50px;height: 50px;" title="添加学生"></a>
	</div>
	
	
	<div id="fd">
			<form action="${pageContext.request.contextPath}/submitpassword" method="post">
			<h4>请输入权限密码</h4>
			<input type="text" id="q" placeholder="请输入权限密码"></input><br>
			<input type="button" value="确定" style="width: 100px;height: 40px;background: blue;">
		</form>
	</div>
	<script type="text/javascript">
	function delete1() {
		alert("删除成功");
	}
	</script>
	
</body>
</html>