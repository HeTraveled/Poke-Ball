<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>登录首页</title>
     <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue landing-page">
    <nav class="navbar navbar-inverse navbar-fixed-top  navbar-affix" role="navigation" data-spy="affix" data-offset-top="60">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <div class="icon fa fa-paper-plane"></div>
                    <div class="title">企教管理</div>
                </a>
            </div>
            <div id="navbar" class="navbar-collapse collapse " aria-expanded="true">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active"><a href="login.jsp">主页</a></li>
                    <li><a href="#about">信息</a></li>
                    <li><a href="#contact">联系我们</a></li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </nav>
    <div class="jumbotron app-header">
        <div class="container">
            <h2 class="text-center"><i class="app-logo fa fa-connectdevelop fa-5x color-white"></i><div class="color-white">企教管理，您通往成功的捷径。</div></h2>
            <p class="text-center color-white app-description">在这里您可以了解各种企业资讯，为您提供就业，择业的人生难题。</p>
            <p class="text-center"><a class="btn btn-primary btn-lg app-btn" href="<%=basePath%>login.jsp" role="button">进 入 »</a></p>
        </div>
    </div>
    <div class="container-fluid app-content-a">
        <div class="container">        <div class="row text-center">
            <div class="col-md-4 col-sm-6">
                <span class="fa-stack fa-lg fa-5x">
                  <i class="fa fa-circle-thin fa-stack-2x"></i>
                  <i class="fa fa-twitter fa-stack-1x"></i>
                </span>
                <h2>人才招聘</h2>
                <p>此处内容虚位以待</p>
            </div>
            <!-- /.col-lg-4 -->
            <div class="col-md-4 col-sm-6">
                <span class="fa-stack fa-lg fa-5x">
                  <i class="fa fa-circle-thin fa-stack-2x"></i>
                  <i class="fa fa-inbox fa-stack-1x"></i>
                </span> 
                <h2>岗位信息</h2>
                <p>您可以查看各岗位在职信息</p>
            </div>
            <!-- /.col-lg-4 -->
            <div class="col-md-4 col-sm-6">
                <span class="fa-stack fa-lg fa-5x">
                  <i class="fa fa-circle-thin fa-stack-2x"></i>
                  <i class="fa fa-comments-o fa-stack-1x"></i>
                </span>
                <h2>联系我们</h2>
                <p>您可以在此给我们留言。</p>
            </div>
            <!-- /.col-lg-4 -->
        </div>
        </div>
    </div>
    <div class="container-fluid app-content-b feature-1">
        <div class="container">
            <div class="row">
                <div class="col-md-7 col-sm-6">
                </div>
                <div class="col-md-5 col-sm-6 text-right color-white">
                    <h2 class="featurette-heading"></h2>
                    <p class="lead">职场语录：
                    失败是什么，没有什么，只是更走进成功一步；成功是什么？就是走过了所有通向失败的路，只剩下一条路，那就是成功的路。</p>
                </div>  
            </div>
        </div>
    </div>

  
    
   
    <%@include file="../common/js.jsp"%>
    
</body>

</html>
