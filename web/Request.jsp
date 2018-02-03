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
    <script src="JS/jQueryRotate.js"></script>
    <%--引入Handsontable资源--%>
    <script src="Handsontable/js/handsontable.full.js"></script>
    <link rel="stylesheet" type="text/css" href="Handsontable/css/handsontable.full.min.css">
    <script type="text/javascript" src="JS/html2canvas.js"></script>
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/jcanvas/16.7.3/jcanvas.min.js"></script>
    <script src="https://cdn.bootcss.com/html2canvas/0.5.0-beta4/html2canvas.min.js"></script>
    <script src="screenShot.js"></script>
</head>

<body>
<%--引入页眉页脚文件--%>
<jsp:include page="/decorators/banner2.jsp"></jsp:include>
<jsp:include page="/decorators/copyright.jsp"></jsp:include>

<style>
    .CflMatrix {
        position: absolute;
    }

    .ReqMatrix {
        position: absolute;
    }

    .MainMatrix {
        position: absolute;
    }

    .TagMatrix {
        position: absolute;
    }

    .WitMatrix {
        position: absolute;
    }

    .DDLMatrix {
        position: absolute;
    }

    .TimMatrix {
        position: absolute;
    }

    .AHPMatrix {
        position: absolute;
        left: 300px;
        top: 150px;
    }
</style>


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

<script>
    var w = window.screen.width - 210;
    var h = document.body.scrollHeight;
</script>

<div class="main-content">
    <div class="page-content" id="page-content">

        <input type="button" value="截图" onclick="takeScreenshot()">

        <%--定义冲突矩阵--%>
        <div id="CflMatrix" class="CflMatrix" style="width:auto">
            <script>
                //  预定义数据
                var data = [
                    [" ", " ", " ", " ", " ", " ", " ", " "],
                    [" ", " ", " ", " ", " ", " ", " ", " "],
                    [" ", " ", " ", " ", " ", " ", " ", " "],
                    [" ", " ", " ", " ", " ", " ", " ", " "],
                    [" ", " ", " ", " ", " ", " ", " ", " "],
                    [" ", " ", " ", " ", " ", " ", " ", " "],
                    [" ", " ", " ", " ", " ", " ", " ", " "],
                    [" ", " ", " ", " ", " ", " ", " ", " "]
                ];
                var container = document.getElementById('CflMatrix'),
                    hot;

                hot = new Handsontable(container, {
//            预定义数据
                    data: data,
//                                行列标题定义
                    rowHeaders: false,
                    colHeaders: false,

//            允许拖动复制
                    copyable: true,
//                                自适应行列文本宽度
                    autoColumnSize: true,
                    autoRowSize: true,
//                               定义文本元素居中
                    className: "htCenter htMiddle",


                    contextMenu: true,  //右键菜单
                    mergeCells: true,  //合并单元格
//                                定义行列大小可缩放
                    colWidths: 28.6,
                    rowHeights: 28.6,
                    manualColumnResize: true,
                    manualRowResize: true
                });
            </script>
        </div>
        <%--冲突矩阵定义完成--%>

        <%--定义设计要求矩阵--%>
        <div id="ReqMatrix" class="ReqMatrix" style="padding:auto!important;width: auto">
            <script>
                //  预定义数据
                var data = [
                    ["权重"],
                    ["增加与客户的沟通"],
                    ["减少产品履行周期时间"],
                    ["减少支持响应周期时间"],
                    ["加强售后服务"],
                    ["减少产品开发周期时间"],
                    ["缩短新产品开发周期"],
                    ["增加互联网广告"],
                    ["提高员工激励"],
//                    ["底线"]
                ];
                var container = document.getElementById('ReqMatrix'),
                    hot;
                hot = new Handsontable(container, {
//            预定义数据
                    // data: Handsontable.helper.createSpreadsheetData(10, 1),//自动填充数据
//                                行列标题定义
                    data: data,
                    rowHeaders: false,
                    colHeaders: false,
//            允许拖动复制
                    copyable: true,
//                                自适应行列文本宽度
                    //autoColumnSize: true,
                    //autoRowSize: true,
//                               定义文本元素居中
                    className: "htCenter htMiddle",
                    rowHeights: 40,
                    //colWidths:140,  //指定列宽后，如果该列文字过多会自动换行，如果不指定，则默认不换行
                    contextMenu: true,  //右键菜单
                    mergeCells: true,  //合并单元格
//                                定义行列大小可缩放
                    manualColumnResize: true,
                    manualRowResize: true

                });
            </script>
        </div>
        <%--设计要求矩阵定义完成--%>

        <%--定义底线矩阵--%>
        <div id="DDLMatrix" class="DDLMatrix" style="padding:auto!important;width: auto;"><%--定义目标矩阵--%>
            <script>
                //  预定义数据
                var data = [
                    ["底线"]
                ];
                var container = document.getElementById('DDLMatrix'),
                    hot;
                hot = new Handsontable(container, {
//            预定义数据
//                                行列标题定义
                    data: data,
                    rowHeaders: false,
                    colHeaders: false,
//            允许拖动复制
                    copyable: true,
//                                自适应行列文本宽度
                    //autoColumnSize: true,
                    autoRowSize: true,
//                               定义文本元素居中
                    className: "htCenter htMiddle",

                    colWidths: 140,
                    rowHeights: 90,


                    contextMenu: true,  //右键菜单
                    mergeCells: true,  //合并单元格
//                                定义行列大小可缩放
                    manualColumnResize: true,
                    manualRowResize: true

                });
            </script>
        </div>
        <%--底线矩阵定义完成--%>

        <%--绘制主体矩阵--%>
        <div id="MainMatrix" class="MainMatrix" style="padding:auto!important;">
            <script>
                //  预定义数据

                var data = [
                    ["减少需求分析周期时间", " 1", " ", " ", " ", " ", " ", " ", " ", " "],
                    ["增加设计投资", " 3", " ", " ", " ", " ", " ", " ", " ", " "],
                    ["减少产品开发周期时间", "4 ", " ", " ", " ", " ", " ", " ", " ", " "],
                    ["减少履行周期时间", " 3", " ", " ", " ", " ", " ", " ", " ", " "],
                    ["提高客户满意度", "5 ", " ", " ", " ", " ", " ", " ", " ", " "],
                    ["提高客户忠诚度", " 4", " ", " ", " ", " ", " ", " ", " ", " "],
                    ["降低退款率", " 2", " ", " ", " ", " ", " ", " ", " ", " "],
                    ["增加市场份额", "4 ", " ", " ", " ", " ", " ", " ", " ", " "],
                    ["增加利润", "5 ", " ", " ", " ", " ", " ", " ", " ", " "],
                    ["提高员工满意度", "3 ", " ", " ", " ", " ", " ", " ", " ", " "]
                ];

                var container = document.getElementById('MainMatrix'),
                    hot;

                hot = new Handsontable(container, {
//            预定义数据
                    data: data,
//            data: Handsontable.helper.createSpreadsheetData(13, 11),
//                                行列标题定义
                    rowHeaders: false,
                    colHeaders: false,

//            允许拖动复制
                    copyable: true,
//                                自适应行列文本宽度
                    autoColumnSize: true,
                    autoRowSize: true,
//                               定义文本元素居中
                    className: "htCenter htMiddle",
                    contextMenu: true,  //右键菜单
                    mergeCells: true,  //合并单元格
//                                定义行列大小可缩放
                    colWidths: [140, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40],
                    rowHeights: 40,
                    persistentState: true,
                    manualColumnResize: true,

                    manualRowResize: true


                    // colWidths: 70

                });
            </script>
        </div>
        <%--主体矩阵定义完成--%>

        <%--绘制时间矩阵--%>
        <div id="TimMatrix" class="TimMatrix" style="padding:auto!important;">
            <script>
                //  预定义数据
                var data = [
                    ["3 days"],
                    ["5 days"],
                    ["15 days"],
                    ["5 days"],
                    [">95%"],
                    [">50% "],
                    ["<5%"],
                    [">15%"],
                    ["20 million"],
                    [">80%"]
                ];
                var container = document.getElementById('TimMatrix'),
                    hot;

                hot = new Handsontable(container, {
//            预定义数据
                    data: data,
//                                行列标题定义
                    rowHeaders: false,
                    colHeaders: false,

//            允许拖动复制
                    copyable: true,
//                                自适应行列文本宽度
                    autoColumnSize: true,
                    autoRowSize: true,
//                               定义文本元素居中
                    className: "htCenter htMiddle",


                    contextMenu: true,  //右键菜单
                    mergeCells: true,  //合并单元格
//                                定义行列大小可缩放
                    // rowHeight:30,
                    colWidths: 90,
                    //colWidths:30,
                    rowHeights: 40,

                    manualColumnResize: true,
                    manualRowResize: true
                });
            </script>
        </div>
        <%--时间矩阵定义完成--%>


        <%--定义要求矩阵--%>
        <div id="TagMatrix" class="TagMatrix" style="width:auto">
            <script>
                //  预定义数据
                var data = [
                    [" "],
                    ["daily meeting"],
                    ["5 days"],
                    ["in 24 hours"],
                    ["tel support"],
                    ["15 days"],
                    ["25 days"],
                    ["3 min"],
                    ["increase 25%"]
                ];
                var container = document.getElementById('TagMatrix'),
                    hot;
                hot = new Handsontable(container, {
//            预定义数据
                    data: data,
                    rowHeaders: false,
                    colHeaders: false,
//            允许拖动复制
                    copyable: true,
//                                自适应行列文本宽度
                    //autoColumnSize: true,
                    //autoRowSize: true,
//                               定义文本元素居中
                    className: "htCenter htMiddle",
                    rowHeights: 40,
                    contextMenu: true,  //右键菜单
                    mergeCells: true,  //合并单元格
//                                定义行列大小可缩放
                    manualColumnResize: true,
                    manualRowResize: true

                });
            </script>
        </div>
        <%--设计要求矩阵定义完成--%>

        <%--权重矩阵--%>
        <div id="WitMatrix" class="WitMatrix" style="width:auto">
            <script>
                //  预定义数据
                var data = [
                    ["权重", " ", "9 ", "8 ", "6 ", " 5", " 4", "8 ", " 10", "4 "],
                    ["相对权重", " ", " ", " ", " ", " ", " ", " ", " ", " "]
                ];
                var container = document.getElementById('WitMatrix'),
                    hot;
                hot = new Handsontable(container, {
//            预定义数据
                    data: data,
                    rowHeaders: false,
                    colHeaders: false,
//            允许拖动复制
                    copyable: true,
//                                自适应行列文本宽度
                    //autoColumnSize: true,
                    //autoRowSize: true,
//                               定义文本元素居中
                    className: "htCenter htMiddle",
                    colWidths: [140, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40],
                    rowHeights: 40,
                    contextMenu: true,  //右键菜单
                    mergeCells: true,  //合并单元格
//                                定义行列大小可缩放
                    manualColumnResize: true,
                    manualRowResize: true

                });
            </script>
        </div>
        <%--权重矩阵定义完成--%>

        <%--定义目标矩阵--%>
        <div id="GoalMatrix" class="GoalMatrix" style="padding:auto!important;width: auto;"><%--定义目标矩阵--%>
            <script>
                //  预定义数据
                var data = [
                    ["目标"]
                ];
                var container = document.getElementById('GoalMatrix'),
                    hot;
                hot = new Handsontable(container, {
//            预定义数据
//                                行列标题定义
                    data: data,
                    rowHeaders: false,
                    colHeaders: false,
//            允许拖动复制
                    copyable: true,
//                                自适应行列文本宽度
                    //autoColumnSize: true,
                    autoRowSize: true,
//                               定义文本元素居中
                    className: "htCenter htMiddle",

                    colWidths: 140,
                    rowHeights: 95,


                    contextMenu: true,  //右键菜单
                    mergeCells: true,  //合并单元格
//                                定义行列大小可缩放
                    manualColumnResize: true,
                    manualRowResize: true

                });
            </script>
        </div>
        <%--目标矩阵定义完成--%>

        <%--定义AHP矩阵--%>
        <div id="AHPMatrix" class="AHPMatrix" style="padding:auto!important;width: auto;"><%--定义目标矩阵--%>
            <script>
                //  预定义数据
                var data = [
                    ["符号", "程度", "数值"],
                    ["Θ", "强相关", "9"],
                    ["O", "中等相关", "3"],
                    ["▲", "弱相关", "1"],
                    ["++", "强正相关"],
                    ["▼", "强负相关"],
                    ["+", "正相关"],
                    ["-", "负相关"],
                    ["★", "中等相关"]

                ];
                var container = document.getElementById('AHPMatrix'),
                    hot;
                hot = new Handsontable(container, {
//            预定义数据
//                                行列标题定义
                    data: data,
                    rowHeaders: false,
                    colHeaders: false,
//            允许拖动复制
                    copyable: true,
//                                自适应行列文本宽度
                    //autoColumnSize: true,
                    autoRowSize: true,
//                               定义文本元素居中
                    className: "htCenter htMiddle",

                    colWidths: [45, 100, 35],
                    rowHeights: 25,
                    contextMenu: true,  //右键菜单
                    mergeCells: true,  //合并单元格
//                                定义行列大小可缩放
                    manualColumnResize: true,
                    manualRowResize: true

                });
            </script>
        </div>
        <%--AHP矩阵定义完成--%>
        <%--定义占位矩阵--%>
        <div class="Take" id="Take" style="width: 100px;height: 100px;background-color:white"></div>
        <%--引入旋转、自适应函数--%>

        <script src="JS/DivRotate.js"></script>

        <%--设置目标、要求矩阵div图层属性--%>
        <script>
            $(function () {
                    $(".page-content").click(function () {
                        var left = 190 + ($(window).width() - 210) / 2;
//                        以冲突矩阵为定位点，上侧150px，中间在page-content居中

                        $('.ReqMatrix').css({
                            position: 'absolute',
                            left: left - $('.ReqMatrix').outerWidth() / 2,
                            top: 150
                        });
                        $('.DDLMatrix').css({
                            position: 'absolute',
                            left: left + $('.ReqMatrix').outerHeight() / 2 - 25,
                            top: 150 + ($('.ReqMatrix').outerHeight() - $('.ReqMatrix').outerWidth()) / 2 + $('.ReqMatrix').outerWidth() / 2 - 46
                        });

                        $('.CflMatrix').css({
                            position: 'absolute',
                            left: left - $('.CflMatrix').outerWidth() / 2 + 22,
                            top: 150 + ($('.ReqMatrix').outerHeight() - $('.ReqMatrix').outerWidth()) / 2 - $('.CflMatrix').outerHeight() / 2
                        });

                        $('.MainMatrix').css({
                            position: 'absolute',
                            left: left - ($('.MainMatrix').outerWidth()) / 2 - 70,
                            top: 150 + $('.ReqMatrix').outerHeight() / 2 + $('.ReqMatrix').outerWidth() / 2
                        });

                        $('.TimMatrix').css({
                            position: 'absolute',
                            left: left - ($('.MainMatrix').outerWidth()) / 2 - 70 + $('.MainMatrix').outerWidth(),
                            top: 150 + $('.ReqMatrix').outerHeight() / 2 + $('.ReqMatrix').outerWidth() / 2
                        });

                        $('.TagMatrix').css({
                            position: 'absolute',
                            left: left - $('.TagMatrix').outerWidth() / 2,
                            top: 150 + $('.ReqMatrix').outerHeight() / 2 + $('.ReqMatrix').outerWidth() / 2 + $('.MainMatrix').outerHeight() - $('.TagMatrix').outerHeight() / 2 + $('.TagMatrix').outerWidth() / 2
                        });
                        $('.WitMatrix').css({
                            position: 'absolute',
                            left: left - ($('.WitMatrix').outerWidth()) / 2 - 70,
                            top: 150 + $('.ReqMatrix').outerHeight() / 2 + $('.ReqMatrix').outerWidth() / 2 + $('.MainMatrix').outerHeight() + $('.TagMatrix').outerWidth()
                        });
                        $('.GoalMatrix').css({
                            position: 'absolute',
                            left: left - ($('.MainMatrix').outerWidth()) / 2 - 70,
                            top: 150 + $('.ReqMatrix').outerHeight() / 2 + $('.ReqMatrix').outerWidth() / 2 + $('.MainMatrix').outerHeight()
                        });
                        $('.Take').css({
                            position: 'absolute',
                            left: left - ($('.MainMatrix').outerWidth()) / 2 - 70,
                            top: 150 + $('.ReqMatrix').outerHeight() / 2 + $('.ReqMatrix').outerWidth() / 2 + $('.MainMatrix').outerHeight() + $('.WitMatrix').outerHeight() + 95
                        });
                        $('.page-content').css({
                            width: window.screen.width - 210,
                            height: 1000//document.body.scrollHeight
                        })
                    })
                }
            );
        </script>

    </div>
    <%--page-content定义完成--%>
</div>
<%--main-content定义完成--%>


<script type="text/javascript">
    screenShot([16, 65], 27); // 开始快捷键设置为shift+a；退出键为ESC
</script>

<%--检测页面是否刷新，添加提示--%>
<script>
    window.onbeforeunload = function () {
        return "casual";//必须有return ，不然只有ie有效，chrome无效
    }
</script>

</body>
</html>




