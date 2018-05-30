<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>企业增加页面</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script src="js/jquery.js"></script>
</head>

<body>
	<form action="<%=basePath%>Enterprise/enterprise_add" method="post">
		请输入企业名称：<input type="text" name="name"> 请输入企业联系电话： <input
			type="text" name="phone"> 请输入企业地址：<input type="text"
			name="address"> 请输入企业邮箱： <input type="text" name="email">
		请输入企业负责人：<input type="text" name="linkman">
		<button type="submit">注册</button>
	</form>


</body>
</html>
