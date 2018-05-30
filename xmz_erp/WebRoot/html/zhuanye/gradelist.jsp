<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>
    <title>班级列表</title>
    
 <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
     <%@include file="./Copy.jsp"%>
                            <li class="active">班级列表</li>
                         <%@include file="../common/top.jsp"%>             
                         <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">班级列表</span>
                        <div class="description"></div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                            
                                <div class="card-header">
                                <div style="color:red;float:right; font-size:18px">${success }</div> 

                                    <div class="card-title">
                                    
                                    <div class="title">班级信息查看</div>
                                    
                                    </div>
                                </div>
                                
                                
                                <!--  -->
                                <div class="card-body">
                                
                                    <table class="datatable table table-striped" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                  <th>班级</th>
                                                   <th>学生信息</th>
                                                   <th>修改</th>
                                                   <th>删除</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="n" items="${name}">
                                                    <tr >
                                                        <td><c:out value="${n.name}"></c:out> </td>
													  	<td><a class="btn btn-xs btn-warning" href="<%=basePath%>banjiadmin/banjibdHackfan/${n.id}">学生信息</a></td>	
													    <td><a class="btn btn-xs btn-info " href="<%=basePath%>banjiadmin/banjiupdate/${n.id}">修改名称</a></td>
													    <td><a class="btn btn-xs btn-danger "href="<%=basePath%>banjiadmin/banjidelete/${n.id}"onclick="return confirm('确定要删除吗?')">删除</a></td>
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
