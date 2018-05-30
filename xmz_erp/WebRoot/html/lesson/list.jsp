<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
<% String mid = request.getParameter("mid"); %> 
    <title>课程列表</title>
    <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
    <%@include file="./Copy.jsp"%>
                            <li class="active">课程列表</li>
                   
                        <%@include file="../common/top.jsp"%>
         
             <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">课程列表信息</span>
                        <div class="description"></div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">

                                    <div class="card-title">
                                    <div class="title"></div>
                                    </div>
                                </div>
                                <!--22222222222222222222222222  -->
                                  <div class="card-body">
                                    
                                    <div class="row">
                                        <div class="col-sm-12 col-md-12">
                                            <div class="sub-title">您可以查看所有课程的信息 <!-- <span class="description">( .active , .success , .info , .warning , .danger )</span> -->
                                            <div style="color:red;float:right;">${delSuccess }</div> 
                                            <div style="color:red;float:right;">${success }</div> 
                                            </div>
                                             <form action="<%=basePath%>courseadmin/major_to_course_binding" method="post">
                                            
                                              <table class="datatable table table-striped" cellspacing="0" width="100%">
                                                <thead>
                                                    <tr>
                                 
                                                        <th>岗位名称</th>
                                                     
                                                            <th>删除</th>
                                                        <th>详情</th>
                                                        <th>修改</th>
                                                 
                                                    </tr>
                                                </thead>
                                                <tbody>
                                         
               
                <c:forEach var="n" items="${name}">
                                                 
                                                 <tr>	<td><c:out value="${n.name}"></c:out> </td>
  
	<td><a class="btn btn-xs btn-danger "  href="<%=basePath%>courseadmin/coursedelete/${n.id}"onclick="return confirm('确定要删除吗?')">删除</a></td>
  	<td><a class="btn btn-xs btn-info " href="<%=basePath%>courseadmin/courseupdate/${n.id}">修改名称</a></td>
  	
  	<td><a class="btn btn-xs btn-warning " href="<%=basePath%>courseadmin/${n.id}">详情</a></td>	
  	
                                                 
                                                    </c:forEach>                            
		                              
                                                </tbody>
                                                
                                            </table>
                                        
                                        </div>
                                    </div>
                                </div>
                                
                                
                                
                               
                </div>
            </div>
        </div>
        <footer class="app-footer">
            <div class="wrapper">
                <span class="pull-right">2.1 <a href="#"><i class="fa fa-long-arrow-up"></i></a></span> © 版权所有.
            </div>
        </footer>
    <div>
    <%@include file="../common/footer.jsp"%>
   <%@include file="../common/js.jsp"%>
</body>

</html>
