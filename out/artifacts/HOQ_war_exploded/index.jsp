<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>质量屋</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="assets/css/font-awesome-ie7.min.css"/>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300"/>
    <link rel="stylesheet" href="assets/css/ace.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-rtl.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-skins.min.css"/>
    <link rel="stylesheet" href="assets/css/ace-ie.min.css"/>
    <script src="assets/js/ace-extra.min.js"></script>
    <script src="assets/js/html5shiv.js"></script>
    <script src="assets/js/respond.min.js"></script>
</head>


<body>
<%--定义页眉页脚--%>
<jsp:include page="decorators/banner2.jsp"></jsp:include>
<jsp:include page="decorators/copyright.jsp"></jsp:include>

<%--定义侧边栏--%>
<div class="sidebar" id="sidebar">
    <script type="text/javascript">
        try {
            ace.settings.check('sidebar', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
            <button class="btn btn-success">
                <i class="icon-signal"></i>
            </button>

            <button class="btn btn-info">
                <i class="icon-pencil"></i>
            </button>

            <button class="btn btn-warning">
                <i class="icon-group"></i>
            </button>

            <button class="btn btn-danger">
                <i class="icon-cogs"></i>
            </button>
        </div>

        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
        </div>
    </div><!-- #sidebar-shortcuts -->
    <%--定义欢迎页面--%>
    <ul class="nav nav-list">
        <li class="active">
            <a href="welcome.jsp">
                <i class="icon-dashboard"></i>
                <span class="menu-text"> 欢迎页 </span>
            </a>
        </li>

        <li class="active">
            <a href="Request.jsp">
                <i class="icon-edit"></i>
                <span class="menu-text">用户&设计需求</span>
            </a>
        </li>

    </ul><!-- /.nav-list -->
</div>


</body>
</html>


