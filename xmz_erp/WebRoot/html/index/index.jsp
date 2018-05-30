<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>
    <title>欢迎访企业资源管理系统 </title>
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
                            <li class="active">我的首页</li>
                        <%@include file="../common/top.jsp"%> 
                        <%@include file="../common/menu.jsp"%>
            <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >免费网站模板</a></div>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body padding-top">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                            <a href="#">
                                <div class="card red summary-inline">
                                    <div class="card-body">
                                        <i class="icon fa fa-inbox fa-4x"></i>
                                        <div class="content">
                                            <div class="title">50</div>
                                            <div class="sub-title">新邮件</div>
                                        </div>
                                        <div class="clear-both"></div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                            <a href="#">
                                <div class="card yellow summary-inline">
                                    <div class="card-body">
                                        <i class="icon fa fa-comments fa-4x"></i>
                                        <div class="content">
                                            <div class="title">23</div>
                                            <div class="sub-title">新会话消息</div>
                                        </div>
                                        <div class="clear-both"></div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                            <a href="#">
                                <div class="card green summary-inline">
                                    <div class="card-body">
                                        <i class="icon fa fa-tags fa-4x"></i>
                                        <div class="content">
                                            <div class="title">280</div>
                                            <div class="sub-title">企业信息</div>
                                        </div>
                                        <div class="clear-both"></div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
                            <a href="#">
                                <div class="card blue summary-inline">
                                    <div class="card-body">
                                        <i class="icon fa fa-share-alt fa-4x"></i>
                                        <div class="content">
                                            <div class="title">16</div>
                                            <div class="sub-title">企业展示</div>
                                        </div>
                                        <div class="clear-both"></div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="row  no-margin-bottom">
                        <div class="col-sm-6 col-xs-12">                            
                            <div class="row">
                                <div class="col-md-6 col-sm-12">
                                    <div class="thumbnail no-margin-bottom">
                                        <img src="<%=basePath %>img/thumbnails/picjumbo.com_IMG_4566.jpg" class="img-responsive">
                                        <div class="caption">
                                            <h3 id="thumbnail-label">优秀企业展示<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
                                            <p>这里是优秀企业岗位展示</p>
                                            <p><a href="#" class="btn btn-primary" role="button">了解一下</a> <a href="#" class="btn btn-default" role="button">下一家</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <div class="thumbnail no-margin-bottom">
                                        <img src="<%=basePath %>img/thumbnails/picjumbo.com_IMG_3241.jpg" class="img-responsive">
                                        <div class="caption">
                                            <h3 id="thumbnail-label">优秀就业人才<a class="anchorjs-link" href="#thumbnail-label"><span class="anchorjs-icon"></span></a></h3>
                                            <p>优秀就业人才展示</p>
                                            <p><a href="#" class="btn btn-success" role="button">查看岗位</a> <a href="#" class="btn btn-default" role="button">下一位</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                            <div class="card card-success">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title"><i class="fa fa-comments-o"></i> 历史消息</div>
                                    </div>
                                    <div class="clear-both"></div>
                                </div>
                                <div class="card-body no-padding">
                                    <ul class="message-list">
                                        <a href="#">
                                            <li>
                                                <img src="<%=basePath %>img/profile/JD.png" class="profile-img pull-left">
                                                <div class="message-block">
                                                    <div><span class="username">京东</span> <span class="message-datetime">12 分钟前</span>
                                                    </div>
                                                    <div class="message">请您有时间来面试</div>
                                                </div>
                                            </li>
                                        </a>
                                        <a href="#">
                                            <li>
                                                <img src="<%=basePath %>img/profile/BD.jpg" class="profile-img pull-left">
                                                <div class="message-block">
                                                    <div><span class="username">百度</span> <span class="message-datetime">15 分钟前</span>
                                                    </div>
                                                    <div class="message">我们觉得你非常适合我们企业，欢迎来面试。</div>
                                                </div>
                                            </li>
                                        </a>
                                        <a href="#">
                                            <li>
                                                <img src="<%=basePath %>img/profile/ALBB.jpg" class="profile-img pull-left">
                                                <div class="message-block">
                                                    <div><span class="username">阿里巴巴</span> <span class="message-datetime">2 小时前</span>
                                                    </div>
                                                    <div class="message">来我们公司给你30%股份</div>
                                                </div>
                                            </li>
                                        </a>
                                        <a href="#">
                                            <li>
                                                <img src="<%=basePath %>img/profile/TX.png" class="profile-img pull-left">
                                                <div class="message-block">
                                                    <div><span class="username">腾讯</span> <span class="message-datetime">1 天前</span>
                                                    </div>
                                                    <div class="message">来腾讯公司，教你手把手坑玩家的钱。</div>
                                                </div>
                                            </li>
                                        </a>
                                        <a href="#" id="message-load-more">
                                            <li class="text-center load-more">
                                                <i class="fa fa-refresh"></i> 查看更多..
                                            </li>
                                        </a>
                                    </ul>
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
