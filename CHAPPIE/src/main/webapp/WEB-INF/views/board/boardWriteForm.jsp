<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<head>
<title>CHAPPIE</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css">

<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="/resources/dist/css/skins/_all-skins.min.css">

<!-- iCheck -->
<link rel="stylesheet" href="/resources/plugins/iCheck/flat/blue.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<!-- Date Picker -->
<link rel="stylesheet"
	href="/resources/plugins/datepicker/datepicker3.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="/resources/plugins/daterangepicker/daterangepicker.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">


<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="/resources/css/stylish-portfolio.css">

<!-- Custom Fonts -->
<link rel="stylesheet" href="/font-awesome/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	type="text/css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- 채피설정 -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Oswald:400,300"
	type="text/css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans"
	type="text/css">
<link rel="stylesheet"
	href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;lang=en" />



<!-- 글씨체 변경 -->
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">


<!-- <script type="text/javascript"> -->

<!-- // function boardWriteCheck() { -->
<!-- //     var form = document.boardWriteForm; -->
<!-- //     // 제목이 입력이 안되어 있다면 -->
<!-- //     if (form.board_title.value == '') { -->
<!-- //         alert('제목을 입력하세요.'); -->
<!-- //         // 제목 INPUT BOX 커서가 이동 -->
<!-- //         form.board_title.focus(); -->
<!-- //         return false; -->
<!-- //     } -->
<!-- //     if (form.board_contents.value == '') { -->
<!-- //         alert('내용을 입력하세요'); -->
<!-- //         form.board_contents.focus(); -->
<!-- //         return false; -->
<!-- //     } -->
<!-- //     return true; -->
<!-- // } -->



<!-- </script> -->

</head>
<body class="hold-transition skin-blue sidebar-mini fixed"
	data-spy="scroll" data-target="#scrollspy" style="height: auto;">

	<div class="wrapper" style="height: auto;">

		<header class="main-header">
			<!-- Logo -->
			<a href="${URIs.URI_MAIN }" class="logo treeview-menu"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b><i
						class="glyphicon glyphicon-home"></i></b></span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>CHAPPIE</b></span>
			</a>

			<!-- Header Navbar: style can be found in header.less -->

			<nav class="navbar navbar-static-top">
				<jsp:include page="${PAGEs.VIEW_NAV_PROJECT}" flush="false" />
			</nav>
		</header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar">
			<!-- sidebar: style can be found in sidebar.less -->
			<jsp:include page="${PAGEs.VIEW_ASIDE_LEFT}" flush="false" />
			<!-- /.sidebar -->
		</aside>


		<div class="content-wrapper">


			<section class="content-header">
				<h1>
					<b># ${category.category_name }</b>
					<!--         <small>Control panel</small> -->
				</h1>
			</section>




			<section class="container">
				<form
					action="${URIs.PROJECT_DEFAULT }/${project.project_id }${URIs.BOARD_DEFAULT }/${category.category_id}${URIs.URI_BOARD_WRITE_DEFAULT}"
					method="post"
					name = "boardWriteForm"
>
					<table class="table">
						<thead>
							<h3>글 작성</h3>
						</thead>
						<tbody>
							<tr>
								<th>종류 : </th>
								<td>
									<select name="board_notice">
										<option value="y">공지</option>
										<option value="n" selected="selected">일반</option>
									</select> 
								</td>
							</tr>
							<tr>
								<th>제목:</th>
								<td><input type="text" placeholder="제목을 입력하세요. "
									name="board_title" class="form-control" /></td>
							</tr>
							<tr>
								<th>내용:</th>
								<td>
									<textarea id="summernote" cols="100" placeholder="내용을 입력하세요."
										name="board_contents" class="form-control"
										style="width: 1070; word-break: normal;">
									</textarea>
								</td>
							</tr>
							
							<tr> 
									<td colspan="2"><input type="submit" value="Write"
										onclick= "boardWriteCheck();" class="btn btn-default" style="float: left" name="board_write_button"> 
										<a href="${URIs.PROJECT_DEFAULT }/${project.project_id}${URIs.BOARD_DEFAULT }/${category.category_id}"
										class="btn btn-default" style="float: right">글 목록으로 가기</a></td>
							</tr>
						</tbody>
					</table>
					<input type="hidden" value=${category.category_id }
									name="category_id">
					<input type="hidden" value=${login.user_id } name="user_id">
				</form>
			</section>
		</div>
		
		<!-- 채피 인크루드 -->
<jsp:include page ="${PAGEs.VIEW_CHAPPIE}" flush="false" />

		<footer class="main-footer">
			<jsp:include page="${PAGEs.VIEW_FOOTER_PROJECT}" flush="false" />

		</footer>

		<!-- Control Sidebar -->

		<aside class="control-sidebar control-sidebar-dark">

			<jsp:include page="${PAGEs.VIEW_ASIDE_RIGHT}" flush="false" />

		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>

	</div>
	<!-- ./wrapper -->
	<!-- jQuery 2.2.3 -->
	
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
	<script>
		$.widget.bridge('uibutton', $.ui.button);
	</script>
	<!-- Bootstrap 3.3.6 -->
	<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
	<!-- Sparkline -->
	<script src="/resources/plugins/sparkline/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script
		src="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script
		src="/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
	<!-- jQuery Knob Chart -->
	<script src="/resources/plugins/knob/jquery.knob.js"></script>
	<!-- daterangepicker -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
	<script src="/resources/plugins/daterangepicker/daterangepicker.js"></script>
	<!-- datepicker -->
	<script src="/resources/plugins/datepicker/bootstrap-datepicker.js"></script>
	<!-- Bootstrap WYSIHTML5 -->
	<script
		src="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
	<!-- Slimscroll -->
	<script src="/resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="/resources/plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="/resources/dist/js/app.min.js"></script>
	<!-- <script src="/resources/dist/js/app.js"></script> -->
	<!-- AdminLTE for demo purposes -->
	<script src="/resources/dist/js/demo.js"></script>
	<!-- SlimScroll 1.3.0 -->
<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.js"></script>
	<script src="/resources/documentation/docs.js"></script>


	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>

	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.6/summernote.js"></script>
	<link
		href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.6/summernote.css"
		rel="stylesheet">

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

	<!-- Custom Theme JavaScript -->
	<script>
		// Closes the sidebar menu
		$("#menu-close").click(function(e) {
			e.preventDefault();
			$("#sidebar-wrapper").toggleClass("active");
		});
		// Opens the sidebar menu
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#sidebar-wrapper").toggleClass("active");
		});
		// Scrolls to the selected menu item on the page
		$(function() {
			$(
					'a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])')
					.click(
							function() {
								if (location.pathname.replace(/^\//, '') == this.pathname
										.replace(/^\//, '')
										|| location.hostname == this.hostname) {
									var target = $(this.hash);
									target = target.length ? target
											: $('[name=' + this.hash.slice(1)
													+ ']');
									if (target.length) {
										$('html,body').animate({
											scrollTop : target.offset().top
										}, 1000);
										return false;
									}
								}
							});
		});
		//#to-top button appears after scrolling
		var fixed = false;
		$(document).scroll(function() {
			if ($(this).scrollTop() > 250) {
				if (!fixed) {
					fixed = true;
					// $('#to-top').css({position:'fixed', display:'block'});
					$('#to-top').show("slow", function() {
						$('#to-top').css({
							position : 'fixed',
							display : 'block'
						});
					});
				}
			} else {
				if (fixed) {
					fixed = false;
					$('#to-top').hide("slow", function() {
						$('#to-top').css({
							display : 'none'
						});
					});
				}
			}
		});
		// Disable Google Maps scrolling
		// See http://stackoverflow.com/a/25904582/1607849
		// Disable scroll zooming and bind back the click event
		var onMapMouseleaveHandler = function(event) {
			var that = $(this);
			that.on('click', onMapClickHandler);
			that.off('mouseleave', onMapMouseleaveHandler);
			that.find('iframe').css("pointer-events", "none");
		}
		var onMapClickHandler = function(event) {
			var that = $(this);
			// Disable the click handler until the user leaves the map area
			that.off('click', onMapClickHandler);
			// Enable scrolling zoom
			that.find('iframe').css("pointer-events", "auto");
			// Handle the mouse leave event
			that.on('mouseleave', onMapMouseleaveHandler);
		}
		// Enable map zooming with mouse scroll when the user clicks the map
		$('.map').on('click', onMapClickHandler);
	</script>



	
	<script>
		var j = $.noConflict(true);
		j ('#summernote').summernote({
			height : 600, // set editor height
			width : 1070,
			minHeight : null, // set minimum height of editor
			maxHeight : null, // set maximum height of editor
			focus : true
		// set focus to editable area after initializing 
		});
	</script>

</body>

</html>