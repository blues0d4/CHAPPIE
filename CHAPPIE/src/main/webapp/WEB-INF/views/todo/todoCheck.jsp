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
  
  <script src="/resources/dist/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/dist/sweetalert.css">
	
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
    	<div class="col-md-8">
    	<div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Todo</h3>

            </div>
            <!-- /.box-header -->
            <!-- form start -->
            
            <c:set var="todoVO" value="${todoView }" />
            <form class="form-horizontal" action="/project/${project.project_id }/todo/${category.category_id }/todoModify?todo_no=${todoVO.todo_no }" method="post">
              <div class="box-body">
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">할 일</label>
                  <div class="col-sm-9">
                    <input type="text" class="form-control" id="todo_list" name="todo_list" value="${todoVO.todo_list }">
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-3 control-label">시작 일자 <i class="fa fa-calendar"></i></label>
                  <div class="col-sm-9">
                <div class="input-group date">
                    <input type="text" class="form-control pull-right" id="datepicker" name="todo_start_date" value="${todoVO.todo_start_date }">
                  </div>
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-3 control-label">종료 일자 <i class="fa fa-calendar"></i></label>
                  <div class="col-sm-9">
                    <div class="input-group date">
                    <input type="text" class="form-control pull-right" id="datepicker2" name="todo_end_date" value="${todoVO.todo_end_date }">
                  </div>
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputEmail3" class="col-sm-3 control-label">담당자</label>
                  <div class="col-sm-9">
                    <div class="checkbox">
                   	    <c:forEach var="todoMember" items="${tmList }">
			                      <label>
			                      <input type="checkbox" name="member_nickname" value="${todoMember }" checked>
			                      	${todoMember }
			                      </label>
		                </c:forEach>
	                  <c:forEach var="categoryMember" items="${cmList }">
               		             <label>
			                      <input type="checkbox" name="member_nickname" value="${categoryMember }">
			                      	${categoryMember }
			                      </label>   
		              </c:forEach>      
	                 </div>
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-3 control-label">중요도</label>
                  <div class="col-sm-9">
                    <select class="form-control" id="todo_priority" name="todo_priority">
                    	<c:choose>
                    		<c:when test="${todoVO.todo_priority == '상' }">
			                   	<option selected>상</option>
			                    <option>중</option>
			                    <option>하</option>
			                </c:when>
			                <c:when test="${todoVO.todo_priority == '중' }">
			                   	<option>상</option>
			                    <option selected>중</option>
			                    <option>하</option>
			                </c:when>
			                <c:otherwise>
			                	<option>상</option>
			                    <option>중</option>
			                    <option selected>하</option>
			                </c:otherwise>
	                    </c:choose>
                  </select>
                  </div>
                </div>
                <div class="form-group">
                  <label for="inputPassword3" class="col-sm-3 control-label">비고</label>
                  <div class="col-sm-9">
                    <textarea class="form-control" rows="5" id="todo_note" name="todo_note">${todoVO.todo_note }</textarea>
                  </div>
                </div>                
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
              	<a href="/project/${project.project_id }/todo/${category.category_id }" class="btn btn-default">Cancel</a>
              	<button type="submit" class="btn btn-info pull-right">Modify</button>
              	
<%--               	<a href="/project/${project.project_id }/todo/${category.category_id }/todoDelete?todo_no=${todoVO.todo_no }"  --%>
<!--               	class="btn btn-danger pull-right" style="margin-right:10px" id="delete">Delete</a> -->
                
           		 <button type = "button" class="btn btn-danger pull-right" style="margin-right:10px" id="delete">Delete</button>
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
<!-- Bootstrap 3.3.6 -->
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- Select2 -->
<script src="/resources/plugins/select2/select2.full.min.js"></script>
<!-- InputMask -->
<script src="/resources/plugins/input-mask/jquery.inputmask.js"></script>
<script src="/resources/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="/resources/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<!-- date-range-picker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="/resources/plugins/daterangepicker/daterangepicker.js"></script>
<!-- bootstrap datepicker -->
<script src="/resources/plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- bootstrap color picker -->
<script src="/resources/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<!-- bootstrap time picker -->
<script src="/resources/plugins/timepicker/bootstrap-timepicker.min.js"></script>
<!-- SlimScroll 1.3.0 -->
<script src="/resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- iCheck 1.0.1 -->
<script src="/resources/plugins/iCheck/icheck.min.js"></script>
<!-- FastClick -->
<script src="/resources/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/resources/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/dist/js/demo.js"></script>
<!-- Page script -->
<script>
  $(function () {
    //Initialize Select2 Elements
    $(".select2").select2();

    //Datemask dd/mm/yyyy
    $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
    //Datemask2 mm/dd/yyyy
    $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
    //Money Euro
    $("[data-mask]").inputmask();

    //Date range picker
    $('#reservation').daterangepicker();
    //Date range picker with time picker
    $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
    //Date range as a button
    $('#daterange-btn').daterangepicker(
        {
          ranges: {
            'Today': [moment(), moment()],
            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'This Month': [moment().startOf('month'), moment().endOf('month')],
            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
          },
          startDate: moment().subtract(29, 'days'),
          endDate: moment()
        },
        function (start, end) {
          $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        }
    );

    //Date picker
    $('#datepicker').datepicker({
      autoclose: true
    });
    $('#datepicker2').datepicker({
        autoclose: true
      });
    
    //iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass: 'iradio_minimal-blue'
    });
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass: 'iradio_minimal-red'
    });
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass: 'iradio_flat-green'
    });

    //Colorpicker
    $(".my-colorpicker1").colorpicker();
    //color picker with addon
    $(".my-colorpicker2").colorpicker();

    //Timepicker
    $(".timepicker").timepicker({
      showInputs: false
    });
  });
  
  // 삭제유무
  
  $(document).ready(function(){
	  $("#delete").click(function(){
// 		  alert("/project/${project.project_id }/todo/${category.category_id }/todoDelete?todo_no=${todoVO.todo_no }");
// 		  alert("alert");
		  swal({
			  title: "Are you sure?",
			  text: "",
			  type: "warning",
			  showCancelButton: true,
			  confirmButtonColor: "#DD6B55",
			  confirmButtonText: "Yes, delete it!",
			  cancelButtonText: "No, cancel plx!",
			  closeOnConfirm: false,
			  closeOnCancel: false
			},
			
			
			function(isConfirm){
			  if (isConfirm) {
			    swal("Success!", "", "success");
			    setTimeout( function() {
// 			    	  alert('http://webisfree.com');
				  location.replace("/project/${project.project_id }/todo/${category.category_id }/todoDelete?todo_no=${todoVO.todo_no }");
			    	}, 500);
			  } else {
			    swal("Cancelled!", "", "error");
			  }
			});
		  
	     });
	  });
  
  $(document).ready(function(){
	  $("#datepicker2").change(function(){
		  if($("#datepicker").val() > $("#datepicker2").val()){
			  $("#datepicker2").val("");
			  alert("종료일자 맞춰주세요");
		  }
		  
	  })
  })



</script>
    
</body>
</html>