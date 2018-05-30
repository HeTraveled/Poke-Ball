<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
<title>用户详情</title>

<%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
	<%@include file="./Copy.jsp"%>
	<li class="active">用户详情</li>

	<%@include file="../common/top.jsp"%>

	<%@include file="../common/menu.jsp"%>

	<!-- Main Content -->
	<div class="container-fluid">
		<div class="side-body">
			<div class="page-title">
				<span class="title">用户详情</span>
				<div class="description"></div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<div class="card">
						<div class="card-header">

							<div class="card-title">
								<div class="title">
									<c:forEach var="u" items="${requestScope.userHackfan}">${u.username}</c:forEach>
									用户信息查看
								</div>
							</div>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-sm-12 col-md-6">

									<div class="sub-title">
										<c:forEach var="u" items="${requestScope.userHackfan}">${u.username}</c:forEach>
										用户的详细信息<span class="description"></span>
									</div>
									<div>

										<table class="table">
											<thead>
												<tr>
													<th>用户名</th>

													<th>权限</th>
													<th>电话</th>
													<th>邮箱</th>
													<th>身份证</th>
													<th>信息修改</th>
													<th><c:if test="${requestScope.LoginName=='admin'}">  权限修改
                                                          </c:if>
													</th>


												</tr>
											</thead>
											<tbody>
											
												<tr class="active">
													<c:forEach var="u" items="${requestScope.userHackfan}">
														<input type="text" value="${u.id}" name="id"
															style="display: none">

														<th scope="row">${u.username}</th>

														<td><c:choose>
																<c:when test="${u.power_id==0}">普通用户</c:when>
																<c:when test="${u.power_id==1}">会员</c:when>
																<c:when test="${u.power_id==2}">管理员</c:when>
															</c:choose></td>
														<td>${u.phone}</td>
														<td>${u.email}</td>
														<td>${u.idCard}</td>

														<td>
															<button type="button" class="btn btn-xs btn-default">
																<a	href="<%=basePath %>html/user/userchange.jsp?id=${u.id}">信息修改</a>
															</button>
														</td>
														<td>
														
														<c:if test="${requestScope.LoginName=='admin'}">
														<div style="color:red">${power}</div>
																<button type="button" class="btn btn-xs btn-default">
																	<a href="<%=basePath%>admin/chmod">权限修改</a>
																</button>
															</c:if>
														</td>
														<td></td>
													</c:forEach>
												</tr>

											</tbody>

										</table>
<div style="color:red">${power }</div>
<div style="color:green">${success }</div>
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
