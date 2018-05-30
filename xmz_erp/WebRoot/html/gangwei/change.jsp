<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>岗位信息修改</title>
     <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
<%String id=request.getParameter("id"); %>
    <%@include file="./Copy.jsp"%>
                            <li class="active">岗位修改</li>                  
                        <%@include file="../common/top.jsp"%>                          
                        <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title"> 修改岗位信息</span>
                        <div class="description"></div>
                    </div>
                    
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">请输入您要修改的的岗位信息</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                   <form action="<%=basePath%>Job/JobUpdateSuccess" method="post">
                                   <input type="text" value="<%=id %>" name="id" style="display: none">
                                          <div class="form-group">
                                            <label for="exampleInputEmail1">修改的岗位名称</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" name="name" placeholder="请输入您要修改的岗位名称">
                                        
                                            <label for="exampleInputEmail1">岗位描述</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" name="miaoshu" placeholder="请输入您岗位描述">
                                        
                                            <!-- <label for="exampleInputEmail1">薪水</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入公司所提供的薪水">
                                       
                                            <label for="exampleInputEmail1">电话</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的电话">
                                       
                                            <label for="exampleInputEmail1">邮箱</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的邮箱"> -->
                                        </div>
                                         <div class="checkbox">
                                          <div class="checkbox3 checkbox-round">
                                            <input type="checkbox" id="checkbox-1">
                                          <!--   <label for="checkbox-1">
                                                                                                                                                              检查信息是否正确
                                            </label> -->
                                          </div>
                                        </div>
                                        <button type="submit" class="btn xmz_btn_info">修改</button>
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
