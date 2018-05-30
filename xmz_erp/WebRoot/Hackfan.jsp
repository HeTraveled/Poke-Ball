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
    
    <title>用户详情</title>
    
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
  <form action="<%=basePath%>admin/PeopleUpdateSuccess" method="post">
<table>
    <tr>
  	<th>id</th>
  	<th>用户名</th>
  	<th>密码</th>
  	<th>手机号</th>
  	<th>邮箱</th>
  	<th>身份证</th>
  	<th>备注</th>
  </tr>
     <c:forEach var="u" items="${requestScope.userHackfan}">
      <input type="text" value="${u.id}" name="id" style="display: none">
  	<td><c:out value="${u.id}"></c:out></td>
  	<td><c:out value="${u.username}"></c:out></td>
  	<td><c:out value="${u.password}"></c:out></td>
  	<td><c:out value="${u.phone}"></c:out></td>
  	<td><c:out value="${u.email}"></c:out></td>
  	<td><c:out value="${u.idCard}"></c:out></td>
  	<td><c:out value="${u.comment}"></c:out></td>
	</c:forEach>
	</table>
	
	用户名修改：		<input type="text" name="username">
   电话修改：		<input type="text"  name="phone">
  邮箱修改：	<input type="text"  name="email">
   身份证号修改：<input type="text"  name="idCard">
   备注：<input type="text"  name="comment">
  <button type="submit">提交</button> 
  </form>
 </body>
</html>
