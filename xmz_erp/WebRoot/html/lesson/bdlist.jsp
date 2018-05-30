<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
<% String mid = request.getParameter("gid"); %> 
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
                                <div class="card-body">
                                      <div class="row">
                                        <div class="col-sm-12 col-md-6">
                                            <div class="sub-title">课程列表 <span class="description"><!-- ( .active , .success , .info , .warning , .danger ) --></span></div>
                                              <div>
                                        <form action="<%=basePath%>courseadmin/major_to_course_binding" method="post">
                                            <table class="table" >
                                                <thead>
                                                    <tr>                                                        
                                                         <th>课程名称</th>
                                                        
                                                        <th><input type="text" value="${gid} " name="major_id" style="display: none"></th>
  	<th> <button type="submit">绑定</button></th>                                                        
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                 <c:forEach var="n" items="${name}">
                                                 
                                                 <tr>	<td><c:out value="${n.name}"></c:out> </td>
  
	
  	
  	<td><a href="<%=basePath%>courseadmin//${n.id}">详情</a></td>	
  	<td> <input type="checkbox" name="name" value="${n.name}" ></td></tr>
                                                    <!--  <tr class="active">                                                       
                                                        <td>云计算</td>                                                        
                                                       <td>  <button type="button" class="btn btn-xs btn-default"><a href="particulars.jsp">查看详情</a></button></td>                                                        
                                                    </tr>
                                                   <tr>
                                                       
                                                        <td>数据库</td>
                                                        
                                                        <td> <button type="button" class="btn btn-xs btn-default"><a href="particulars.jsp">查看详情</a></button></td>
                                                    </tr>
                                                    <tr class="success">
                                                      
                                                        <td>java</td>
                                                        
                                                        <td> <button type="button" class="btn btn-xs btn-default"><a href="particulars.jsp">查看详情</a></button></td>
                                                    </tr>     -->   
                                                    </c:forEach>                                                       
                                                </tbody>
                                            </table>
                                            </form>
                                        </div>
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
