<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="js/jquery.js">
</script>

  </head>
  
  <body><div id="all">
	请输入注册姓名：
	<input type="text" name="username" id="username">
	<br> 请输入密码：
	<input type="password" name="password" id="password">
	<br> 请再次输入密码：
	<input type="password" name="password2" id="password2">
	<br> 请输入电话：
	<input type="text" name="phone" id="phone">
	<br>
	<button id="save" type="submit">注册</button>
</div>

	<script type="text/javascript">

		$(document).ready(function() {
				//alert("进来了......");
				$("#save").click(function() {
				//alert("登陆中......");
				var username = $("#username").val();
				//alert(username);
				var password = $("#password").val();
				var password2 = $("#password2").val();
				var phone = $("#phone").val(); 
					$.ajax({
					url : "admin/login_add",
							//调用post方法
							type : "post",
							data : {
							
							 "username" : username,
							"password" : password,
							"password2" : password2,
							"phone" : phone, 
							
							},
							dataType : "json",
							clearForm: true   ,
				success : function(result) {
				
			if(result.state=100){
			alert(result.msg+"错误代码："+result.state);
		
			//$("#all").html();
			}
			else if(result.state=001){
			alert(result.msg+"错误代码："+result.state);
			//$("#all").html();
			}
			
			else if(result.state=002){
			alert(result.msg+"错误代码："+result.state);
			//$("#all").html();
			}
			
			else if(result.state=003){
			alert(result.msg+"错误代码："+result.state);
			//$("#all").html();
			}
			
			else if(result.state=004){
			alert(result.msg+"错误代码："+result.state);
			//$("#all").html();
			}
			
			else if(result.state=005){
			alert(result.msg+"错误代码："+result.state);
			//$("#all").html();
			}
			else if(result.state=006){
			alert(result.msg+"错误代码："+result.state);
			//$("#all").html();
			}
			else if(result.state=111){
			alert(result.msg);
			//不跳转页面
			window.location.href = "jsp/Admin/index.jsp";}			
					},
					error : function() {
					alert("testPost异常");}
						});
			});

});
	</script>
  </body>
</html>
