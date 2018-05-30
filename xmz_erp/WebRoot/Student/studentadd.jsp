<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>学生增加</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script  src="js/jquery.js"></script>
  </head>
  
  <body>
	<form action="<%=basePath%>studentadmin/studentadd" method="post">
     	 请输入学生姓名：<input type="text" name="name">
     	  请输入性别：<input type="text" name="gender">
     	   请输入民族：<input type="text" name="nation">
     	      请输入年龄：<input type="text" name="age">
     	    请输入生日：<input type="text" name="brithday">
     	     请输入学号：<input type="text" name="stuid">
     	      请输入身份证号码：<input type="text" name="idCard">
     	      请输入地址：<input type="text" name="address">
     	       请输入qq：<input type="text" name="qq">
     	       请输入电话：<input type="text" name="phone">
     	       请输入邮箱：<input type="text" name="email">
     	       请输入紧急电话：<input type="text" name="danger_phone">
     	 
   
        <button  type="submit">添加</button>
       </form>
	</body>
</html>
