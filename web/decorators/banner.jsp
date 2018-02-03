<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String basePath = "http://innovation.xjtu.edu.cn:80/StaticFiles/web-resources/frames/mes/1.0-SNAPSHOT/";
    String appPath = "http://innovation.xjtu.edu.cn:80/InnovationToolsPlatform/";
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>空白页 </title>
		
		<!-- basic styles -->

		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />


		<!-- fonts -->

		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />

		<!-- ace styles -->
		
		

		<link rel="stylesheet" href="assets/css/ace.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<script src="assets/js/ace-extra.min.js"></script>
		
		
		
		
	</head>

	<body>
	
	<div class="navbar navbar-default" id="navbar">
    <script type="text/javascript">
        try {
            ace.settings.check('navbar', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="navbar-container" id="navbar-container">
    
        <div class="navbar-header pull-left" >
        	
        	<i class="navbar-brand"><i class="icon-leaf"></i></i>
            <a id="href0" href="http://innovation.xjtu.edu.cn/InnovationToolsPlatform/index" class="navbar-brand">
               <big>    
                <big class="center"> 小微企业多创新方法融合与集成应用平台
                </big>
                </big>
                
            </a>
  		
                
                <small class="navbar-brand"  >
                	创新管理工具集
                </small>
             
            	
				
            
            <!-- /.brand -->
        </div>
        <!-- /.navbar-header -->
        <div class="navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                

            </ul>
            <!-- /.ace-nav -->
        </div>
        <!-- /.navbar-header -->
    </div>
    <!-- /.container -->
</div>
<!-- END页面顶部导航栏 -->

<!-- 内容区域 -->
<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'collapsed')
        } catch (e) {
        }
    </script>

    <!-- 主内容区域 -->
    <div class="main-container-inner">
        <!-- 导航栏 -->
        <!-- END导航栏 -->

        <!-- 主页面内容 -->
        <div class="main-content">
            <decorator:body/>
        </div>
        <!-- /.main-content -->
        <!-- END主页面内容 -->
    </div>
    <!-- /.main-container-inner -->
    <!-- END主内容区域 -->
</div>
<!-- /.main-container -->
<!-- END内容区域 -->
<!-- inline scripts related to this page -->
</body>
</html>
