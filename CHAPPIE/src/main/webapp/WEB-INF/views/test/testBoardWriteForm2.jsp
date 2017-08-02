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
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  
  
  
  <style>
	p {
		white-space: pre;
	}
	
/* 	body { */
/* 		font: 16px/1.5 sans-serif; */
/* 	} */
	
	/* Show only 4 lines in smaller screens */
	article {
		max-height: 6em; /* (4 * 1.5 = 6) */
	}
	
.fixedbutton{position:relative;margin:0 1.25rem}
#msg_input{

overflow:auto;
margin:0;
width:100%;
min-height:42px;
height:38px;
max-height:180px;
border:2px solid #E0E0E0;
border-radius:.375rem;
outline:0;
background:#fff;
resize:none;box-shadow:none;color:#3D3C40;
font-family:Slack-Lato,appleLogo,sans-serif;
font-size:.9375rem;line-height:1.2rem;-webkit-user-select:auto;
-moz-user-select:auto;-ms-user-select:auto;user-select:auto;padding:9px 30px 10px 50px}

</style>
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
  
  
  <div class="content-wrapper">
  
  <section class="content-header">
    <div>
      <h1> <b>#${category.category_name }</b>
<!--         <small>Control panel</small> -->
      </h1>
      </div>
      </section>
      
      
      
      
	<section class="container">
	
	<form action="${URIs.PROJECT_DEFAULT }/${project.project_id }${URIs.BOARD_DEFAULT }/${category.category_id}${URIs.URI_BOARD_WRITE_DEFAULT}" method="post">
	
	<div class="box">
            <div class="box-header">
              <h3 class="box-title">글 작성
                <small>게시글을 작성해주세요</small>
              </h3>
              <!-- tools box -->
<!--               <div class="pull-right box-tools"> -->
<!--                 <button type="button" class="btn btn-default btn-sm" data-widget="collapse" data-toggle="tooltip" title="Collapse"> -->
<!--                   <i class="fa fa-minus"></i></button> -->
<!--                 <button type="button" class="btn btn-default btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove"> -->
<!--                   <i class="fa fa-times"></i></button> -->
<!--               </div> -->
              <!-- /. tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body pad">
              <form>
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th>제목:</th>
						<td><input type="text" placeholder="제목을 입력하세요. "
							name="board_title" class="form-control" /></td>
					</tr>
					<tr>
						<th>내용:</th>
						<td><textarea cols="100" placeholder="내용을 입력하세요. " rows="10"
								name="board_contents" class="form-control"></textarea></td>
					</tr>
					<tr>
<%-- 					<input type="hidden" value=<%=request.getParameter("board_kind") %> name = "board_kind"> --%>
					<input type="hidden" value=${category.category_id } name = "category_id">
					<input type="hidden" value=${login.user_id } name = "user_id">
					<div>
						<td colspan="2"><input type="submit" value="Write" class="btn btn-default" style="float: left">
			<a href="${URIs.PROJECT_DEFAULT }/${project.project_id}${URIs.BOARD_DEFAULT }/${category.category_id}" class="btn btn-default" style="float: right">글 목록으로 가기</a></td>
					</div>
					</tr>
				</tbody>
			</table>              </form>
            </div>
          </div>
	
	
	
<!-- 			<table class="table table-bordered"> -->
<!-- 			<thead> -->
<!-- 			<h3>글 작성</h3> -->
<!-- 			</thead> -->
<!-- 				<tbody> -->
<!-- 					<tr> -->
<!-- 						<th>제목:</th> -->
<!-- 						<td><input type="text" placeholder="제목을 입력하세요. " -->
<!-- 							name="board_title" class="form-control" /></td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<th>내용:</th> -->
<!-- 						<td><textarea cols="100" placeholder="내용을 입력하세요. " rows="10" -->
<!-- 								name="board_contents" class="form-control"></textarea></td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<%-- <%-- 					<input type="hidden" value=<%=request.getParameter("board_kind") %> name = "board_kind"> --%> 
<%-- 					<input type="hidden" value=${category.category_id } name = "category_id"> --%>
<%-- 					<input type="hidden" value=${login.user_id } name = "user_id"> --%>
<!-- 					<div> -->
<!-- 						<td colspan="2"><input type="submit" value="Write" class="btn btn-default" style="float: left"> -->
<%-- 			<a href="${URIs.PROJECT_DEFAULT }/${project.project_id}${URIs.BOARD_DEFAULT }/${category.category_id}" class="btn btn-default" style="float: right">글 목록으로 가기</a></td> --%>
<!-- 					</div> -->
<!-- 					</tr> -->
<!-- 				</tbody> -->
<!-- 			</table> -->
		</form>
	</section>
	
	
	
  <footer class="main-footer">
   	 <jsp:include page ="${PAGEs.VIEW_FOOTER_PROJECT}" flush="false" />
    
  </footer>
  
  
  	<aside class="control-sidebar control-sidebar-dark">
		
   	 <jsp:include page ="${PAGEs.VIEW_ASIDE_RIGHT}" flush="false" />
	
 	</aside>
   <div class="control-sidebar-bg"></div>
  </div>
  
  
  
  <script
  src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
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
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="/resources/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/dist/js/demo.js"></script>


<script src="/resources/js/readmore.js"></script> 
	
	<!-- jQuery 2.2.3 -->
<script src="/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="/resources/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/resources/dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/dist/js/demo.js"></script>
<!-- CK Editor -->
<script src="https://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor1');
    //bootstrap WYSIHTML5 - text editor
    $(".textarea").wysihtml5();
  });
</script>


<script>
    $('article').readmore({
//         	blockCSS: 'display: block; width: 100%;',
//         	moreLink: '<span><button type="button" class="btn btn-info">Read More</button></span>',
//       	  lessLink: '<span><button type="button" class="btn btn-info" style="width:10%;">Close</button></span>'
      		
      	  moreLink: '<span>...<a href="#">Read more</a></span>',
      	  lessLink: '<span><a href="#">Close</a></span>'
      
    });
    
 // Scrolls to the selected menu item on the page
    $(function() {
        $('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
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
                $('#to-top2').show("slow", function() {
                    $('#to-top2').css({
                        position: 'fixed',
                        display: 'block'
                    });
                });
            }
        } else {
            if (fixed) {
                fixed = false;
                $('#to-top2').hide("slow", function() {
                    $('#to-top2').css({
                        display: 'none'
                    });
                });
            }
        }
    });
    
  </script>

</body>

</html>