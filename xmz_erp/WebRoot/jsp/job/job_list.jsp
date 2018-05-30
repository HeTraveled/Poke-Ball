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
    
    <title>岗位列表</title>
    
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
  
  <body >
         <%   //user取值，在Enterprise_update接过来
String a=(String)session.getAttribute("user");
//out.print("id222:"+a); 
        %>
        
        
   <form action="<%=basePath%>Job/list" method="post" > 
  <button  type="submit">查看所有岗位</button>

  </form> 
  

  <form action="<%=basePath%>Job/enterprise_to_job_binding" method="post">
  <table>
  
    <tr>
  	<th>id</th>
  	<th>岗位名</th>
  	<th>删除</th>
  	<th>详情</th>
  	<th><input type="text" value="<%=a%>" name="enterprise_id" style="display: none"></th>
  	<th> <button type="submit">绑定</button></th>
  </tr>
   
     <c:forEach var="l" items="${list}">
  <tr>
  	<td><c:out value="${l.id}"></c:out></td>
  	<td><c:out value="${l.name}"></c:out> </td>
 	<td><a href="<%=basePath%>Job/job_delete/${l.id}">删除</a></td>
   	<td><a href="<%=basePath%>Job/job_Hackfan/${l.id}">详情</a></td>
  <td> <input type="checkbox" name="name" value="${l.name}" ></td>
 <%--  <td><input type="text" value="${l.id}" name="job_id" style="display: none"></td> --%>
  </tr>
</c:forEach>

</table>

    	
  </form>



  </body>
</html>
