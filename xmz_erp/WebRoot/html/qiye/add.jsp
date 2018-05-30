<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>企业增加</title>
    <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
    <%@include file="./Copy.jsp"%>
                            <li class="active">企业增加</li>

                        <%@include file="../common/top.jsp"%>
            
             <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title"> 企业增加</span>
                        <div class="description"></div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title"></div>
                                         <div class="title">请输入您要增加的的企业信息</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form action="<%=basePath%>Enterprise/enterprise_add" method="post">
                     <div class="form-group">
                                            <label for="exampleInputEmail1">企业名称</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" name="name" placeholder="请输入企业名称">
                                       
                                            <label for="exampleInputEmail1">地址</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" name="address" placeholder="请输入地址">
                                     
                                            <label for="exampleInputEmail1">电话</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" name="phone" placeholder="请输入电话"> 
                                           
                                            <label for="exampleInputEmail1">邮箱</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" name="email" placeholder="请输入邮箱">
                                             
                                            <label for="exampleInputEmail1">负责人</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" name="linkman" placeholder="请输入负责人姓名">
                                    
                                        
                                       
                                         <button type="submit" class="btn btn-default"style="background:white">增加</button>
                                         </div>
                                         </form>
                                   <div style="color:red">${saveErr}</div>
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
