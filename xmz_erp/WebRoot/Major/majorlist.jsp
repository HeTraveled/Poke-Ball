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
    
    <title>专业列表</title>
    
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
   <%-- <%  //a标签传值，下面接收
            String id=request.getParameter("id");  
           
           // name=new String(name.getBytes("iso-8859-1"),"gb2312");  
            out.print("id:"+id);  
          
        %> --%> 
  
  
  <form action="<%=basePath%>majoradmin/majorlist" method="post">
  <button  type="submit">查看所有专业信息</button>
  </form>
  <form action="<%=basePath%>majoradmin/grade_to_major_binding" method="post">
  <table>
    <tr>
  	<th>id</th>
  	<th>专业名称</th>
  	
  	<th><input type="text" value="${gid} " name="grade_id" style="display: none"></th>
  	<th> <button type="submit">绑定</button></th>
  </tr>
     <c:forEach var="n" items="${name}">
  <tr>
  	<td><c:out value="${n.id}"></c:out></td>
  	<td><c:out value="${n.name}"></c:out> </td>
  
	<td><a href="<%=basePath%>majoradmin/majordelete/${n.id}">删除</a></td>
  	<td><a href="<%=basePath%>majoradmin/majorupdate/${n.id}">修改名称</a></td>
  	<td><a href="<%=basePath%>majoradmin/majorHackfan/${n.id}">详情</a></td>	
  	<td><a href="<%=basePath%>majoradmin/majorbHackfan/${n.id}">班级详情</a></td>
  	<td> <input type="checkbox" name="name" value="${n.name}" ></td>
 
  </tr>
</c:forEach>
</table>
</form>
  </body>
</html>
