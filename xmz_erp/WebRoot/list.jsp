<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script  src="js/jquery.js"></script>
  </head>
  
  <body>
  <form action="<%=basePath%>admin/list" method="post">
  <button  type="submit">查看所有用户信息</button>
  </form>
  <table>
    <tr>
  	<th>id</th>
  	<th>用户名</th>
  	<th>权限</th>
  </tr>
     <c:forEach var="u" items="${users}">
  <tr>
  	<td><c:out value="${u.id}"></c:out></td>
  	<td><c:out value="${u.username}"></c:out> </td>
  	<td><c:out value="${u.power_id}"></c:out> </td>
	<td><a href="<%=basePath%>admin/delete/${u.id}">删除</a></td>
  	<td><a href="<%=basePath%>admin/update/${u.id}">修改密码</a></td>
  	<td><a href="<%=basePath%>admin/Hackfan/${u.username}">详情</a></td>	
  	<td><a href="<%=basePath%>admin/chmod/${u.username}">权限修改</a></td>	
  </tr>
</c:forEach>
</table>
  </body>
</html>
