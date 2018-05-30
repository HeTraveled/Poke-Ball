<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>课程详情</title>
    <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
     <%@include file="./Copy.jsp"%>
                            <li class="active">课程详情</li>
                  
                        <%@include file="../common/top.jsp"%>
                
           <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">课程列表</span>
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
                                            <table class="table" >
                                                <thead>
                                                    <tr>                                                        
                                                        <th>课程名称</th>
                                                        <th>课程描述</th>
                                                        <th>操作</th>
                                                        <th>修改 </th>
                                                        <th>删除</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="active">
                                                       
                                                        <td>云计算</td>
                                                           <td>云计算课程是由。。。。。。。。。。。。。</td>
                                                       <td>  <button type="button" class="btn btn-xs btn-default"><a href="add.jsp">增加</a></button></td>
                                                        <td>  <button type="button" class="btn btn-xs btn-default"><a href="change.jsp">修改</a></button></td>
                                                        <td><button><a href="/anew/todel/@a.id" onclick="return confirm('确定要删除吗?')">删除</a> </button></td>
                                                    </tr>
                                                    <tr>
                                                       
                                                        <td>数据库</td>
                                                         <td>数据库课程是由。。。。。。。。。。。。。</td>
                                                        <td> <button type="button" class="btn btn-xs btn-default"><a href="add.jsp">增加</a></button></td>
                                                        <td>  <button type="button" class="btn btn-xs btn-default"><a href="change.jsp">修改</a></td>
                                                        <td><button><a href="/anew/todel/@a.id" onclick="return confirm('确定要删除吗?')">删除</a> </button></td>
                                                    </tr>
                                                    <tr class="success">
                                                      
                                                        <td>Java</td>
                                                         <td>Java课程是由。。。。。。。。。。。。。</td>
                                                        <td> <button type="button" class="btn btn-xs btn-default"><a href="add.jsp">增加</a></button></td>
                                                        <td>  <button type="button" class="btn btn-xs btn-default"><a href="change.jsp">修改</a></button></td>
                                                        <td><button><a href="/anew/todel/@a.id" onclick="return confirm('确定要删除吗?')">删除</a> </button></td>
                                                    </tr>                                                              
                                                </tbody>
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
