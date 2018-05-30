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
                            <li class="active">学生详情</li>      
                        <%@include file="../common/top.jsp"%>                   
                        <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">班级成员信息表</span>
                        <div class="description">在这里你可以查看班级成员的信息</div>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">

                                    <div class="card-title">
                                    <div class="title">班级成员详细信息查看</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                      <div class="row">
                                        <div class="col-sm-12 col-md-6">
                                            <div class="sub-title">您可以查看所有班级的信息 </div>
                                      <!--         <div>
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
                                         <button type="submit" class="btn btn-default"style="background:white"> 查询
                                          </button>
                                    </div> -->
                                            <table class="table" >
                                                <thead>
                                                    <tr>
      <th>学号</th>                                               
  	<th>姓名</th>
  	<th>性别</th>
  	<th>民族</th>
  	<th>年龄</th>
  	<th>生日</th>
  	<th>身份证号</th>
  	<th>地址</th>
  	<th>qq</th>
  	<th>电话</th>
  	<th>邮箱</th>
  	<th>紧急电话</th>
  	<th>删除</th>
  	<th>修改</th>
                                                       <!--    <th style="width:60px">删除</th> -->
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="active">
                                                     <c:forEach var="n" items="${requestScope.nameHackfan}">
      <input type="text" value="${n.id}" name="id" style="display: none">
      
  	<td><c:out value="${n.name}"></c:out></td>
  	<td><c:out value="${n.gender}"></c:out></td>
  	<td><c:out value="${n.nation}"></c:out></td>
  	<td><c:out value="${n.age}"></c:out></td>
  	<td><c:out value="${n.brithday}"></c:out></td>
 
  	<td><c:out value="${n.idCard}"></c:out></td>
  	<td><c:out value="${n.address}"></c:out></td>
  	<td><c:out value="${n.qq}"></c:out></td>
  	<td><c:out value="${n.phone}"></c:out></td>
  	<td><c:out value="${n.email}"></c:out></td>
  	<td><c:out value="${n.danger_phone}"></c:out></td>
  	 <td><a class="btn btn-xs btn-danger " href="<%=basePath%>studentadmin/studentdelete/${n.id}" onclick="openwin();">删除学生</a></td>
  	   <td><a class="btn btn-xs btn-info " href="<%=basePath%>studentadmin/studentupdate/${n.id}">修改名称</a></td>
	</c:forEach>
                                                       <!--  <th scope="row">1</th>
                                                        <td>张三</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                       <td>  <button type="button" class="btn btn-xs btn-default"><a href="./change.jsp">修改</a></button></td>
                                                        <td> <button type="button" class="btn btn-xs btn-default"><a href="./add.jsp">增加</a></button></td>

                                                <td><button><a href="/anew/todel/@a.id" onclick="return confirm('确定要删除吗?')">删除</a> </button></td> -->
                                                    </tr>
                                                   <!--  <tr>
                                                        <th scope="row">2</th>
                                                        <td>李四</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>  <button type="button" class="btn btn-xs btn-default"><a href="./change.jsp">修改</a></button></td>
                                                        <td> <button type="button" class="btn btn-xs btn-default"><a href="./add.jsp">增加</a></button></td>
                                                        <td><button><a href="/anew/todel/@a.id" onclick="return confirm('确定要删除吗?')">删除</a> </button></td>
                                                    </tr>
                                                    <tr class="success">
                                                        <th scope="row">3</th>
                                                        <td>王五</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>Column content</td>
                                                        <td>  <button type="button" class="btn btn-xs btn-default"><a href="./change.jsp">修改</a></button></td>
                                                        <td> <button type="button" class="btn btn-xs btn-default"><a href="./add.jsp">增加</a></button></td>
                                                        
                                                <td><button><a href="/anew/todel/@a.id" onclick="return confirm('确定要删除吗?')">删除</a> </button></td>
                                                    </tr>     -->                                                          
                                                </tbody>
                                            </table>
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
