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
                            <li class="active">专业列表</li>
                       
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
                                <div class="card-body">
                                      <div class="row">
                                        <div class="col-sm-12 col-md-6">
                                            <div class="sub-title">专业列表 <span class="description"><!-- ( .active , .success , .info , .warning , .danger ) --></span></div>
                                              <div>
                                     <%--   <form action="<%=basePath%>majoradmin/grade_to_major_binding" method="post"> --%>
                                            <table class="table" >
                                                <thead>
                                                    <tr>
                                                        <!-- <th>年级</th> -->
                                                        <th>专业</th>                                                
                                                       
                                                          <th>详情</th>
                                                           <th>班级详情</th>
                                                          
                                                         
 <!-- <th> <button type="submit" class="btn btn-xs btn-default">绑定</button></th> -->
  
<%--  <th><input type="text" value="${gid} " name="grade_id" style="display: none"></th>  --%>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                 <c:forEach var="n" items="${name}">
                                                   <!--  <tr class="active"> -->
                                                 <tr  class="success">
                                                      <%--   <th scope="row"><c:out value="${n.id}"></c:out></th> --%>
                                                        <td><c:out value="${n.name}"></c:out></td>
                                                        
  	 
  	<td><a href="<%=basePath%>majoradmin/majorbdHackfan/${n.id}">绑定</a></td>	
  	<td><a href="<%=basePath%>majoradmin/majorbbdHackfan/${n.id}">绑定班级</a></td>
  	<%-- <td> <input type="checkbox" name="name" value="${n.name}" ></td> --%>
                                                      <!--  <td>  <button type="button" class="btn btn-xs btn-default"><a href="zhuanyexiangqing.jsp">查看详情</a></button></td> -->
                                                        
                                                    </tr>
                                                    </c:forEach>
                                                   <!--  <tr>
                                                        <th scope="row">2016级</th>
                                                        <td>移动通讯技术</td>
                                                        
                                                        <td> <button type="button" class="btn btn-xs btn-default"><a href="zhuanyexiangqing.jsp">查看详情</a></button></td>
                                                    </tr>
                                                    <tr class="success">
                                                        <th scope="row">2017级</th>
                                                        <td>计算机网络技术</td>
                                                        
                                                        <td> <button type="button" class="btn btn-xs btn-default"><a href="zhuanyexiangqing.jsp">查看详情</a></button></td>
                                                    </tr>  -->                                                             
                                                </tbody>
                                            </table>
                                            <button type="button" class="btn btn-xs btn-default"><a href="<%=basePath%>majoradmin/majorlist"">列表刷新</a></button>
                                             
                                              
                                           
                                            </form>
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
