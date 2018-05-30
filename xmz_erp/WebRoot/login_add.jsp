<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script  src="js/jquery.js"></script>
  </head>
  
  <body>
	<form action="<%=basePath%>admin/login_add" method="post">
     	 请输入注册姓名：<input type="text" name="username">
     	 请输入密码：      	<input type="password" name="password">
     	 请再次输入密码：<input type="password" name="password2">
     	 请输入电话：	<input type="text" name="phone">     
        <button  type="submit">注册</button>
       </form>
	</body>
</html>
