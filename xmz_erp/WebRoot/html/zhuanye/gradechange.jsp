<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>班级修改</title>
    <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">

    <%@include file="./Copy.jsp"%>
                            <li class="active">班级修改</li>
                        <%@include file="../common/top.jsp"%>           
                        <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title"> 班级信息修改</span>
                        <div class="description"></div>
                    </div>
                    
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title"></div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form action="<%=basePath%>banjiadmin/nameUpdate" method="post">
                                    <input type="text" value="${name.id}" name="id" style="display: none">
                                    <div class="form-group">
                                            <label for="exampleInputEmail1">您要修改班级名称为：</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="您要修改班级名称为：" name="name">
                                       
                                        <div class="checkbox">
                                          <div class="checkbox3 checkbox-round">
                                            <input type="checkbox" id="checkbox-1">
                                           <!--  <label for="checkbox-1">
                                              检查信息是否正确
                                            </label> -->
                                          </div>
                                        </div>
                                        <button type="submit" class="btn xmz_btn_info">确定修改</button>
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
