
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>登录</title>
<%@include file="./html/common/css.jsp"%>
</head>

<body class="flat-blue login-page">

    <div class="container">
        <div class="login-box">
            <div>
                <div class="login-form row">
                    <div class="col-sm-12 text-center login-header">
                        <i class="login-logo fa fa-connectdevelop fa-5x"></i>
                        <h4 class="login-title" style="color:#fff">企业资源与教学优化一体化管理平台</h4>
                    </div>
                    <div class="col-sm-12">
                        <div class="login-body">
                            <div class="progress hidden" id="login-progress">
                                <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                    Log In...
                                </div>
                            </div>
                            <form action="<%=basePath%>admin/login" method="post">
                                <div class="control">
                                    <input type="text" class="form-control" id="username" name="username" placeholder="用户名"/>
                                </div>
                                <div class="control">
                                    <input type="password" class="form-control" password="password"  name="password" placeholder="密码" />
                                </div>
                                <div class="login-button text-center">
                                    <input type="submit" class="btn btn-primary" value="登录">                                </div>
                                  
                            </form>
                               <div style="color:red;float:right">${msg}</div>
                        </div>
                       
                        <div class="login-footer">
                        
                            <span class="text-right">
                            <a href="join.jsp" class="color-white" style="font-size:14px">注册</a>
                            <a href="passwordchange.jsp" class="color-white" style="font-size:14px" >忘记密码? </a></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Javascript Libs -->
    <script type="text/javascript" src="./lib/js/jquery.min.js"></script>
    <script type="text/javascript" src="./lib/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="./lib/js/Chart.min.js"></script>
    <script type="text/javascript" src="./lib/js/bootstrap-switch.min.js"></script>
    
    <script type="text/javascript" src="./lib/js/jquery.matchHeight-min.js"></script>
    <script type="text/javascript" src="./lib/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="./lib/js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="./lib/js/select2.full.min.js"></script>
    <script type="text/javascript" src="./lib/js/ace/ace.js"></script>
    <script type="text/javascript" src="./lib/js/ace/mode-html.js"></script>
    <script type="text/javascript" src="./lib/js/ace/theme-github.js"></script>
    <!-- Javascript -->
    <script type="text/javascript" src="./js/app.js"></script>
</body>

</html>
