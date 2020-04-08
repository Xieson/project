<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{
	margin: 0;
	padding:0;
	}
	#name{
		
		
		border-radius: 1px;
		float: left;
		}
</style>
          <script>
          function datetime() {
     		 var now = new Date();
     		 document.getElementById("time").value = now.getFullYear() + "-"
     		 + (now.getMonth() + 1) + "-" + now.getDate();
     		 document.getElementById("time").value += " " + now.getHours() + ":"
     		 + now.getMinutes() + ":" + now.getSeconds();
     		 }
     		 window.setInterval("datetime()", 1000);
         </script>
</head>
<body>
<div style="border: 1px solid #102F5E;background-color: #8c807f">
	<div id="name"><span style="color: red;font-size: 30px;">谢松毕业设计</span></div><br>
	<div style="margin-left:200px;float: left;"><span style="font-size: 30px;">学生管理系统</span></div>
	<div style="margin-left: 70%;">
	当前时间:<input id="time" type="text" style="text-align: center;color: red;" disabled/><br>
	<span style="color: black;">欢迎来到学生管理系统</span>
	欢迎:<span style="color: red;">${username}</span>
	<a href="${pageContext.request.contextPath}/longout">退出登录</a>||<a href="${pageContext.request.contextPath}/allgrade"> 首頁</a>
</div>
</div>
<br>
</body>
</html>