<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CHAPPIE</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  
<script src="/resources/plugins/chartjs/Chart.js"></script>
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

  
</head>
<body class="hold-transition skin-blue sidebar-mini" data-spy="scroll" data-target="#scrollspy" style="height: auto;">
<div class="wrapper " style="height: auto;">
  <header class="main-header">
    <!-- Logo -->
    <a href="${URIs.URI_MAIN }" class="logo treeview-menu">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b><i class="glyphicon glyphicon-home"></i></b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>CHAPPIE</b></span>
    </a>
    
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
    
		  <div class="col-md-5">
			<div class="box box-primary">
            
            <!-- /.box-header -->
      		  <div class="box-body">
				<div class="row">
				<div class="col-xs-12">
                  <p class="text-center">
                    <strong>Goal Completion</strong>
                  </p>
				  
				  <c:choose>
				  <c:when test="${empty chart}">
				  	<p class="text-center">
                    	<strong>내용이 없습니다.</strong>
                  	</p>
                  </c:when>
                  <c:otherwise>
				  	<c:forEach items="${chart }" var="chartVO">
	                  <div class="progress-group">
	                    <span class="progress-text">${chartVO.category_name }</span>
	                    <span class="progress-number"><b>${chartVO.todo_complete_cnt }</b>/<b>${chartVO.todo_cnt }(${chartVO.progress}%)</b></span>
	                    <div class="progress sm">
	                      <div class="progress-bar progress-bar-aqua" style="width: ${chartVO.progress}%"></div>
	                    </div>
	                  </div>
                  	<!-- /.progress-group -->
                  	</c:forEach>
                  	<div class="progress-group">
	                    <span class="progress-text">${allChart.category_name }</span>
	                    <span class="progress-number"><b>${allChart.todo_complete_cnt }</b>/<b>${allChart.todo_cnt }(${allChart.progress}%)</b></span>
	                    <div class="progress sm">
	                      <div class="progress-bar progress-bar-red" style="width: ${allChart.progress}%"></div>
	                    </div>
	                  </div>
                  </c:otherwise>
                  	
                  </c:choose>
                  </div>
                </div>
       		 </div>
        </div>
      </div>
      <!-- /.row -->

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
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery UI 1.11.4 -->

<!-- jQuery 2.2.3 -->
<script src="../../plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="../../plugins/morris/morris.min.js"></script>
<!-- FastClick -->
<script src="../../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
<!-- page script -->
<script>
  $(function () {
    "use strict";

    //DONUT CHART
    var donut = new Morris.Donut({
      element: 'sales-chart',
      resize: true,
      colors: ["#3c8dbc", "#f56954", "#00b656"],
      data: [
        {label: "Download Sales", value: 12},
        {label: "In-Store Sales", value: 30},
        {label: "Mail-Order Sales", value: 20}
      ],
      hideHover: 'auto'
    });
    
  });
</script>

</body>
</html>
