<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>专业修改</title>
    
<%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">
   <%@include file="./Copy.jsp"%>
  
                            <li class="active">专业修改</li>
                        <%@include file="../common/top.jsp"%> 
                        <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title"> 专业信息修改</span>
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
                                   <form action="<%=basePath%>majoradmin/nameUpdate" method="post">
  <input type="text" value="${name.id}" name="id" style="display: none">
                                     <div class="form-group">
                                            <label for="exampleInputEmail1">请输入要修改的专业</label>
                                             <div>

                
                                        请输入新专业名：<input type="text"  name="name">
                                       
                                     <div class="checkbox">
                                          
                                              此处二期补充专业描述
                                            
                                        </div> 
                                        <button type="submit" class="btn xmz_btn_info">提交修改</button>
                                    </form>
                                     <%-- ${result.msg}  --%>
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
