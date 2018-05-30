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
    
    <title>学生详情</title>
    
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
  	<th>姓名</th>
  	<th>性别</th>
  	<th>民族</th>
  	<th>年龄</th>
  	<th>生日</th>
  	<th>学号</th>
  	<th>身份证号</th>
  	<th>地址</th>
  	<th>qq</th>
  	<th>电话</th>
  	<th>邮箱</th>
  	<th>紧急电话</th>
  	
  	
  </tr>
     <c:forEach var="n" items="${requestScope.nameHackfan}">
      <input type="text" value="${n.id}" name="id" style="display: none">
  	<td><c:out value="${n.id}"></c:out></td>
  	<td><c:out value="${n.name}"></c:out></td>
  	<td><c:out value="${n.gender}"></c:out></td>
  	<td><c:out value="${n.nation}"></c:out></td>
  	<td><c:out value="${n.age}"></c:out></td>
  	<td><c:out value="${n.brithday}"></c:out></td>
  	<td><c:out value="${n.stuid}"></c:out></td>
  	<td><c:out value="${n.idCard}"></c:out></td>
  	<td><c:out value="${n.address}"></c:out></td>
  	<td><c:out value="${n.qq}"></c:out></td>
  	<td><c:out value="${n.phone}"></c:out></td>
  	<td><c:out value="${n.email}"></c:out></td>
  	<td><c:out value="${n.danger_phone}"></c:out></td>
	</c:forEach>
	</table>
	
	学生修改：		<input type="text" name="username">
   电话修改：		<input type="text"  name="phone">
  邮箱修改：	<input type="text"  name="email">
   身份证号修改：<input type="text"  name="idCard">
   备注：<input type="text"  name="comment">
  <button type="submit">提交</button> 
  </form>
 </body>
</html>
