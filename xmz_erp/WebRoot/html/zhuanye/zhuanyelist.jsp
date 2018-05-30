<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>
    <title>专业列表</title>
    
<%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">

 <%@include file="./Copy.jsp"%>
                            <li class="active">专业列表123123123</li>
                       
 <%@include file="../common/top.jsp"%>

 <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">专业列表</span>
                        <div class="description"></div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">

                                    <div class="card-title">
                                    <div class="title">专业信息查看</div>
                                    </div>
                                </div>
                                <!--  -->
                                <div class="card-body">
                                    <table class="datatable table table-striped" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                  <th>专业</th>                                                
                                                  <th>课程详情</th>
                                                  <th>班级详情</th>
                                                  <th>修改</th>
                                                  <th>删除</th>
                                            </tr>
                                        </thead>
                                       
                                        <tbody>
                                            
                                            <c:forEach var="n" items="${name}">
                                                 <tr>
	                                                 <td><c:out value="${n.name}"></c:out></td>
													 <td><a class="btn btn-xs btn-warning" href="<%=basePath%>majoradmin/majorbdHackfan/${n.id}">课程操作</a></td>	
													 <td><a class="btn btn-xs btn-warning" href="<%=basePath%>majoradmin/majorbHackfan/${n.id}">班级操作</a></td>
													 <td><a class="btn btn-xs btn-info " href="<%=basePath%>majoradmin/majorupdate/${n.id}">修改名称</a></td>
													<td><a class="btn btn-xs btn-danger " href="<%=basePath%>majoradmin/majordelete/${n.id}"onclick="return confirm('确定要删除吗?')">删除</a></td>
												 </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!--  -->
                                
                    
                </div>
                 
            </div>
           
        </div>
         <%@include file="../common/footer.jsp"%>
        <%@include file="../common/js.jsp"%>
        
</body>

</html>
