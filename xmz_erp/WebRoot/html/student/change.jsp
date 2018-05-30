<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>
    <title>学生详情</title>
   <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">


     <%@include file="./Copy.jsp"%>
                            <li class="active">学生修改</li>
                       <%@include file="../common/top.jsp"%>             
                       <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title"> 修改学生信息</span>
                        <div class="description"></div>
                    </div>
                    
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title">请输入您要修改的学生信息</div>
                                    </div>
                                </div>
                               
                                  
                                  
                                <div class="card-body">
                                
                                 <c:forEach var="s" items="${student}">
                                        <c:out value="${s.name}"></c:out>
                                
                                    <form action="<%=basePath%>studentadmin/nameUpdate" method="post">
                                      <input type="text" value="${sid}" name="id" style="display: none">
                                   
                                     <!--   <div class="form-group">
                                            <label for="exampleInputEmail1">学生姓名</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要修改的学生姓名">
                                        </div>
                                          <div class="form-group">
                                            <label for="exampleInputEmail1">请选择您要修改的班级</label>
                                             <div>
                                        <select>
                                            <optgroup label="年级">
                                                <option value="AK">2015级</option>
                                                <option value="HI">2016级</option>
                                                <option value="HI">2017级</option>

                                            </optgroup>                                          
                                        </select>
                                        <select>
                                            <optgroup label="专业">
                                                <option value="AK">计算机网络技术</option>
                                                <option value="HI">移动通讯技术</option>
                                            </optgroup>                                          
                                        </select>
                                        <select>
                                            <optgroup label="班级">
                                                <option value="AK">1班</option>
                                                <option value="HI">2班</option>
                                                <option value="HI">3班</option>
                                                <option value="HI">4班</option>
                                            </optgroup>                                          
                                        </select>
                                         <button type="submit" class="btn btn-default"style="background:white"> 确定
                                          </button>
                                    </div>
                                        </div> -->
                                      
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">学生姓名</label>
                                            <input value="${s.name}" type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的学生姓名"name="name">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">性别</label>
                                            <input value="${s.gender}" type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的学生姓名"name="gender">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">民族</label>
                                            <input value="${s.nation}" type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的学生姓名"name="nation">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">年龄</label>
                                            <input value="${s.age}" type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的学生姓名"name="age">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">生日</label>
                                            <input value="${s.brithday}" type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的学生姓名"name="brithday">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">学号</label>
                                            <input value="${s.stuid}" type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的学生姓名"name="studid">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">身份证号</label>
                                            <input value="${s.idCard}" type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的学生姓名"name="idCard">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">地址</label>
                                            <input value="${s.address}" type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的学生姓名"name="address">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">qq</label>
                                            <input value="${s.qq}" type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的学生姓名"name="qq">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">电话</label>
                                            <input value="${s.phone}" type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的电话"name="phone">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">邮箱</label>
                                            <input value="${s.email}" type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的邮箱"name="email">
                                        </div>
                                         <div class="form-group">
                                            <label for="exampleInputEmail1">紧急联系电话</label>
                                            <input value="${s.danger_phone}" type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要添加的学生姓名"name="danger_phone">
                                        </div>
                                       <!--  <div class="form-group">
                                            <label for="exampleInputEmail1">就业单位</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入您要修改的就业单位">
                                        </div> -->
                                     
                                        <div class="checkbox">
                                          <div class="checkbox3 checkbox-round">
                                            <input type="checkbox" id="checkbox-1">
                                            <label for="checkbox-1">
                                              检查信息是否正确
                                            </label>
                                          </div>
                                        </div>
                                        <button type="submit" class="btn btn-default">确定修改</button>
                                    </form>
                                 </c:forEach>
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
