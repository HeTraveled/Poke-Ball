<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
<title>权限修改</title>

<%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
	<%@include file="./Copy.jsp"%>

	<li class="active">权限修改</li>
	<%@include file="../common/top.jsp"%>
	<%@include file="../common/menu.jsp"%>
	<!-- Main Content -->
	<div class="container-fluid">
		<div class="side-body">
			<div class="page-title">
				<span class="title">权限修改</span>
				<div class="description"></div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<div class="card">
						<div class="card-header">

							<div class="card-title">
								<div class="title">XX用户信息查看</div>
							</div>
						</div>

						<div class="card-body">
							<div class="row">
								<div class="col-sm-12 col-md-6">

									<div class="sub-title">
										XX用户的权限信息<span class="description"></span>
									</div>
									<div>

										<table class="table">


											<thead>
												<tr>
													<th>用户名</th>
													<th>权限</th>
													<th>选择角色</th>
													<th>提交</th>
												</tr>
											</thead>
											
											<tbody>
											
												<c:forEach var="u" items="${result}">
												
												 	<form action="<%=basePath%>admin/ChmodSuccess" method="post">
													<tr class="active">
														<th scope="row"><c:out value="${u.username}"></c:out>
														</th>
														<td><c:out value="${u.power_id}"></c:out>
														</td>
														<td><select name="chmod" size=1>
																<optgroup label="权限选择">
																	<option value="member">会员</option>
																	<option value="consumer">普通用户</option>
																</optgroup>
														</select></td>
														<td><input type='hidden' name='id' value="${u.id}">
														</td>
														<td><input type='hidden' name='power_id'
															value="${u.power_id}"></td>
														<td><button type="submit"	class="btn btn-xs btn-default">修改</button>
														</td>
													</tr>
													</form>
												</c:forEach> 
											</tbody>
											
										</table>
<div style="color:red">${power }</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<%@include file="../common/footer.jsp"%>
			<%@include file="../common/js.jsp"%>
</body>

</html>
