<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>
    <title>用户列</title>
   <script  src="js/jquery.js"></script>
<%@include file="../common/css.jsp"%>

</head>

<body class="flat-blue">
     <%@include file="./Copy.jsp"%>
                            <li class="active">用户详细信息表</li>
                      <%@include file="../common/top.jsp"%> 
                      <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title"><a href="<%=basePath%>admin/list">用户列表</a> </span>
                        <div class="description">所有用户</div>

                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">

                                    <div class="card-title">
                                    <div class="title">信息表</div>
                                    </div>
                                </div>
                                <div class="card-body">

                                    <table class="datatable table table-striped" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>      
                                                <th>用户名</th>
                                                <th>权限</th> 
                                                  <th>查看详情</th>                                  
                                                <th>操作</th>                                    
                                            </tr>
                                        </thead>
                                         <tfoot>
                                            <tr>
                                                <th>Name</th>
                                                <th>power</th>
                                                <th>details</th>
                                                <th>operation</th>                                                                                            
                                            </tr>
                                        </tfoot> 
                                        <tbody>
                                 
                                            <c:forEach var="u" items="${users}">
                                       <tr>
                                                <td>${u.username}</td>
                                              <td>  
                                              <c:choose> 
                                              <c:when test = "${u.power_id==0}">普通用户</c:when> 
                                                  <c:when test = "${u.power_id==1}">会员</c:when> 
                                                   <c:when test = "${u.power_id==2}">管理员</c:when> 
                                              </c:choose>
                                               </td>
                                             <td>
                                           <a class="btn btn-xs btn-warning " href="<%=basePath%>admin/Hackfan/${u.username}">查看详情</a></td>
                         						   <td>
                         						   <c:if test="${u.username !='admin'}">
                         						   
                                                    <a class="btn btn-xs btn-danger " href="<%=basePath%>admin/delete/${u.id}" onclick="return confirm('确定要删除吗?');">删除</a> 
                                             			</c:if>
                                             			            
                                                       </td> 
                                            </tr>
                                           </c:forEach>   
                                           
                                        </tbody>
                                        <div style="color:red">${userserr }</div>
                                    </table>
                                      
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
