<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>用户信息修改</title>
   
<%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
   
 <%@include file="./Copy.jsp"%>
                            <li class="active">用户信息修改</li>
                        
 <%@include file="../common/top.jsp"%>

 <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title"> 修改用户信息</span>
                        <div class="description"></div>
                    </div>
                    
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">请输入您要修改的用户信息</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form action="<%=basePath%>admin/PeopleUpdateSuccess" method="post">
                                 <%  String id1 = request.getParameter("id");%>  
                                    <input type="text" value="<%=id1 %>" name="id" style="display: none">
                                      <!--   <div class="form-group">
                                            <label for="exampleInputEmail1">用户名</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要修改的用户信息" >
                                        </div> -->
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">电话</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要修改的电话" name="phone">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">邮箱</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要修改的邮箱" name="email">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">身份证</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要修改的身份证号码" name="idCard">
                                        </div>
                                      <div class="sub-title">备注</div>
                                    <div>
                                        <textarea class="form-control" rows="3" placeholder="留言" name="comment"></textarea>
                                    </div>
                                        <div class="checkbox">
                                          <div class="checkbox3 checkbox-round">
                                            <input type="checkbox" id="checkbox-1">
                                            <label for="checkbox-1">
                                                                                                                                                                    检查信息是否正确
                                            </label>
                                          </div>
                                        </div>
                                        <button type="submit" class="btn btn-default">提交</button>
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
