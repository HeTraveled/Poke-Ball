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
						<div class="card-body">
							<div class="row">
								<div class="col-sm-12 col-md-6">
									<!-- <div class="sub-title">请选择您要查询的班级 <span class="description">( 下拉选项卡选择 <a href="https://select2.github.io/"></a> )</span></div>
                                    <div>
                                        <select>
                                            <optgroup label="年级">
                                                <option value="AK">2015级</option>
                                                <option value="HI">2016级</option>
                                                <option value="HI">2017级</option>

                                            </optgroup>                                          
                                        </select>
                                        <select>
                                            <optgroup label="专业">
                                                <option value="AK">计算机网络技术</option>
                                                <option value="HI">移动通讯技术</option>
                                            </optgroup>                                          
                                        </select>
                                        <select>
                                            <optgroup label="班级">
                                                <option value="AK">1班</option>
                                                <option value="HI">2班</option>
                                                <option value="HI">3班</option>
                                                <option value="HI">4班</option>
                                            </optgroup>                                          
                                        </select> 
                                         <button type="submit" class="btn btn-default"style="background:white">查询</button>
                                            <div class="sub-title">2015级 计算机网络技术2班<span class="description">( 人数  )</span></div>-->
									<!-->此处获取按钮提交的数据和数据库中班级的人数<!-->
									<div>
										<%--  <form action="<%=basePath%>studentadmin/studentlist" method="post">--%>
										<%--   <input type="text" value="${sid}" name="id" style="display: none">  --%>

										<table class="table">
											<thead>
												<tr>
													<th>姓名(点击进行删除)</th>
													<th><button type="button"	class="btn btn-xs btn-default">
															<a href="<%=basePath%>studentadmin/studentlist?banji_id=${sid}">添加班级内学生成员</a>
														</button>
													</th>



												</tr>
											</thead>
											<tbody>
												<c:forEach var="n" items="${requestScope.banjiHackfan}">
													<input type="text" value="${n.id}" name="id"
														style="display: none">
													<tr class="active">

														<th><a
															href="<%=basePath%>banjiadmin/banjistudentdelete/${n.id}">
																<c:out value="${n.name}"></c:out>
														</a>
														</th>
												</c:forEach>

												<!--  <td>  <button type="button" class="btn btn-xs btn-default"><a href="gradechange.jsp">修改</a></button></td>
                                                       <td><button><a href="/anew/todel/@a.id" onclick="return confirm('确定要删除吗?')">删除</a> </button></td> -->
												</tr>
												<!-- <tr>
                                                        <th scope="row">六六</th>
                                                
                                                        
                                                        <td> <button type="button" class="btn btn-xs btn-default"><a href="gradechange.jsp">修改</a></button></td>
                                                        <td><button><a href="/anew/todel/@a.id" onclick="return confirm('确定要删除吗?')">删除</a> </button></td>
                                                    </tr>
                                                    <tr class="success">
                                                        <th scope="row">小倩</th>
                                                       
                                                        
                                                        <td> <button type="button" class="btn btn-xs btn-default"><a href="gradechange.jsp">修改</a></button></td>
                                                        <td><button><a href="/anew/todel/@a.id" onclick="return confirm('确定要删除吗?')">删除</a> </button></td>
                                                    </tr>   -->

											</tbody>

										</table>
										<!--   </form> -->
										<!-- <div>
                                                        <button type="submit" class="btn btn-default"style="background:white"><a href="gradeadd.jsp">增加</a></button>
                                                    </div> -->
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
