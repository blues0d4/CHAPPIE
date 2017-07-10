<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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
  <link rel="stylesheet" href="/resources/plugins/morris/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="/resources/plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="/resources/plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini" data-spy="scroll" data-target="#scrollspy" style="height: auto;">
<div class="wrapper " style="height: auto;">
  <header class="main-header">
    <!-- Logo -->
    <a href="${URIs.URI_MAIN }" class="logo treeview-menu">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b></b></span>
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

  <!-- Content Wrapper. Contains page content -->
  <!-- Contents -->
  <div class="content-wrapper">

    <!-- Main content -->
    <section class="content" >
    	<div class="col-md-6">
    	<div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Todo</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            
            <c:set var="todoVO" value="${todoView }" />
            <form class="form-horizontal" action="/todo/todoModify?todo_no=${todoVO.todo_no }" method="post">
              <div class="box-body">
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-2 control-label">할 일</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="todo_list" name="todo_list" value="${todoVO.todo_list }">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">시작 일자</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="todo_start_date" name="todo_start_date"value="${todoVO.todo_start_date }">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">종료 일자</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="todo_end_date" name="todo_end_date" value="${todoVO.todo_end_date }">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">중요도</label>
                  <div class="col-sm-10">
                    <select class="form-control" id="todo_priority" name="todo_priority">
                    <option>상</option>
                    <option>중</option>
                    <option>하</option>
                  </select>
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-2 control-label">비고</label>
                  <div class="col-sm-10">
                    <textarea class="form-control" rows="5" id="todo_note" name="todo_note">${todoVO.todo_note }</textarea>
                  </div>
                </div>                
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
              	<a href="/todo/todoList" class="btn btn-default">Cancel</a>
                <button type="submit" class="btn btn-info pull-right">Modify</button>
              </div>
              <!-- /.box-footer -->
            </form>
          </div>
         </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
   	 <jsp:include page ="${PAGEs.VIEW_FOOTER_PROJECT}" flush="false" />    
  </footer>

  <!-- Control Sidebar -->
  
	<aside class="control-sidebar control-sidebar-dark">
		
   	 <jsp:include page ="${PAGEs.VIEW_ASIDE_RIGHT}" flush="false" />
	
 	</aside>
  <!-- /.control-sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

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
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="/resources/plugins/morris/morris.min.js"></script>
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
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="/resources/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/dist/js/demo.js"></script>
<!-- SlimScroll 1.3.0 -->
    <script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js"></script>
    <script src="/resources/documentation/docs.js"></script>
</body>
</html>