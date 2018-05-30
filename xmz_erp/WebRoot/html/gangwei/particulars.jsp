<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>岗位详情</title>
<%@include file="../common/css.jsp"%>  
</head>

<body class="flat-blue">
     <%@include file="./Copy.jsp"%>
                            <li class="active">岗位详情</li>
                       <%@include file="../common/top.jsp"%>            
                       <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">岗位信息表</span>
                      <!--  <div class="description">在这里你可以查看岗位的信息</div> -->
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">

                                    <div class="card-title">
                                    <div class="title">岗位详细信息查看</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    
                                    <div class="row">
                                        <div class="col-sm-12 col-md-6">
                                            <div class="sub-title">您可以查看所有岗位的信息 <span class="description"><!-- ( .active , .success , .info , .warning , .danger ) --></span></div>
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        
                                                         <th>岗位名称</th>
                                                         <th>描述</th>
                                                          <th>修改</th>
                                                         
                                                       <th>修改详情</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:forEach var="u" items="${job_Hackfan}">
                                                    <tr class="active">
                                                        <!-- <th scope="row">1</th> -->
                                                        <td><c:out value="${u.name}"></c:out></td>
                                                        <td><c:out value="${u.miaoshu}"></c:out></td>
                                                        <td> <a class="btn btn-xs btn-danger " href="<%=basePath%>Job/job_delete/${l.id}"onclick="return confirm('确定要删除吗?')">删除</a>
				</td>                                   <td> <a class="btn btn-xs btn-danger " href="<%=basePath%>html/gangwei/change.jsp?id=${l.id}">修改</a>
                                                   <%--    <td>  <button type="button" class="btn btn-xs btn-default"><a href="<%=basePath%>html/gangwei/change.jsp?id=${l.id}">修改</a></button></td>
                                                        --%><%--  <td> <button type="button" class="btn btn-xs btn-default"><a href="<%=basePath%>Job/job_delete/${u.id}" onclick="return confirm('确定要删除吗?')">删除</a></button></td> --%>
                                                    </tr>
                                                    <!-- <tr>
                                                        <th scope="row">2</th>
                                                        <td>阿里巴巴</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        
                                                        <td> <button type="button" class="btn btn-xs btn-default"><a href="/anew/todel/@a.id" onclick="return confirm('确定要删除吗?')">删除</a></button></td>
                                                    </tr>
                                                    <tr class="success">
                                                        <th scope="row">3</th>
                                                        <td>京东</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        
                                                        <td> <button type="button" class="btn btn-xs btn-default"><a href="/anew/todel/@a.id" onclick="return confirm('确定要删除吗?')">删除</a></button></td>
                                                    </tr>  -->
                                                    </c:forEach>                                                             
                                                </tbody>
                                                
                                            </table>
                                        
                                      <!--   <button type="button" class="btn btn-xs btn-default"><a href="add.jsp">增加</a></button>
                                        <button type="button" class="btn btn-xs btn-default"><a href="change.jsp">修改</a></button> --></div>
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
