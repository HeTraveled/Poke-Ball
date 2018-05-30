<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>
    <title>专业增加</title>
    <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
       <%@include file="./Copy.jsp"%>
                            <li class="active">专业增加</li>
               
 <%@include file="../common/top.jsp"%>

 <%@include file="../common/menu.jsp"%>         
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title"> 专业增加</span>
                        <div class="description"></div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title"></div>
                                         <div class="title">请输入您要增加的专业信息</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                   <form action="<%=basePath%>majoradmin/majorlogin_add" method="post">
                     <div class="form-group">
                                           <!--  <label for="exampleInputEmail1">年级</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要增加的专业年级"> -->
                                       
                                            <label for="exampleInputEmail1">专业名称</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要增加的专业名称" name="name">
                                      
                                    
                                        <div class="checkbox">
                                         
                                              此处二期补充专业描述
                                          
                                          </div>
                                       
                                         <button type="submit" class="btn xmz_btn_info">提交</button>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
         <%@include file="../common/footer.jsp"%>
        <%@include file="../common/js.jsp"%>
   </body>
</html>
