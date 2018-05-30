<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>岗位列表</title>
   <%@include file="../common/css.jsp"%>

</head>

<body class="flat-blue">
    <%@include file="./Copy.jsp"%>
    <%   //user取值，在Enterprise_update接过来
/* String a=(String)session.getAttribute("user");
out.print("id222:"+a);  */
String id = request.getParameter("id");
        %>
                            <li class="active">岗位列表</li>                     
                       <%@include file="../common/top.jsp"%>         
                       <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">岗位列表信息查看</span>
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
                                            <div class="sub-title">岗位列表 <span class="description"><!-- ( .active , .success , .info , .warning , .danger ) --></span></div>
                                              <div>
                                             
                                        <form action="<%=basePath%>Job/enterprise_to_job_binding" method="post">
                                            <table class="table" >
                                                <thead>
                                                    <tr>
                                                        <th>岗位名称</th>
                                                        <th>详情</th>   
                                                        
                                                       
                                                          <th>选择</th> 
                                                         
                                                          <th><input type="text" value="<%=id%>" name="enterprise_id" style="display: none"></th>
  																<th> <button type="submit" class="btn btn-xs btn-default">绑定</button></th>   
  																<%--  <th><button type="button" class="btn btn-xs btn-default"><a href="<%=basePath%>Job/list">查询所有岗位</a></button></th>  --%>
  																                                                   
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                
                                                <c:forEach var="l" items="${list}" varStatus="status">
                                                     
                                                    <tr class="active"> 
                                                                                                  
                                                        <td><c:out value="${l.name}"></c:out> </td> 
                                                            <td>  <button type="button" class="btn btn-xs btn-default"><a href="<%=basePath%>Job/job_Hackfan/${l.id}">查看详情</a></button></td>                                                
                                                       
                                                       
                                                        <td> <input type="checkbox" name="name" value="${l.name}" ></td>
                                                                                                            
                                                    </tr>
                                           
                                                 <!--    <tr>                                                 
                                                        <td>数据库</td>
                                                        
                                                        <td> <button type="button" class="btn btn-xs btn-default"><a href="particulars.jsp">查看详情</button></td>
                                                    </tr>
                                                    <tr class="success">
                                                      
                                                        <td>java工程师</td>
                                                        
                                                        <td> <button type="button" class="btn btn-xs btn-default"><a href="particulars.jsp">查看详情</button></td>
                                                    </tr>  -->    
                                                    </c:forEach>                                                         
                                                </tbody>
                                            </table>
                                             <div style="color:green">${success}</div>
                                            </form>
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
