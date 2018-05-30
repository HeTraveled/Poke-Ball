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

<title>岗位详情</title>

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
	<form action="<%=basePath%>Job/JobUpdateSuccess" method="post">
		<table>
			<tr>
				<th>id</th>
				<th>岗位名</th>
				<th>岗位描述</th>

			</tr>
			<c:forEach var="u" items="${job_Hackfan}">
				<input type="text" value="${u.id}" name="id" style="display: none">
				<td><c:out value="${u.id}"></c:out>
				</td>
				<td><c:out value="${u.name}"></c:out>
				</td>
				<td><c:out value="${u.describe}"></c:out>
				</td>
			</c:forEach>
		</table>

		用户名修改： <input type="text" name="name">
		<button type="submit">提交</button>
	</form>
</body>
</html>
