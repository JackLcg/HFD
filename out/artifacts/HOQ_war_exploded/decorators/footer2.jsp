<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 引用绝对路径 -->

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta charset="UTF-8" />
	<head>
		<base href="http://115.154.191.2:80/KBEProject/"/><!-- 绝对路径 -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		
		<!-- 引入css -->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
		<link href="assets/css/bootstrap-responsive.min.css" rel="stylesheet" />
		<link href="css/phoneresponsable.css" rel="stylesheet" media="screen and (max-width: 480px)" />
		
		<!-- 引入js -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.dataTables.min.js"></script>
		
		<title>
			欢迎登录</title><!-- 用户界面标题 -->
		
		<meta name="description" content="" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="assets/css/ace-fonts.css" />
		<link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="assets/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- <script src="js/common/welcome.js"></script> --></head>

	<body class="no-skin">
		
		

		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>

			<!-- #section:basics/sidebar -->
			

			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<!-- #section:basics/content.breadcrumbs -->
				
				
				

				<!-- /section:basics/content.breadcrumbs -->
				
			</div><!-- /.main-content -->

			<div class="footer">
				<div class="footer-inner">
					<!-- #section:basics/footer -->
					<div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">西安交通大学CAD/CAM研究室</span>
							 Copyright&copy; 2017
						</span>
						&nbsp; &nbsp;
					</div>

					<!-- /section:basics/footer -->
				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery.min.js'>"+"<"+"/script>");
		</script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->

		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->

		<!-- the following scripts are used in demo only for onpage help and you don't need them -->
		<link rel="stylesheet" href="assets/css/ace.onpage-help.css" />
		<link rel="stylesheet" href="assets/js/themes/sunburst.css" />

		<script src="assets/js/ace/elements.onpage-help.js"></script>
		<script src="assets/js/ace/ace.onpage-help.js"></script>
		<script src="assets/js/rainbow.js"></script>
		<script src="assets/js/language/generic.js"></script>
		<script src="assets/js/language/html.js"></script>
		<script src="assets/js/language/css.js"></script>
		<script src="assets/js/language/javascript.js"></script>
		
		<script>
			/** 高亮  **/
			(function(){
				
				var app_path = window.location.pathname;
				var begin = 0, sz = app_path.length;
				
				// 获取开始的下标
				for(var cnt = 0; cnt < 2 && begin < sz; ++begin) {
					if(cnt == 2) break;
					if(app_path[begin] == '/') ++cnt;
				}
				
				// 高亮匹配度最大的
				var mx_idx = 0, mx_val = -1;
				// 获取所有li
				var lis = $('#ul-nav li');
				for(var i = 0; i < lis.length; ++i) {
					var path = $(lis[i]).attr('data-url');
					var idx1 = begin, idx2 = 0;
					for(; idx1 < sz && idx2 < path.length; ++idx1, ++idx2)
						if(path[idx2] != app_path[idx1]) break;
					if(mx_val < idx2) {
						mx_val = idx2;
						mx_idx = i;
					}
				}
				// console.log(mx_idx);
				$(lis[mx_idx]).addClass('active');
			}
			)();
		</script>
	</body>
</html>
