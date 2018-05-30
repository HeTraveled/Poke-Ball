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
    
    <title>学生列表</title>
    
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
   <%  //a标签传值，下面接收
            String id=request.getParameter("id");  
           
           // name=new String(name.getBytes("iso-8859-1"),"gb2312");  
            out.print("id:"+id);  
          
        %> 
    
  
  <form action="<%=basePath%>studentadmin/studentlist" method="post">
  <button  type="submit">查看所有学生信息</button>
  </form>
  
   <form action="<%=basePath%>studentadmin/banji_to_student_binding" method="post">
  <table>
    <tr>
  	<th>id</th>
  	<th>学生名称</th>
  	<th><input type="text" value="<%=request.getParameter("id")%>" name="banji_id" style="display: none"></th>
  	<th> <button type="submit">绑定</button></th>
  
  </tr>
     <c:forEach var="u" items="${uu}">
  <tr>
  	<td><c:out value="${u.id}"></c:out></td>
  	<td><c:out value="${u.name}"></c:out> </td>
  
	<td><a href="<%=basePath%>studentadmin/studentdelete/${u.id}">删除</a></td>
  	<td><a href="<%=basePath%>studentadmin/studentupdate/${u.id}">修改名称</a></td>
  	<td><a href="<%=basePath%>studentadmin/studentHackfan/${u.id}">详情</a></td>	
  	<td> <input type="checkbox" name="name" value="${u.name}" ></td>
  	
 
  </tr>
</c:forEach>
</table>
</form>

  </body>
</html>
