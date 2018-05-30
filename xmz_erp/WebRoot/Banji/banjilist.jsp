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
    
    <title>班级列表</title>
    
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
  
  
   ${bid}
  <form action="<%=basePath%>banjiadmin/banjilist" method="post">
  <button  type="submit">查看所有班级信息</button>
  </form>
   <form action="<%=basePath%>banjiadmin/major_to_banji_binding" method="post">
  <table>
    <tr>
  	<th>id</th>
  	<th>班级</th>
  	<th><input type="text" value="${bid}" name="major_id" style="display: none"></th>
  	<th> <button type="submit">绑定</button></th>
  </tr>
     <c:forEach var="n" items="${name}">
  <tr>
  	<td><c:out value="${n.id}"></c:out></td>
  	<td><c:out value="${n.name}"></c:out> </td>
  
	<td><a href="<%=basePath%>banjiadmin/banjidelete/${n.id}">删除</a></td>
  	<td><a href="<%=basePath%>banjiadmin/banjiupdate/${n.id}">修改名称</a></td>
  	<td><a href="<%=basePath%>banjiadmin/banjiHackfan/${n.id}">详情</a></td>	
  	<td> <input type="checkbox" name="name" value="${n.name}" ></td>
 
  </tr>
</c:forEach>
</table>
</form>
  </body>
</html>
