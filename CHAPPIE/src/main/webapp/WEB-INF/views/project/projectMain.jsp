<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CHAPPIE</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/resources/dist/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="/resources/plugins/iCheck/flat/blue.css">
  <!-- Morris chart -->
<!--   <link rel="stylesheet" href="/resources/plugins/morris/morris.css"> -->
  <!-- jvectormap -->
  <link rel="stylesheet" href="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
<!--   <link rel="stylesheet" href="/resources/plugins/datepicker/datepicker3.css"> -->
  <!-- Daterange picker -->
<!--   <link rel="stylesheet" href="/resources/plugins/daterangepicker/daterangepicker.css"> -->
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
<!-- 채피설정 -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Oswald:400,300"
	type="text/css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans"
	type="text/css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;lang=en" />
  <style>
  .timeline .comm{
  overflow: scroll;
  }
  .box-body{
  overflow: scroll;
  }
  
  </style>
</head>


<body class="hold-transition skin-blue sidebar-mini fixed"
	data-spy="scroll" data-target="#scrollspy" style="height: auto;">


	<div class="wrapper " style="height: auto;">
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
	</div>
	<!-- Content Wrapper. Contains page content -->
	<!-- Contents -->
	<div class="content-wrapper">
		<!-- Content Header (Page header) -->
		<section class="content-header">
			<h1>
				${project.project_name }
				<!--         <small>Control panel</small> -->
			</h1>

		</section>

		<!-- Main content -->
		<section class="content">
			<div class="row">
			
<section class="col-lg-8">
<div class="box box-primary" style="background-color: #D5D5D5">
<div id="myCarousel" class="carousel slide">
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>
  <!-- 회전광고판 항목 -->
  <div class="carousel-inner">
    <div class="active item"><br><br><ul class="timeline">

							<!-- timeline time label -->
							<li class="time-label"><span class="bg-red"> 2017년 2월
									20일 월요일 </span></li>
							<!-- /.timeline-label -->

							<!-- timeline item -->
							<li>
								<!-- timeline icon --> <i class="fa fa-envelope bg-blue"></i>
								<div class="timeline-item">
									<span class="time"><i class="fa fa-clock-o"></i> 12:12</span>

									<h3 class="timeline-header">
										<a href="#">SY_Team</a> #${category.category_name}게시판 공지입니다.
									</h3>

									<div class="timeline-body">
										<b>#${category.category_name}</b> 게시판 공지입니다.
									</div>

									<div class="timeline-footer">
										<a class="btn btn-primary btn-xs">Read more</a>
									</div>
								</div>
							</li>
						</ul><br><br></div>
    <div class="item"><br><br><ul class="timeline">

							<!-- timeline time label -->
							<li class="time-label"><span class="bg-red"> 2017년 2월
									20일 월요일 </span></li>
							<!-- /.timeline-label -->

							<!-- timeline item -->
							<li>
								<!-- timeline icon --> <i class="fa fa-envelope bg-blue"></i>
								<div class="timeline-item">
									<span class="time"><i class="fa fa-clock-o"></i> 12:12</span>

									<h3 class="timeline-header">
										<a href="#">SY_Team</a> #${category.category_name}게시판 공지입니다.
									</h3>

									<div class="timeline-body">
										<b>#${category.category_name}</b> 게시판 공지입니다.
									</div>

									<div class="timeline-footer">
										<a class="btn btn-primary btn-xs">Read more</a>
									</div>
								</div>
							</li>
						</ul><br><br></div>
		<div class="item"><br><br><ul class="timeline">

			<!-- timeline time label -->
			<li class="time-label"><span class="bg-red"> 2017년 2월
					20일 월요일 </span></li>
			<!-- /.timeline-label -->

			<!-- timeline item -->
			<li>
				<!-- timeline icon --> <i class="fa fa-envelope bg-blue"></i>
				<div class="timeline-item">
					<span class="time"><i class="fa fa-clock-o"></i> 12:12</span>

					<h3 class="timeline-header">
						<a href="#">SY_Team</a> #${category.category_name}게시판 공지입니다.
					</h3>

					<div class="timeline-body">
						<b>#${category.category_name}</b> 게시판 공지입니다.
					</div>

					<div class="timeline-footer">
						<a class="btn btn-primary btn-xs">Read more</a>
					</div>
				</div>
			</li>
		</ul><br><br></div>
  </div>
  <!-- 회전광고판 탐색 -->
  <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
</div>
</div>
</section>

				<section class="col-lg-8">
					<div class="box box-primary">
						<br>
						<ul class="timeline">

							<!-- timeline time label -->
							<li class="time-label"><span class="bg-red"> 2017년 2월
									20일 월요일 </span></li>
							<!-- /.timeline-label -->

							<!-- timeline item -->
							<li>
								<!-- timeline icon --> <i class="fa fa-envelope bg-blue"></i>
								<div class="timeline-item">
									<span class="time"><i class="fa fa-clock-o"></i> 12:12</span>

									<h3 class="timeline-header">
										<a href="#">SY_Team</a> #${category.category_name}게시판 공지입니다.
									</h3>

									<div class="timeline-body">
										<b>#${category.category_name}</b> 게시판 공지입니다.
									</div>

									<div class="timeline-footer">
										<a class="btn btn-primary btn-xs">Read more</a>
									</div>
								</div>
							</li>
						</ul>
					</div>
					
					<div class="box box-primary">
            <div class="box-header ui-sortable-handle" style="cursor: move;">
              <i class="ion ion-clipboard"></i>

              <h3 class="box-title">To Do List</h3>

              <div class="box-tools pull-right">
                <ul class="pagination pagination-sm inline">
                  <li><a href="#">«</a></li>
                  <li><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#">»</a></li>
                </ul>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
		        <div class="timeline-item">
		            <span class="time"><i class="fa fa-clock-o"></i> ${category_choice.board_write_date }</span>
		
		            <h3 class="timeline-header"><a href="">${category_choice.user_id }</a>	${category_choice.board_title }</h3>
		
		            <div class="timeline-body" >
		                	${category_choice.board_contents }
		            </div>
		
		            <div class="timeline-footer">
		                <a class="btn btn-primary btn-xs">Read more</a>
           			 </div>
        		</div>
            </div>
            <!-- /.box-body -->
<!--             <div class="box-footer clearfix no-border"> -->
<!--               <button type="button" class="btn btn-default pull-right"><i class="fa fa-plus"></i> Add item</button> -->
<!--             </div> -->
            </div>
            
            
            <div class="box">
            <div class="box-header">
            
            <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab_1" data-toggle="tab">Category</a></li>
              <li><a href="#tab_2" data-toggle="tab">Member</a></li>
            <!-- /.box-header -->
            </ul>
            </div>

            </div>
            <!-- /.box-header -->
            <div class="box-body">
<!--             <div class="nav-tabs-custom"> -->
<!--             <ul class="nav nav-tabs"> -->
<!--               <li class="active"><a href="#tab_1" data-toggle="tab">Category</a></li> -->
<!--               <li><a href="#tab_2" data-toggle="tab">Member</a></li> -->
<!--             /.box-header -->
<!--             </ul> -->
            <div class="tab-content">
      		  <div class="tab-pane active" id="tab_1">
				<div class="row">
				<div class="col-xs-12">
<!--                   <p class="text-center"> -->
<!--                     <strong>Category Goal Completion</strong> -->
<!--                   </p> -->
				  
				  
				  
                  
				  	
	                  <div class="progress-group">
	                    <span class="progress-text">Todo1</span>
	                    <span class="progress-number"><b>1</b>/<b>2(50.0%)</b></span>
	                    <div class="progress active">
	                      <div class="progress-bar progress-bar-aqua progress-bar-striped" style="width: 50.0%"></div>
	                    </div>
	                  </div>
	                  <div class="progress-group">
	                    <span class="progress-text">Todo2</span>
	                    <span class="progress-number"><b>1</b>/<b>2(50.0%)</b></span>
	                    <div class="progress active">
	                      <div class="progress-bar progress-bar-aqua progress-bar-striped" style="width: 50.0%"></div>
	                    </div>
	                  </div>
	                  <div class="progress-group">
	                    <span class="progress-text">Todo3</span>
	                    <span class="progress-number"><b>1</b>/<b>2(50.0%)</b></span>
	                    <div class="progress active">
	                      <div class="progress-bar progress-bar-aqua progress-bar-striped" style="width: 50.0%"></div>
	                    </div>
	                  </div>
                  	<!-- /.progress-group -->
                  	
                  	<div class="progress-group">
	                    <span class="progress-text">전체</span>
	                    <span class="progress-number"><b>3</b>/<b>6(50.0%)</b></span>
	                    <div class="progress active">
	                      <div class="progress-bar progress-bar-red progress-bar-striped" style="width: 50.0%"></div>
	                    </div>
	                  </div>
                  
                  	
                  
                  </div>
                </div>
       		 </div>
       		 
       		 
       		 <div class="tab-pane" id="tab_2">
				<div class="row">
				<div class="col-xs-12">
<!--                   <p class="text-center"> -->
<!--                     <strong>Member Goal Completion</strong> -->
<!--                   </p> -->
				  
				  
				  
                  
				  	
	                  <div class="progress-group">
	                    <span class="progress-text">1</span>
	                    <span class="progress-number"><b>0</b>/<b>1(0.0%)</b></span>
	                    <div class="progress active">
	                      <div class="progress-bar progress-bar-aqua progress-bar-striped" style="width: 0.0%"></div>
	                    </div>
	                  </div>
                  	<!-- /.progress-group -->
                  	
                  
                  	
                  
                  </div>
                </div>
       		 </div>
       		 </div>
<!--             </div> -->
            <!-- /.box-body -->
<!--             <div class="box-footer clearfix no-border"> -->
<!--               <button type="button" class="btn btn-default pull-right"><i class="fa fa-plus"></i> Add item</button> -->
<!--             </div> -->
            </div>
                        </div>
            
            
            
				</section>
				<section class="col-lg-4">
				<div class="box box-primary">
						<br>
						<ul class="timeline comm">

							<!-- timeline time label -->
							<li class="time-label"><span class="bg-red"> 2017년 2월
									20일 월요일 </span></li>
							<!-- /.timeline-label -->

							<!-- timeline item -->
							<li>
								<!-- timeline icon --> <i class="fa fa-envelope bg-blue"></i>
								<div class="timeline-item">
									<span class="time"><i class="fa fa-clock-o"></i> 12:12</span>

									<h3 class="timeline-header">
										<a href="#">SY_Team</a> #${category.category_name}게시판 공지입니다.
									</h3>

									<div class="timeline-body">
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
										<b>#${category.category_name}</b> 게시판 공지입니다.
									</div>

									<div class="timeline-footer">
										<a class="btn btn-primary btn-xs">Read more</a>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</section>
			</div>
	</section>
	</div>
	<!--  채피 아이콘 -->

<%-- 	<jsp:include page="${PAGEs.VIEW_CHAPPIE}" flush="false" /> --%>
	<jsp:include page="${PAGEs.VIEW_CHAPPIE_TEST}" flush="false" />

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


<!-- jQuery 2.2.3 -->
<script src="/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.6 -->
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script> -->
<!-- <script src="/resources/plugins/morris/morris.min.js"></script> -->
<!-- Sparkline -->
<script src="/resources/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="/resources/plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script> -->
<!-- <script src="/resources/plugins/daterangepicker/daterangepicker.js"></script> -->
<!-- datepicker -->
<!-- <script src="/resources/plugins/datepicker/bootstrap-datepicker.js"></script> -->
<!-- Bootstrap WYSIHTML5 -->
<script src="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="/resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/resources/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/resources/dist/js/app.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!-- <script src="/resources/dist/js/pages/dashboard.js"></script> -->
<!-- AdminLTE for demo purposes -->
<script src="/resources/dist/js/demo.js"></script>

	<!-- 채피 스크립트 -->
</body>
</html>
