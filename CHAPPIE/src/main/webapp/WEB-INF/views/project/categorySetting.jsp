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
<div class="wrapper" style="height: auto;">
    <section class="content" >

  <!-- Contact section -->
   <div class="row">
  	 <div class="col-md-8">
   		<div class="box box-primary">
            <form role="form" 
            action="/project/${project.project_id }/categoryMemberModify/<%= request.getParameter("category_id") %>" method="post">
              <div class="box-body">
                <div class="form-group">
                  <label>멤버 변경</label>
                  <div class="checkbox">
                   	    <c:forEach var="categoryMember" items="${cmList }">
			                      <label>
			                      <input type="checkbox"  name="member_nickname" value="${categoryMember }" checked>
			                      	${categoryMember }
			                      </label>
		                </c:forEach>
	                  <c:forEach var="projectMember" items="${pmList }">
               		             <label>
			                      <input type="checkbox" name="member_nickname" value="${projectMember }">
			                      	${projectMember }
			                      </label>   
		              </c:forEach>      
	                 </div>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <input type="submit" class="btn btn-primary" value="변경" onclick="modifyComplete();">
              </div>
            </form>
          </div>
          
          <div class="box">
              <div class="box-body">
                  <label>그룹 삭제</label>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button class="btn btn-danger" onclick="categoryDelete(<%= request.getParameter("category_id")%>)">삭제</button>
              </div>
          </div>
  	 </div>
   </div>
    </section>
    <!-- /.content -->
  
</div>
<!-- ./wrapper -->

<script>
function modifyComplete(){
	alert("변경이 완료되었습니다");
}

function categoryDelete(val)
{   
   var allData = { "category_id": val };
   $.ajax({
      url: "/project/${project.project_id }/categoryDelete/<%= request.getParameter("category_id") %>",
      data: allData,
      type: "get",
      success:function(result){
    	  CloseWindow();
      }      
   });   
}

<%-- $(document).ready(function(){
	$('#submitTest').submit(function(){
		var allData = $(this).serialize();
		alert("dfdf");
		$.ajax({
		      url: "/project/${project.project_id }/categoryMemberModify/<%= request.getParameter("category_id") %>",
		      data: allData,
		      type: "get",
		      success:function(result){
		    	  CloseWindow();
		      }      
		   }); 
		return true;
	});
}); --%>

function CloseWindow(){
	opener.parent.location.reload();
	self.opener = self;
	window.close();
}
</script>

<!-- jQuery 2.2.3 -->
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
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
<!-- Bootstrap WYSIHTML5 -->
<script src="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="/resources/dist/js/app.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!-- AdminLTE for demo purposes -->
<script src="/resources/dist/js/demo.js"></script>
</body>
</html>
