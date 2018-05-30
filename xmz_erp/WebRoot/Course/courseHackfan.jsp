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
    
    <title>课程详情</title>
    
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
  <form action="<%=basePath%>courseadmin/majorcourseUpdate" method="post">
<table>
    <tr>
    <th>id</th>
  	<th>课程1</th>
  	<th>课程2</th>
  	<th>课程3</th>
  	<th>课程4</th>
  	<th>课程5</th>
  
  </tr>
     <c:forEach var="n" items="${requestScope.nameMajorHackfan}">
      <input type="text" value="${n.id}" name="id" style="display: none">
  	<td><c:out value="${n.id}"></c:out></td>
  	<td><c:out value="${n.course1}"></c:out></td>
  	<td><c:out value="${n.course2}"></c:out></td>
  	<td><c:out value="${n.course3}"></c:out></td>
  	<td><c:out value="${n.course4}"></c:out></td>
  	<td><c:out value="${n.course5}"></c:out></td>
  	
	</c:forEach>
	</table>
	
	
  课程1：		<input type="text"  name="course1">
   课程2：	<input type="text"  name="course2">
    课程3：<input type="text"  name="course3">
   课程4：<input type="text"  name="course4">
   课程4：<input type="text"  name="course5">
  <button type="submit">提交</button> 
  </form>
 </body>
</html>
