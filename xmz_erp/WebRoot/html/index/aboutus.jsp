<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>
    <title>关于我们</title>
    
<%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
    <div class="app-container">
        <div class="row content-container">
            <nav class="navbar navbar-default navbar-fixed-top navbar-top">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-expand-toggle">
                            <i class="fa fa-bars icon"></i>
                        </button>
                        <ol class="breadcrumb navbar-breadcrumb">
                            <li class="active">关于我们</li>
                      
 <%@include file="../common/top.jsp"%>

 <%@include file="../common/menu.jsp"%>  
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">关于我们</span>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-body">
                                  中兴通讯项目组<br><br>

                                  版权所有 (c) [2017] [中兴通讯项目组]<br><br>

                                  你好<br><br>

                                  欢迎访问我们，有什么意见请留言！(下方加个留言栏)
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
