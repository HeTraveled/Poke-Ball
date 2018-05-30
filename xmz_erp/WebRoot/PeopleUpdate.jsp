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
    
    <title>My JSP 'PeopleUpdate.jsp' starting page</title>
    
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
        请输入要修改的信息：</br>
      <form action="http://localhost:8080/xmz_erp/admin/PeopleUpdateSuccess" method="post">
<%--   <input type="text" value="${user.id}" name="id" style="display: none"> --%>
<input type="text" value="${user.id}" name="id" >
    用户名：		<input type="text" name="username">
   电话：		<input type="text"  name="phone">
  邮箱：	<input type="text"  name="email">
   身份证号：<input type="text"  name="idCard">
   备注：<input type="text"  name="comment">
  <button type="submit">保存</button> 
      </form>

       ${result.msg} 
  </body>
</html>
