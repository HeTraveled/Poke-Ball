<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>岗位信息增加</title>
     <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
     <%@include file="./Copy.jsp"%>
                            <li class="active">岗位增加</li>                       
                         <%@include file="../common/top.jsp"%>
                          <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title"> 增加岗位信息</span>
                        <div class="description"></div>
                    </div>
                    
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">请输入您要增加的的岗位信息</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form action="<%=basePath%>Job/job_add" method="post">
                                          <div class="form-group">
                                            <label for="exampleInputEmail1">岗位信息</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" name="name" placeholder="请输入您要添加的岗位">
                                        
                                            <label for="exampleInputEmail1">岗位描述</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" name="miaoshu" placeholder="请输入您岗位描述">
                                        
                                            <!-- <label for="exampleInputEmail1">薪水</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入公司所提供的薪水">
                                        
                                            <label for="exampleInputEmail1">电话</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的电话">
                                        
                                            <label for="exampleInputEmail1">邮箱</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的邮箱"> -->
                                        </div>
                                      
                                        
                                        <button type="submit" class="btn btn-default">增加</button>
                                    </form>
                                </div>
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
