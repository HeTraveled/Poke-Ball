<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>
    <title>用户注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
 <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue login-page">
    <div class="container">
        <div class="login-box">
            <div>
                <div class="login-form row">
                    <div class="col-sm-12 text-center login-header">
                        <i class="login-logo fa fa-connectdevelop fa-5x"></i>
                        <h4 class="login-title">Welcome to join us</h4>
                    </div>
                    <div class="col-sm-12">
                        <div class="login-body">
                            <div class="progress hidden" id="login-progress">
                                <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                    Log In...
                                </div>
                            </div>
                            <!-- 提示注册信息 -->
                            <div style="color:red">${msg }</div>
                         <form action="<%=basePath%>admin/login_add" method="post">
                                <div class="control">
                                    <input type="text" class="form-control" id="username" placeholder="用户名" name="username"/>
                                </div>
                                <div class="control">
                                    <input type="password" class="form-control" password="password" placeholder="密码" name="password"/>
                                </div>
                                <div class="control">
                                    <input type="password" class="form-control" password="password" placeholder="再次输入密码" name="password2"/>
                                <div class="control">
                                    <input type="text" class="form-control" phone="phone" placeholder="电话" name="phone"/>
                                    <div class="control">
                                    <input type="text" class="form-control" email="email" placeholder="邮箱" name="email"/>
                                <div class="login-button text-center">
                                    <input type="submit" class="btn btn-primary" value="注册">
                                </div>
                            </form>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Javascript Libs -->
    <%@include file="../common/js.jsp"%>
    
    
</body>

</html>
