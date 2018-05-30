<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
      
    <title>修改</title>  
      
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
 
       
  </head>  
    
  <body>   
  <%--style="display: none"可以修改属性为隐藏的 --%>
  <form action="http://localhost:8080/xmz_erp/admin/useUpdate" method="post">
  <input type="text" value="${user.id}" name="id" style="display: none">
  用户名：<input type="text" value="${user.username}" name="username">
  请输入原密码：<input type="password"  name="password">
  请输入新密码：<input type="password"  name="password1">
   再次输入 密码：<input type="password"  name="password2">
  <button type="submit">保存</button> 
      </form>
<!-- 提示错误信息 -->
      ${result.msg} 
  
  </body>  
</html> 