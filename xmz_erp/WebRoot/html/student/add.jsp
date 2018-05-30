<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>学生增加</title>
    
 <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
       <%@include file="./Copy.jsp"%>
                            <li class="active">学生增加</li>

                        <%@include file="../common/top.jsp"%>

            <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title"> 增加学生信息</span>
                        <div class="description"></div>
                    </div>
                    
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">请输入您要增加的的学生信息</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form action="<%=basePath%>studentadmin/studentadd" method="post">
                                    <div class="form-group">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">学生姓名</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入学生姓名"name="name">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">性别</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入学生性别"name="gender">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">民族</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入学生民族"name="nation">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">年龄</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入学生年龄"name="age">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">生日</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入学生生日"name="brithday">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">学号</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入学生学号"name="stuid">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">身份证号</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入学生身份证"name="idCard">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">地址</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入学生地址"name="address">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">qq</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入学生qq"name="qq">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">电话</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入学生电话"name="phone">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">邮箱</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入学生邮箱"name="email">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">紧急联系电话</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入学生紧急电话"name="danger_phone">
                                        </div>
                                        <button type="submit" class="btn btn-default">确定增加</button>
                                    </form>
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
