<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>企业修改</title>
    <%@include file="../common/css.jsp"%>
    
</head>

<body class="flat-blue">
	<%
		//a标签传值，下面接收
		String id = request.getParameter("id");
		// name=new String(name.getBytes("iso-8859-1"),"gb2312");  
		//out.print("id:"+id); 
		request.getSession().setAttribute("user", id);
		String a = (String) session.getAttribute("user");
		//out.print("id222:"+a);
	%>
	
    <%@include file="./Copy.jsp"%>
                            <li class="active">企业修改</li>
    
                        <%@include file="../common/top.jsp"%>
             
           <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title"> 企业信息修改</span>
                        <div class="description"></div>
                    </div>
                    
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-header">
                                    <div class="card-title">
                                        <div class="title"></div>
                                         <div class="title">请输入您要修改的的企业信息</div>
                                    </div>
                                </div>
                                <div class="card-body">
                                
                                    <form action="<%=basePath%>Enterprise/EnterpriseUpdateSuccess" method="post">
                                   <input type="text" value="<%=id%>" name="id" style="display: none">
                                    <div class="form-group">
                                            <!-- <label for="exampleInputEmail1">请输入您要修改的企业名称</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" name="name" placeholder="请输入您要修企业名称"> -->
                                        
                                            <!-- <label for="exampleInputEmail1">请输入修改后的企业名称</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="请输入企业名称"> -->
                                            <label for="exampleInputEmail1">请输入您要修改的地址</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" name="address" placeholder="请输入地址">
                                            
                                       
                                            <label for="exampleInputEmail1">请输入您要修改的电话</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" name="phone" placeholder="请输入电话"> 
                                            <div class="form-group">
                                            <label for="exampleInputEmail1">请输入您要修改的邮箱</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" name="email" placeholder="请输入邮箱">
                                             
                                            <label for="exampleInputEmail1">请输入您要修改的负责人姓名</label>
                                            <input type="text" class="form-control" id="exampleInputEmail1" name="linkman" placeholder="请输入负责人姓名"> 
                                                                
                                    
                                        <div class="checkbox">
                                          <div class="checkbox3 checkbox-round">
                                            <input type="checkbox" id="checkbox-1">
                                            <label for="checkbox-1">
                                              检查信息是否正确
                                            </label>
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
