<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
  <link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css">
  
<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/resources/dist/css/skins/_all-skins.min.css">
  
    <!-- iCheck -->
  <link rel="stylesheet" href="/resources/plugins/iCheck/flat/blue.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="/resources/plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="/resources/plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  
  
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="/resources/css/stylish-portfolio.css">

<!-- Custom Fonts -->
<link rel="stylesheet" href="/font-awesome/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" type="text/css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- 채피설정 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:400,300" type="text/css"> 
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans" type="text/css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;lang=en" />

</head>


<body class="hold-transition skin-blue sidebar-mini fixed" data-spy="scroll" data-target="#scrollspy" style="height: auto;">


<div class="wrapper " style="height: auto;">
  <header class="main-header">
    <!-- Logo -->
    <a href="${URIs.URI_MAIN }" class="logo treeview-menu">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b><i class="glyphicon glyphicon-home"></i></b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>CHAPPIE</b></span>
    </a>
    
    <!-- Header Navbar: style can be found in header.less -->
    
	<nav class="navbar navbar-static-top">
    <jsp:include page ="${PAGEs.VIEW_NAV_PROJECT}" flush="false" />
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <jsp:include page ="${PAGEs.VIEW_ASIDE_LEFT}" flush="false" />
    <!-- /.sidebar -->
  </aside>
</div>
  <!-- Content Wrapper. Contains page content -->
  <!-- Contents -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> ${project.project_name }
<!--         <small>Control panel</small> -->
      </h1>

    </section>

    <!-- Main content -->
    <section class="content" >
    
    <div class="row">
        <div class="col-md-6">
          <!-- AREA CHART -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">공지사항</h3>
            </div>
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
          </div>
          <!-- /.box -->
		</div>
	</div>
  
    </section>
  </div>
  <!--  채피 아이콘 -->

	<jsp:include page ="${PAGEs.VIEW_CHAPPIE}" flush="false" />
	
  <footer class="main-footer">
   	 <jsp:include page ="${PAGEs.VIEW_FOOTER_PROJECT}" flush="false" />
    
  </footer>

  <!-- Control Sidebar -->
  
	<aside class="control-sidebar control-sidebar-dark">
		
   	 <jsp:include page ="${PAGEs.VIEW_ASIDE_RIGHT}" flush="false" />
	
 	</aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
  
<!-- ./wrapper -->
 <!-- jQuery 2.2.3 -->
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<!-- Bootstrap 3.3.6 -->
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- Sparkline -->
<script src="/resources/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="/resources/plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="/resources/plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="/resources/plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
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
   
    <script src="/resources/documentation/docs.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.js"></script>
	
    
 <!-- 채피 스크립트 -->
</body>
</html>
