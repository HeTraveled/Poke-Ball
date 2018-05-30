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

<title>企业列表</title>

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
	<form action="<%=basePath%>Enterprise/list" method="post">
		<button type="submit">查看所有企业</button>
	</form>
	<table>
		<tr>
			<th>id</th>
			<th>企业名</th>
			<th>电话</th>
			<th>地址</th>
			<th>邮箱</th>
			<th>负责人</th>
		</tr>
		<c:forEach var="l" items="${list}">
			<tr>
				<td><c:out value="${l.id}"></c:out>
				</td>
				<td><c:out value="${l.name}"></c:out></td>
				<td><c:out value="${l.phone}"></c:out></td>
				<td><c:out value="${l.address}"></c:out></td>
				<td><c:out value="${l.email}"></c:out></td>
				<td><c:out value="${l.linkman}"></c:out></td>
				<td><a href="<%=basePath%>Enterprise/enterprise_delete/${l.id}">删除</a>
				</td>
				<td><a
					href="<%=basePath%>Enterprise/enterprise_Hackfan/${l.id}">详情</a>
				</td>

			</tr>
		</c:forEach>
	</table>
</body>
</html>
