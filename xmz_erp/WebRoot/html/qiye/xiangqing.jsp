<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

<head>
    <title>企业详情</title>
   
 <%@include file="../common/css.jsp"%>
</head>

<body class="flat-blue">

    <%@include file="./Copy.jsp"%>
                            <li class="active">企业详情</li>
                        <%@include file="../common/top.jsp"%>            
                        <%@include file="../common/menu.jsp"%>
            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">企业详情</span>
                        <div class="description">企业详细介绍</div>
                    </div>

                    <div class="row">
                     
                        <div class="col-xs-12">
                  
                            <div class="card">
                                <div class="card-header">
                                <c:forEach var="u" items="${Enterprise_Hackfan}">
                                	<input type="text" value="${u.id}" name="id" id="id11" style="display: none">
                                    <div class="card-title">
                                    
                                         <div class="title" >
                                  
                                         

		
                                   <c:out value="${u.name}"></c:out>
			
                                        </div>
                                        <div class="description">企业描述(暂时没有，可以是一句话的简单介绍)</div>
                                    </div></c:forEach>
                                    <div class="pull-right card-action">
                                        <div class="btn-group" role="group" aria-label="...">
                                            <button type="button" class="btn btn-link" data-toggle="modal" data-target="#modalCardJumbotronExample"><i class="fa fa-code"></i>大屏幕</button>
                                        </div>
                                    </div>
                                </div>

                                <div class="card-body">
                                    <div class="row no-margin">
                                        <div class="col-sm-6">
                                            <div class="card primary">
                                                <div class="card-jumbotron no-padding">
                                                    <img src="../../img/thumbnails/picjumbo.com_IMG_3241.jpg" height="533" width="800" class="img-responsive">
                                                </div>
                                                <div class="card-body">
                                                    <h4 >岗位信息(点击岗位名进行岗位删除)</h4>
                                                     <div style="color:red;float:right;">${delSuccess }</div> 
                                                    <tbody>
                                                   
                                                    <tr class="active">
                                                        <th scope="row"></th>
                                                        <td>
	<c:forEach var="j" items="${Job_Hackfan}">
	<td> <button type="button" class="btn btn-xs btn-default"><a href="<%=basePath%>Enterprise/enterprise_job_delete/${j.id}" onclick="return confirm('确定要删除吗?')">
	
					
				<c:out value="${j.name}"></c:out> </a></button>
				<td>  <a class="btn btn-xs btn-danger " href="<%=basePath%>Enterprise/enterprise_job_delete/${j.id}" onclick="return confirm('确定要删除吗?')">删除</a></td>
			</td>
		</c:forEach>
</td>
                                                    </tr>
                                                    </tbody>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                         <c:forEach var="u" items="${Enterprise_Hackfan}">
                                            <div class="card">
                                                
                                                <div class="card-jumbotron">
                                              
                                                    <h1><c:out value="${u.name}"></c:out></h1>
                                                
                                                    <h3>
                                                    <tbody>
                                                    <tr class="active">
                                                        <th scope="row">地址:</th>
                                                        <td><c:out value="${u.address}"></c:out></td>
                                                    </tr>
                                                    <td>
				<a class="btn btn-xs btn-info " href="<%=basePath%>html/qiye/change.jsp?id=${u.id}">修改</a></td>
				<td>  <a class="btn btn-xs btn-danger " href="<%=basePath%>Enterprise/enterprise_delete/${u.id}" onclick="return confirm('确定要删除吗?')">删除</a></td>
			
                                                    </tbody>
                                                    </h3>
                                                </div>    
                                                <div class="card-body">
                                                    <h4>联系他们</h4>
                                                   <tbody>
                                                    <tr class="active">
                                                    <th scope="row">负责人:</th>
                                                        <td><c:out value="${u.linkman}"></c:out></td>
                                                        <th scope="row">电话:</th>
                                                        <td><c:out value="${u.phone}"></c:out></td>
                                                       <th scope="row">邮箱:</th>
                                                        <td><c:out value="${u.email}"></c:out></td> 
                                                    </tr>
                                                    <a class="btn btn-xs btn-info " href="<%=basePath%>html/qiye/change.jsp?id=${u.id}">修改</a></td>
				<td>  <a class="btn btn-xs btn-danger " href="<%=basePath%>Enterprise/enterprise_delete/${u.id}" onclick="return confirm('确定要删除吗?')">删除</a></td>
                                                    
                                                    </tbody>
                                                 
                                              <!--       <form action="liebiao.jsp" method="post">
													 <input type="hidden" name="uname" value="u.name">
													 <input type="submit">
													</form> -->
                                                    
                                                    </div>
                                        </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
          
                    <div class="modal fade" id="modalCardJumbotronExample" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel">Card Jumbotron Example</h4>
                                </div>
                                <div class="modal-body no-padding">
                                    <div id="code-preview-card-jumbotron" class="code-preview">&lt;div class=&quot;card primary&quot;&gt;
    &lt;div class=&quot;card-jumbotron no-padding&quot;&gt;
        &lt;img src=&quot;../../img/thumbnails/picjumbo.com_IMG_3241.jpg&quot; height=&quot;533&quot; width=&quot;800&quot; class=&quot;img-responsive&quot;&gt;
    &lt;/div&gt;
    &lt;div class=&quot;card-body&quot;&gt;
        &lt;h4&gt;Lorem Ipsum&lt;/h4&gt;
        Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor.
    &lt;/div&gt;
&lt;/div&gt;</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
        <%@include file="../common/footer.jsp"%>
        <%@include file="../common/js.jsp"%>
</body>

</html>
