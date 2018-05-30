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
    
    <title>课程列表</title>
    
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
  
  
  
  
  <form action="<%=basePath%>courseadmin/courselist" method="post">
  <button  type="submit">查看所有课程信息</button>
  </form> 
  <form action="<%=basePath%>courseadmin/major_to_course_binding" method="post">
  <table>
    <tr>
  	<th>id</th>
  	<th>课程名称</th>
  	<th><input type="text" value="${mid} " name="major_id" style="display: none"></th>
  	<th> <button type="submit">绑定</button></th>
  	
  </tr>
     <c:forEach var="n" items="${name}">
  <tr>
  	<td><c:out value="${n.id}"></c:out></td>
  	<td><c:out value="${n.name}"></c:out> </td>
  
	<td><a href="<%=basePath%>courseadmin/coursedelete/${n.id}">删除</a></td>
  	<td><a href="<%=basePath%>courseadmin/courseupdate/${n.id}">修改名称</a></td>
  	<td><a href="<%=basePath%>courseadmin//${n.id}">详情</a></td>	
  	<td> <input type="checkbox" name="name" value="${n.name}" ></td>
 
  </tr>
</c:forEach>
</table>
</form>

  </body>
</html>
