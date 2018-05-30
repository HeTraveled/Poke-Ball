<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>岗位管理</title>
    <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
    <%@include file="./Copy.jsp"%>

                            <li class="active">岗位列表信息</li>
                   <%@include file="../common/top.jsp"%>
          <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">岗位信息表</span>
                        <div class="description">在这里你可以查看岗位的信息</div>
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
                                        <div class="col-sm-12 col-md-12">
                                            <div class="sub-title">您可以查看所有岗位的信息 <!-- <span class="description">( .active , .success , .info , .warning , .danger )</span> -->
                                            <div style="color:red;float:right;">${delSuccess }</div> 
                                            <div style="color:red;float:right;">${success }</div> 
                                            </div>
                                             
                                              <table class="datatable table table-striped" cellspacing="0" width="100%">
                                                <thead>
                                                    <tr>
                                 
                                                        <th>岗位名称</th>
                                                       <!--  <th>电话</th>
                                                        <th>地址</th>
                                                         <th>邮箱</th>
                                                        <th>负责人</th> -->
                                                            <th>删除</th>
                                                        <th>详情</th>
                                                        <th>修改</th>
                                                      <!--   <th>岗位绑定</th> -->
                                                    </tr>
                                                </thead>
                                                <tbody>
                                         
               
               <c:forEach var="l" items="${list}" varStatus="status">
			<tr>
				
				<td style="vertical-align:middle;"><c:out value="${l.name}"></c:out></td>
				
				<%-- <td style="vertical-align:middle;"><c:out value="${l.phone}"></c:out></td>
				<td style="vertical-align:middle;"><c:out value="${l.address}"></c:out></td>
				<td style="vertical-align:middle;"><c:out value="${l.email}"></c:out></td>
				<td style="vertical-align:middle;"><c:out value="${l.linkman}"></c:out></td> --%>
				<td>  <button type="button" class="btn btn-xs btn-default"><a href="<%=basePath%>Job/job_delete/${l.id}"onclick="return confirm('确定要删除吗?')">删除</a></button>
				</td>
				<td>
				<button type="button" class="btn btn-xs btn-default "><a href="<%=basePath%>Job/job_Hackfan/${l.id}">查看详情</a></button>
				</td>
				<td>
				<button type="button" class=" btn btn-xs btn-default"><a href="<%=basePath%>html/gangwei/change.jsp?id=${l.id}">修改</a></button></td>
	<%-- 	<td>	<button type="button" class="btn btn-xs btn-default"><a href="<%=basePath%>html/gangwei/list.jsp?id=${l.id}" onclick="return" ><a href="<%=basePath%>Job/list?id=${l.id}">岗位绑定</a></button></td> --%>
			
		</c:forEach>                             
		                              
                                                </tbody>
                                                
                                            </table>
                    <%--                   <button type="button" class="btn btn-xs btn-default" >       <a href="<%=basePath%>Enterprise/list"  >企业列表刷新</a></button> --%>
                                            
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
