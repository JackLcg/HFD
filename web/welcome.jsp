<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>欢迎页</title>
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
<jsp:include page="decorators/banner2.jsp"></jsp:include>
<jsp:include page="decorators/copyright.jsp"></jsp:include>
<div class="main-container" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.check('main-container', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="main-container-inner">
        <a class="menu-toggler" id="menu-toggler" href="#">
            <span class="menu-text"></span>
        </a>

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

            <ul class="nav nav-list">
                <li class="active">
                    <a href="welcome.jsp">
                        <i class="icon-dashboard"></i>
                        <span class="menu-text">欢迎页 </span>
                    </a>
                </li>
                <li class="active">
                    <a href="Request.jsp">
                        <i class="icon-edit"></i>
                        <span class="menu-text">用户&设计需求</span>
                    </a>
                </li>
            </ul><!-- /.nav-list -->

            <div class="sidebar-collapse" id="sidebar-collapse">
                <i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
                   data-icon2="icon-double-angle-right"></i>
            </div>
            <script type="text/javascript">
                try {
                    ace.settings.check('sidebar', 'collapsed')
                } catch (e) {
                }
            </script>
        </div>


        <%--定义欢迎页面显示主要内容--%>
        <div class="main-content">
            <div class="breadcrumbs" id="breadcrumbs">
                <script type="text/javascript">
                    try {
                        ace.settings.check('breadcrumbs', 'fixed')
                    } catch (e) {
                    }
                </script>

                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home home-icon"></i>
                        <a href="#">首页</a>
                    </li>
                    <li class="active">控制台</li>
                </ul><!-- .breadcrumb -->
            </div>
            <%--定义欢迎页面显示主要内容--%>
            <div class="page-content">
                <p style="text-indent: 2em;font-size:16px">
                    质量屋是由美国学者J．R．Hauser与D．C1ausing于1988年提出。“质量屋”是质量功能配置（QFD）的核心。质量屋是一种确定顾客需求和相应产品或服务性能之间联系的图示方法。
                    质量屋（the House of Quality）一直是产品开发中连接用户需求与产品属性的经典工具。例如在一个相机产品开中，
                    市场研究得到了用户对产品的若干需求，如，质量轻、使用方便、可靠、容易拿稳等等。通过市场人员与设计人员共同工作，
                    确定实现不同需求可行的方式。这个过程同时排除掉了一些目前技术无法实现的需求，就像选择家具。一个完整的质量屋，
                    还包括竞争对手表现、技术指标之间的关系、技术指标重要性得分等信息。
                </p>

            </div><!-- /.page-content -->
            <div class="page-content" style="text-align: center">
                <img src="Pic/QFD_House_of_Quality_Example..PNG" >
            </div>


        </div><!-- /.main-content -->
    </div><!-- /.main-container-inner -->
</div><!-- /.main-container -->


</body>
</html>




