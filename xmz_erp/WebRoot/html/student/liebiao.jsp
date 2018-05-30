<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>用户详细信息表</title>
    
 <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
  <%  
            String id = request.getParameter("banji_id");
		// name=new String(name.getBytes("iso-8859-1"),"gb2312");  
		//out.print("id:"+id); 
		request.getSession().setAttribute("user", id);
String a=(String)session.getAttribute("user");
//out.print("id222:"+a); 
        %>
         
      
    <%@include file="./Copy.jsp"%>
                            <li class="active">学生列表</li>
                        <%@include file="../common/top.jsp"%>            
                        <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">学生列表</span>
                       <!--  <div class="description">所有专业</div> -->
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">

                                    <div class="card-title">
                                    <div class="title">信息表</div>
                                    </div>
                                </div>
    <form action="<%=basePath%>studentadmin/glstudentlist" method="post">                          
   <select style="width:100px" id="select1" name="n_name">
   <option value="0">请选择年级</option>
   <c:forEach var="n" items="${name}">   
 <option value="${n.name}">${n.name}</option>
</c:forEach>
</select>

<select style="width:120px" id="select2" name="m_name">

 <option value="0">请选择专业</option>
 </select>

<select style="width:120px" id="select3" name="b_name">
<option value="0">请选择班级</option>
</select>
  <button type="submit" > 搜索</button>
   </form>
<!-- <input type="text" onclick="show(this)"> -->
<!-- <script language="javascript">
 function show(obj){
  obj.value = window.document.getElementById("slt1").value + "." + window.document.getElementById("slt2").value + "." + window.document.getElementById("slt3").value;
 }</script> -->

                                <div class="card-body">
   <%-- <form action="<%=basePath%>studentadmin/banji_to_student_binding" method="post"> --%>
    <table class="datatable table table-striped" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>姓名</th>
                                            <!--     <th>删除</th>
                                                <th>修改</th> -->
                                                <th>详情</th>
                                          
  												<%-- <th> <button type="submit"  class="btn btn-xs btn-default">绑定</button></th>
  												<th><input type="text" value="<%=a%>" name="banji_id" style="display: none"></th> --%>
                                                <!-- <th>年级</th>
                                                <th>专业</th>
                                                <th>班级</th>
                                                <th>操作</th>   -->                     
                                            </tr>
                                        </thead>
                                      <!--  <tfoot>
                                            <tr>
                                                <th>Name</th>
                                                <th>Position</th>
                                                <th>Office</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                                                             
                                            </tr>
                                        </tfoot>  -->
                                        <tbody>
                                           <c:forEach var="s" items="${StudentAll}">   
                                            <tr>                                                
                                                <td style="vertical-align:middle;"><c:out value="${s.name}"></c:out></td>
    <%--  <td><a class="btn btn-xs btn-danger " href="<%=basePath%>studentadmin/studentdelete/${u.id}" onclick="openwin();">删除学生</a></td>
  	<td><a class="btn btn-xs btn-info " href="<%=basePath%>studentadmin/studentupdate/${u.id}">修改名称</a></td> --%>
  	<td><a class="btn btn-xs btn-warning " href="<%=basePath%>studentadmin/studentHackfan/${s.id}">学生详情</a></td>	
  	
                                              <!--   <td>2015级</td>
                                                <td><a class="xmz_a"title="点击查看详细信息" >计算机网络技术</a></td>
                                               
                                                <td>2班</td>
                                                <td><button type="button" class="btn btn-xs btn-default"><a href="./xiangqing.jsp">查看详情</a></button></td> -->
                                                
                                            </tr>
                                           <!--  <tr>
                                            <td>阿超</td>
                                                <td>2015级</td>
                                                <td>计算机网络技术</a></td>
                                                <td>3班</td>
                                              
                                                <td><button type="button" class="btn btn-xs btn-default"><a href="./xiangqing.jsp">查看详情</a></button></td>
                                               
                                                
                                            </tr>
                                            <tr>
                                            <td>呼呼</td>
                                                <td>2015级</td>
                                                <td><a class="xmz_a"title="点击查看详细信息" >计算机网络技术</a></td>
                                                <td>3班</td>
                                                
                                                <td><button type="button" class="btn btn-xs btn-default"><a href="./xiangqing.jsp">查看详情</a></button></td>
                                                 
                                            </tr> -->
                                            </c:forEach>
                                            
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
        <script type="text/javascript">
		
			 $("#select1").change(function(){
			 $("#select2 option[value!='0']").remove();
			var txt = $(this).val();
			 	$.ajax({
					url:"<%=basePath%>majoradmin/xlmajorlist",
					//调用post方法
					type:"post",
					data:{
						"select1":txt
						},
					dataType:"json",
					success:function(a){
					  //var str=a.responseText;
					for(var i=0; i<a.length;i++){     //循环添加多个值
						$("#select2").append("<option value='"+a[i]+"'>"+a[i]+"</option>");
						}
				
					},
					error:function(){
						alert("testPost异常");
						
					}
				});  
			}); 
			
			 $("#select2").change(function(){
			 $("#select3 option[value!='0']").remove();
			var txt = $(this).val();
			 	$.ajax({
					url:"<%=basePath%>banjiadmin/xlbanjilist",
					//调用post方法
					type:"post",
					data:{
						"select2":txt
						},
					dataType:"json",
					success:function(a){
					  //var str=a.responseText;
					for(var i=0; i<a.length;i++){     //循环添加多个值
						$("#select3").append("<option value='"+a[i]+"'>"+a[i]+"</option>");
						}
				
					},
					error:function(){
						alert("testPost异常");
						
					}
				});  
			}); 
			
		
		</script>

</body>

</html>
