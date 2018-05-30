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
    
    <title>班级详情</title>
    
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

  
  <form action="<%=basePath%>banjiadmin/banjilist" method="post">
   <input type="text" value="${mid}" name="id" style="display: none">
  <button  type="submit">绑定班级</button>
 <%--  <form action="<%=basePath%>majoradmin/majorcourseUpdate" method="post"> --%>
<table>
    <tr>
    
  	<th>班级</th>
  
  
  </tr>
   <c:forEach var="n" items="${requestScope.majorHackfan}">
       <input type="text" value="${n.id}" name="id" style="display: none">
        
  </c:forEach> 
     <c:forEach var="b" items="${requestScope.banjiHackfan}">
     <%-- <input type="text" value="${n.id}" name="id" style="display: none">  --%>
      
  	<%-- <td><c:out value="${b.id}"></c:out></td> --%>
  
  	 <td><a href="<%=basePath%>majoradmin/majorbanjidelete/${b.id}">
    <c:out value="${b.name}"></c:out></a></td>
  	
	</c:forEach>
	</table>
	
	
  

  </form>
 </body>
</html>
