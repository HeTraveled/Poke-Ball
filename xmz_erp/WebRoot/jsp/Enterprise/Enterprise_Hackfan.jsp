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

<title>企业详情</title>

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

	<table>
		<tr>
			<th>id</th>
			<th>用户名</th>
			<th>电话</th>
			<th>地址</th>
			<th>邮箱</th>
			<th>负责人</th>
			<th>所有岗位(点击岗位名称进行删除操作)</th>

		</tr>
		<c:forEach var="u" items="${Enterprise_Hackfan}">

			<input type="text" value="${u.id}" name="id" style="display: none">
			<a href="<%=basePath%>jsp/Enterprise/Enterprise_Update.jsp?id=${u.id}">企业信息修改</a>
			<td><c:out value="${u.id} "></c:out>
			</td>
			<td><c:out value="${u.name}"></c:out>
			</td>
			<td><c:out value="${u.phone}"></c:out>
			</td>
			<td><c:out value="${u.address}"></c:out>
			</td>
			<td><c:out value="${u.email}"></c:out>
			</td>
			<td><c:out value="${u.linkman}"></c:out>
			</td>

		</c:forEach>
		<c:forEach var="j" items="${Job_Hackfan}">
			<!-- 这里岗位加超链接进行删除操作，用js加个弹窗确认删除-->
			<!-- 此处删除，，，要把本企业下的岗位删除，还要把关联表中的数据，（本企业与该岗位的关联删除）用${requestScope.EnterpriseId}可以获取controller中变量值 -->
			<!-- 发现删除这里用j.id可以去到关联表中的id值。对这个id值进行删除操作就可以 -->
			<%-- <td>
			<a href="<%=basePath%>Enterprise/enterprise_job_delete/${j.id}/id=${requestScope.EnterpriseId}"><c:out value="${j.name}"></c:out></a>
			</td> --%>
			<td><a
				href="<%=basePath%>Enterprise/enterprise_job_delete/${j.id}">
				<c:out value="${j.name}"></c:out> </a>
			</td>
		</c:forEach>

	</table>
	<%-- request企业id:${requestScope.EnterpriseId}<br/> --%>

</body>
</html>
