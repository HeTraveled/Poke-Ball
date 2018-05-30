<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>企业信息修改</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="js/jquery.js"></script>
</head>

<body>
	<%
		//a标签传值，下面接收
		String id = request.getParameter("id");
		// name=new String(name.getBytes("iso-8859-1"),"gb2312");  
		//out.print("id:"+id); 
		request.getSession().setAttribute("user", id);
		String a = (String) session.getAttribute("user");
		//out.print("id222:"+a);
	%>
	<form action="<%=basePath%>Enterprise/EnterpriseUpdateSuccess"
		method="post">

		<input type="text" value="<%=id%>" name="id" style="display: none">
		企业名修改： <input type="text" name="name"> 
		电话修改： <input type="text" name="phone"> 
		地址修改：<input type="text" name="address"> 
		邮箱修改： <input type="text" name="email">
		负责人修改：<input type="text" name="linkman">
		<button type="submit">提交</button>
	</form>
  	岗位绑定：
	<a href="<%=basePath%>jsp/job/job_list.jsp?id=<%=a %>">岗位绑定</a>
</body>
</html>
