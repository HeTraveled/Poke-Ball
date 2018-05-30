<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
<title>班级详情</title>

<%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">

	<%@include file="./Copy.jsp"%>
	<li class="active">班级详情</li>
	<%@include file="../common/top.jsp"%>
	<%@include file="../common/menu.jsp"%>
	<!-- Main Content -->
	<div class="container-fluid">
		<div class="side-body">
			<div class="page-title">
				<span class="title">学生列表</span>
				<div class="description"></div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<div class="card">
						<div class="card-header">

							<div class="card-title">
								<div class="title">学生查看</div>
							</div>
						</div>
						
						
						<!--  -->
                                <div class="card-body">
                                    <table class="datatable table table-striped" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                  <th>学号</th>                                                
                                                  <th>姓名</th>
                                                  <th>性别</th>
                                                  <th>电话</th>
                                                  <th>详情</th>
                                                  <th>操作</th>
                                                  
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="n" items="${requestScope.banjiHackfan}">
													
													<tr >
													<td><c:out value="${n.stuid}"></c:out></td>
													<td><c:out value="${n.name}"></c:out></td>
													<td><c:out value="${n.gender}"></c:out></td>
													<td><c:out value="${n.phone}"></c:out></td>
													<td><a href="#">详情 </a></td>
													<td><a href="<%=basePath%>banjiadmin/banjistudentdelete/${n.id}">删除 </a></td>

														
														</tr>
												</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!--  -->
                                
								  <a  class="btn xmz_btn_info" style="margin-left: 25px;color: #fff" href="<%=basePath%>studentadmin/studentbdlist?banji_id=${sid}">绑定学生</a>
						
					</div>
				</div>
			</div>
			<%@include file="../common/footer.jsp"%>
			<%@include file="../common/js.jsp"%>
</body>

</html>
