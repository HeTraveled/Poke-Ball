<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>
    <title>班级详情</title>
  <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
    <%@include file="./Copy.jsp"%>
                            <li class="active">班级详情</li>
                        
 <%@include file="../common/top.jsp"%>

 <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">班级列表</span>
                        <div class="description">本专业所有班级</div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                    <div class="title">信息表</div>
                                    </div>
                                </div>
                                
                                 <!--  -->
                                <div class="card-body">
                                    <table class="datatable table table-striped" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                  <th>班级名称</th>                                                
                                                  <th>操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
											<c:forEach var="b" items="${requestScope.banjiHackfan}">
												<tr>
													<td><c:out value="${b.name}"></c:out></td>
													<td><a class="btn btn-xs btn-danger " href="<%=basePath%>majoradmin/majorbanjidelete/${b.id}" onclick="return confirm('确定要删除吗?')">删除</a></td>
												</tr>
											</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!--  -->
                                
								   <form action="<%=basePath%>banjiadmin/banjibdlist" method="post">
   <input type="text" value="${mid}" name="id" style="display: none">
  <button class="btn xmz_btn_info" style="margin-left: 25px" type="submit">绑定班级</button>
                                </form>
                               
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
