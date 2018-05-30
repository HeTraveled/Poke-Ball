<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<div class="side-menu sidebar-inverse">
                <nav class="navbar navbar-default" role="navigation">
                    <div class="side-menu-container">
                        <div class="navbar-header">
                            <a class="navbar-brand" href="#">
                                <div class="icon fa fa-paper-plane"></div>
                                <div class="title">企业资源池</div>
                            </a>
                            <button type="button" class="navbar-expand-toggle pull-right visible-xs">
                                <i class="fa fa-times icon"></i>
                            </button>
                        </div>
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="<%=basePath%>html/index/index.jsp">
                                    <span class="icon fa fa-tachometer"></span><span class="title">首页</span>
                                </a>
                            </li>
                            <li class="panel panel-default dropdown" id="l1">
                                <a data-toggle="collapse" href="#dropdown-element">
                                    <span class="icon fa fa-desktop"></span><span class="title">学生管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-element" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="<%=basePath%>gradeadmin/xlgradelist">学生列表</a></li>
                                           <%--  <li><a href="<%=basePath%>html/student/xiangqing.jsp">学生详情</a></li>
                                            </li> --%>
                                            <li><a href="<%=basePath%>html/student/add.jsp">学生增加</a>
                                            </li>
                                           <%--  <li><a href="<%=basePath%>html/student/change.jsp">学生修改</a> --%>
                                         
                                            
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class=" panel panel-default dropdown"id="l2">
                                <a data-toggle="collapse" href="#dropdown-table">
                                    <span class="icon fa fa-table"></span><span class="title">企业管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-table" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="<%=basePath%>Enterprise/list">企业列表</a>
                                            </li>
                                           <!--  <li><a href="../qiye/xiangqing.jsp">企业信息</a>
                                            </li> -->
                                           
                                            <li><a href="<%=basePath%>html/qiye/add.jsp">企业增加</a>
                                            </li>
                                            <!-- <li><a href="../qiye/change.jsp">企业修改</a>
                                            </li> -->
                                            
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li class="panel panel-default dropdown"id="l3">
                                <a data-toggle="collapse" href="#dropdown-form">
                                    <span class="icon fa fa-file-text-o"></span><span class="title">岗位管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-form" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="<%=basePath%>Job/list">岗位列表</a>
                                            </li>
                                        
                                         <!--    <li><a href="../gangwei/particulars.jsp">岗位详情</a>
                                            </li>
                                         -->
                                            <li><a href="<%=basePath%>html/gangwei/add.jsp">岗位增加</a>
                                            </li>
                                        
                                           <!--  <li><a href="../gangwei/change.jsp">岗位修改</a>
                                            </li> -->
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <!-- Dropdown-->
                            <li class="panel panel-default dropdown" id="l4">
                                <a data-toggle="collapse" href="#component-example">
                                    <span class="icon fa fa-cubes"></span><span class="title">课程管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="component-example" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="<%=basePath%>courseadmin/courselist_g">课程列表</a>
                                            </li>
                                         <!--    <li><a href="../lesson/particulars.jsp">课程详情</a> -->
                                            </li>
                                            <li><a href="<%=basePath%>html/lesson/add.jsp">课程增加</a>
                                            </li>
                                            <!-- <li><a href="../html/lesson/change.jsp">课程修改</a> -->
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <!-- Dropdown-->
                            <li class="panel panel-default dropdown"  id="l5">
                                <a data-toggle="collapse" href="#dropdown-example">
                                    <span class="icon fa fa-slack"></span><span class="title">专业管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-example" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="<%=basePath%>majoradmin/majorlist">专业列表</a>
                                            </li>
                                           
                                             <li><a href="<%=basePath%>html/zhuanye/zhuanyeadd.jsp">专业增加</a>
                                            </li>
                                            
                                          
                                             <li><a href="<%=basePath%>banjiadmin/banjilist">班级列表</a>
                                            
                                      
                                            <li><a href="<%=basePath%>html/zhuanye/gradeadd.jsp">班级增加</a>
                                            </li>
                                                                                                                                                                            
                                        </ul>
                                    </div>
                                </div>
                            </li>
                              
                            <!-- Dropdown-->
                            <li class="panel panel-default dropdown"id="l6">
                                <a data-toggle="collapse" href="#dropdown-icon">
                                    <span class="icon fa fa-archive"></span><span class="title">用户管理</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-icon" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li><a href="<%=basePath%>html/user/login.jsp">登录(改成注销或者去掉，还有顺序)</a>
                                            </li>
                                            <li><a href="<%=basePath%>html/user/join.jsp">注册</a>
                                            </li>
                                            <li><a href="<%=basePath%>html/user/userindex.jsp">登录主页</a>
                                            </li>
                                            <li><a href="<%=basePath%>admin/list">用户列表</a>
                                            </li>
                                         <%--  <li><a href="<%=basePath%>html/user/userxiangqing.jsp">用户详情</a>
                                            </li> 
                                          <li><a href="<%=basePath%>html/user/userchange.jsp">用户修改</a>
                                            </li> 
                                            <li><a href="<%=basePath%>html/user/passwordchange.jsp">修改密码</a>
                                            </li> 
                                             <li><a href="<%=basePath%>html/user/quanxianchange.jsp">修改权限</a>
                                            </li> --%> 
                                        </ul>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <a href="<%=basePath%>html/index/aboutus.jsp">
                                    <span class="icon fa fa-thumbs-o-up"></span><span class="title">关于我们</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
            </div>