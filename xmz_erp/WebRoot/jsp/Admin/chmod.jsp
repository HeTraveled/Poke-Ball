<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>权限修改页面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	
	 
	<table>
		<tr>
			<!-- <th>id</th> -->
			<th>用户名</th>
			<th>权限</th>
			<th>角色选择</th>
		</tr>
	
		<c:forEach var="u" items="${result}">
		<form action="<%=basePath%>admin/ChmodSuccess" method="post">
		<tr>
		<td>		<c:out value="${u.username}"></c:out></td>
		<td>	<c:out value="${u.power_id}"></c:out></td>
		<td>	<select name="chmod" size=1>
						<option value="member">会员</option>
						<option value="consumer" >普通用户</option>
				</select></td>
				<!-- 下面input标签是为了往控制台传值，有name值，hidden隐藏 --> 
		 <td>		<input type='hidden' name='id' value="${u.id}">	</td>
		<td>		<input type='hidden' name='power_id' value="${u.power_id}">	</td>
			<td>		<button type="submit">提交</button></td>
			</tr>
			</form>		
		</c:forEach>
		
	</table>
	 
	
	<%-- <form action="<%=basePath%>admin/ChmodSuccess" method="post">
	<input type="hidden" value="${u.id}" name="id">
	</form> --%>
	<%--
		String str = request.getParameter("chmod");

		out.print(str);
	--%>

	
</body>
</html>
