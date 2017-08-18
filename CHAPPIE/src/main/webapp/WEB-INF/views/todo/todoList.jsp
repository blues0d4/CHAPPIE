<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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
<body class="hold-transition skin-blue sidebar-mini fixed">
<div class="wrapper">

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

  <!-- Content Wrapper. Contains page content -->
  <!-- Contents -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> <b>#${category.category_name }</b>
<!--         <small>Control panel</small> -->
      </h1>
    </section>

    <!-- Main content -->
    
    <section class="content">
    <div class="col-md-6">
      <div class="box box-primary" >
            <!-- /.box-header -->
            <div class="box-body">
                <table class="table table-bordered table-hover" >
                   <tr>
                      <td width="50px"><strong>완료</strong></td>
                    <td><strong>할 일 목록</strong></td>
                    <td width="50px"></td>
                   </tr>
            <c:forEach items="${ todoList }" var="todoVO">
               <tr>
               
                <c:choose>
                     <c:when test="${todoVO.todo_complete == '1' }">
                        <td width="50px"><input type="checkbox" style="display:table-col; margin-left:10px; margin-top:10px" onclick="complete(${todoVO.todo_no });" checked/>
                     </c:when>
                     <c:otherwise>
                        <td width="50px"><input type="checkbox" style="display:table-col; margin-left:10px; margin-top:10px" onclick="complete(${todoVO.todo_no });"/>
                     </c:otherwise>
          	       </c:choose>
                  
                  <td style="padding-top:15px"><p>${todoVO.todo_list}</p>   </td>
					<td>
                           <a href="/project/${project.project_id }/todo/${category.category_id }/todoView?todo_no=${todoVO.todo_no }" class="btn btn-default"><i class="fa fa-ellipsis-h"></i></a>
                       </td>
                 
               </tr>
            </c:forEach>
                 </table>
            </div>
            <!-- /.box-body -->
            <div class="box-footer clearfix no-border">
              <button type="button" class="btn btn-default pull-right" data-toggle="modal" data-target="#todolist_plus"><i class="fa fa-plus"></i> Add item</button>
            </div>
          </div>
		</div>
		
		<div class="col-md-6">
			<div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab_1" data-toggle="tab">Category</a></li>
              <li><a href="#tab_2" data-toggle="tab">Member</a></li>
            <!-- /.box-header -->
            </ul>
            <div class="tab-content">
      		  <div class="tab-pane active" id="tab_1">
				<div class="row">
				<div class="col-xs-12">
                  <p class="text-center">
                    <strong>Category Goal Completion</strong>
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
	                    <div class="progress active">
	                      <div class="progress-bar progress-bar-aqua progress-bar-striped" 
	                       style="width: ${chartVO.progress}%"></div>
	                    </div>
	                  </div>
                  	<!-- /.progress-group -->
                  	</c:forEach>
                  	<div class="progress-group">
	                    <span class="progress-text">${allChart.category_name }</span>
	                    <span class="progress-number"><b>${allChart.todo_complete_cnt }</b>/<b>${allChart.todo_cnt }(${allChart.progress}%)</b></span>
	                    <div class="progress active">
	                      <div class="progress-bar progress-bar-red progress-bar-striped" 
	                      style="width: ${allChart.progress}%"></div>
	                    </div>
	                  </div>
                  </c:otherwise>
                  	
                  </c:choose>
                  </div>
                </div>
       		 </div>
       		 
       		 
       		 <div class="tab-pane" id="tab_2">
				<div class="row">
				<div class="col-xs-12">
                  <p class="text-center">
                    <strong>Member Goal Completion</strong>
                  </p>
				  
				  <c:choose>
				  <c:when test="${empty mcVO}">
				  	<p class="text-center">
                    	<strong>내용이 없습니다.</strong>
                  	</p>
                  </c:when>
                  <c:otherwise>
				  	<c:forEach items="${mcVO }" var="mcVO">
	                  <div class="progress-group">
	                    <span class="progress-text">${mcVO.member_nickname }</span>
	                    <span class="progress-number"><b>${mcVO.todo_complete_cnt }</b>/<b>${mcVO.todo_cnt }(${mcVO.progress}%)</b></span>
	                    <div class="progress active">
	                      <div class="progress-bar progress-bar-aqua progress-bar-striped" 
	                       style="width: ${mcVO.progress}%"></div>
	                    </div>
	                  </div>
                  	<!-- /.progress-group -->
                  	</c:forEach>
                  </c:otherwise>
                  	
                  </c:choose>
                  </div>
                </div>
       		 </div>
       		 </div>
        </div>
      </div>

    </section>
    <!-- /.content -->

</div>
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
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>

<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<div class="modal fade" id="todolist_plus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
           <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-header" style="height:50px">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>
      </div>

      <div class="modal-body">
        <form class="form-horizontal" method="post" action="/project/${project.project_id }/todo/${category.category_id }/todoWrite">

                <div class="modal-body">
                   <table class="table table-bordered table-hover">
                      <tr>
                         <td width="110px" style="padding-left:5px"><label for="inputEmail" style="margin-top:5px"> 할 일 </label></td>
                         <td><input type="text" class="form-control" id="todo_list" name="todo_list"></td>
                      </tr>
                      <tr>
                         <td style="padding-left:5px">
                            <label for="inputEmail" style="margin-top:5px; padding: 0px"> 시작일자
                        <i class="fa fa-calendar"></i></label>
                     </td>
                     <td><div class="input-group date">
                    <input type="text" name="todo_start_date" class="form-control" id="datepicker3" >
                  </div></td>
                      </tr>
                      <tr>
                         <td style="padding-left:5px">
                            <label for="inputEmail" style="margin-top:5px; padding: 0px"> 종료일자
                         <i class="fa fa-calendar"></i></label>
                      </td>
                      <td>
                           <input type="text" name="todo_end_date" class="form-control" id="datepicker4" placeholder="">
                      </td>
                      </tr>
                      <tr>
                         <td width="110px" style="padding-left:5px"><label for="inputEmail" style="margin-top:5px"> 담당자 </label></td>
                         <td>
                           <div class="checkbox">
                              <c:forEach var="categoryMember" items="${cmList }">
                                <label>
                                  <input type="checkbox" name="member_nickname" value="${categoryMember }">
                                     ${categoryMember }
                                </label>
                             </c:forEach>
                           </div>
                      </td>
                      </tr>
                      <tr>
                         <td style="padding-left:5px"><label for="inputEmail" style="margin-top:5px"> 중요도 </label></td>
                         <td>
                            <select style="margin:3px" name="todo_priority">
                            <option> 상 </option>
                            <option> 중 </option>
                            <option> 하 </option>
                           </select>
                        </td>
                      </tr>
                      <tr>
                         <td style="padding-left:5px"><label for="textArea" style="margin-top:5px">비고</label></td>
                         <td><textarea class="form-control" rows="10" id="description" placeholder="내용을 입력하세요" name="todo_note"></textarea></td>
                      </tr>
                   </table>
                   <div class="form-group" style="text-align:center">
                   <div class="col-lg-10 col-lg-offset-2" style="margin-left:60px">
                      <br/>
                       <button type="submit" class="btn btn-primary">등록</button>
                        <button type="reset" data-dismiss="modal" class="btn btn-default">취소</button>
                    </div>
                 </div>
         </div>
      </form>
      </div>
     </div>
   </div>
</div>

<!-- 채피 인크루드 -->
<jsp:include page ="${PAGEs.VIEW_CHAPPIE}" flush="false" />

<script type="text/javascript">
function complete(chk)
{
   var allData = { "todo_no": chk };
   $.ajax({
      url: "/todo/todoComplete",
      data: allData,
      type: "get",
      dataType:"String",
      success:function(result){
         
      }
   });
   location.reload();
}
</script>

<script
  src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
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
    $('#datepicker3').datepicker({
      autoclose: true
    });
    $('#datepicker4').datepicker({
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
  
  $(document).ready(function(){
	  $("#datepicker3").change(function(){
		  if($("#datepicker4").val() != ""){
			  if($("#datepicker3").val() > $("#datepicker4").val()){
				  $("#datepicker3").val("");
			  }
		  }
	  })
	  $("#datepicker4").change(function(){
		  if($("#datepicker3").val() > $("#datepicker4").val()){
			  $("#datepicker4").val("");
		  }
	  })
  })
  
//   function dateCompare(todo_start_date, todo_end_date, point){
//       //정상 날짜인지 체크한다.
//       var startDateChk = dateCheck(startDate, point);
//       if(!startDateChk){
//           return false;
//       }
//       var endDateChk = dateCheck(endDate, point, "end");
      
//       if(!endDateChk){
//           return false;
//       }


  
</script>
</body>
</html>