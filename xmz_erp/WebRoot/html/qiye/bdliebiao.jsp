<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>企业列表</title>
    <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
    <%@include file="./Copy.jsp"%>

                            <li class="active">企业列表信息</li>
                   <%@include file="../common/top.jsp"%>
          <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">企业信息表</span>
                        <div class="description">在这里你可以查看企业的信息</div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">

                                    <div class="card-title">
                                    <div class="title">企业详细信息查看</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    
                                    <div class="row">
                                        <div class="col-sm-12 col-md-12">
                                            <div class="sub-title">您可以查看所有企业的信息 <!-- <span class="description">( .active , .success , .info , .warning , .danger )</span> -->
                                            <div style="color:red;float:right;">${delSuccess }</div> 
                                            <div style="color:red;float:right;">${success }</div> 
                                            </div>
                                             
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                 
                                                        <th>企业名称</th>
                                                       
                                                       
                                                        <th>岗位绑定</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                         
               <c:forEach var="l" items="${list}">
			<tr>
				
				<td><c:out value="${l.name}"></c:out></td>
				
				<td>  
				</td>
				<td>
				<button type="button" class="btn btn-xs btn-default "><a href="<%=basePath%>Enterprise/enterprise_bdHackfan/${l.id}">绑定岗位</a></button>
				</td>
				<td>
				
	
		</c:forEach>                             
		                              
                                                </tbody>
                                                
                                            </table>
                                      <button type="button" class="btn btn-xs btn-default" >       <a href="<%=basePath%>Enterprise/list"  >企业列表刷新</a></button>
                                            
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
