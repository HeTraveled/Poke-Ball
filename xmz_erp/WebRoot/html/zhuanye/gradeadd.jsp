<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>班级增加</title>
   <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
    <%@include file="./Copy.jsp"%>
                            <li class="active">班级增加</li>                     
                       <%@include file="../common/top.jsp"%>             
                       <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title"> 班级增加</span>
                        <div class="description"></div>
                    </div>
                     <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">请输入您要增加的的班级名称</div>
                                    </div>
                                </div>
                    <div class="card-body">
                     <form action="<%=basePath%>banjiadmin/banjiadd" method="post">                   
                                  <div class="form-group">
                                            <label for="exampleInputEmail1">班级名称</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入增加的班级名称"name="name">
                                     <!--  <label for="exampleInputEmail1">课程描述</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入增加的课程描述"> -->
                                    
                                        <div class="checkbox">
                                          <div class="checkbox3 checkbox-round">
                                            <input type="checkbox" id="checkbox-1">
                                            <label for="checkbox-1">
                                                                                                                                               检查信息是否正确
                                            </label>
                                          </div>
                                        </div>
                                        <button type="submit" class="btn btn-default"style="background:white">增加</button>
                          </form>
                                </div>
                            </div>
                        </div>
                    </div>
           
        <%@include file="../common/footer.jsp"%>
        <%@include file="../common/js.jsp"%>
</body>

</html>
