<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CHAPPIE</title>
  
<script src="/resources/dist/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/dist/sweetalert.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
  
  
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Bootstrap Core CSS -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/resources/css/stylish-portfolio.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    
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
<!--   <!-- iCheck --> -->
<!--   <link rel="stylesheet" href="/resources/plugins/iCheck/flat/blue.css"> -->
<!--   <!-- Morris chart --> -->
<!--   <link rel="stylesheet" href="/resources/plugins/morris/morris.css"> -->
<!--   <!-- jvectormap --> -->
<!--   <link rel="stylesheet" href="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css"> -->
<!--   <!-- Date Picker --> -->
<!--   <link rel="stylesheet" href="/resources/plugins/datepicker/datepicker3.css"> -->
<!--   <!-- Daterange picker --> -->
  <link rel="stylesheet" href="/resources/plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style>
	
/* 	body { */
/* 		font: 16px/1.5 sans-serif; */
/* 	} */
	
	/* Show only 4 lines in smaller screens */
	article {
		max-height: 6em; /* (4 * 1.5 = 6) */
	}
	
.fixedbutton{position:relative;margin:0 1.25rem}
#msg_input{overflow:auto;margin:0;width:100%;min-height:42px;height:38px;max-height:180px;border:2px solid #E0E0E0;border-radius:.375rem;outline:0;background:#fff;resize:none;box-shadow:none;color:#3D3C40;font-family:Slack-Lato,appleLogo,sans-serif;font-size:.9375rem;line-height:1.2rem;-webkit-user-select:auto;-moz-user-select:auto;-ms-user-select:auto;user-select:auto;padding:9px 30px 10px 50px}

</style>

<script>

function commentList(val){
	var allData = { "board_no" : val};
	
	$.ajax({
		url: "${URIs.URI_BOARD_COMMENT_LIST }/"+val,
		data: allData,
		dataType: "json",
		success:function(result){
			var output = "<table class=\"table table-hover\">";
				
	            for(var i in result){
	                output += "<tr>";
	                output += "<td>"+"<a href=\"#\">"+result[i].user_id+"</a></td>";
	            	output += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
	                output += "<td>"+result[i].comment_contents+"</td>";
	            	output += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
	            	output += "<td>"+result[i].comment_write_date+"</td>"
	                output += "</tr>";
	            }
            output += "</table>";


            $("#commentList"+val).html(output);
				
		}
		
		
	})
	
}


// $("#btnReply").click(function(){
//     var replytext=$("#replytext").val();
//     var bno="${dto.bno}"
//     var param="replytext="+replytext+"&bno="+bno;
//     $.ajax({                
//         type: "post",
//         url: "${path}/reply/insert.do",
//         data: param,
//         success: function(){
//             alert("댓글이 등록되었습니다.");
//             listReply2();
//         }
//     });
// });


function commentWrite(val){
	var commentForm = $("form[name=commentForm"+val+"]").serialize() ;
// 	var commentText = $("#commentText"+val).val();
// 	var commentForm = $("input[name=board_no"+val+"]").val();
// 	alert(commentText);
	
// 		commentList(val);
	$.ajax({            
	    type : 'post',
		url: "${URIs.URI_BOARD_COMMENT_WRITE }",
		data: commentForm,
		dataType: "json",
		complete :function(){

		var test = $("#commentText"+val).val("");
		commentList(val);
			
//             $("#commentWrite"+val).html(output);
				
		}
		
		
	})
	
}




</script>

</head>
<body class="hold-transition skin-blue sidebar-mini fixed">

<div class= "wrapper">

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
    <div>
      <h1> <b>#${category.category_name }</b>
<!--         <small>Control panel</small> -->
      </h1>
	
    </div>
    <div class="fixedbutton">
		<a class="btn btn-primary btn-xs pull-right" style="margin-right:15px;" href="${URIs.PROJECT_DEFAULT }/${project.project_id}${URIs.BOARD_DEFAULT }/${category.category_id }${URIs.URI_BOARD_WRITE_FORM_DEFAULT}">Write</a>
	</div>
    </section>

    <!-- Main content -->
    <section class="content">
    
		<ul class="timeline">

    <!-- timeline time label -->
    <li class="time-label">
        <span class="bg-red">
            2017년 2월 20일 월요일
        </span>
    </li>
    <!-- /.timeline-label -->

    <!-- timeline item -->
    <li>
        <!-- timeline icon -->
        <i class="fa fa-envelope bg-blue"></i>
        <div class="timeline-item">
            <span class="time"><i class="fa fa-clock-o"></i> 12:12</span>

            <h3 class="timeline-header"><a href="#">SY_Team</a>			 #${category.category_name}게시판 공지입니다.</h3>

            <div class="timeline-body" >
                	<b>#${category.category_name}</b> 게시판 공지입니다.
            </div>

            <div class="timeline-footer">
                <a class="btn btn-primary btn-xs">Read more</a>
            </div>
        </div>
    </li>
 <!-- timeline time label -->
 				<c:forEach items="${boardList }" var="boardVO" varStatus="status">
 				
 				<c:choose>
 				
                <c:when test="${boardList[status.index].board_write_date_yyyymmdd ne  boardList[status.index-1].board_write_date_yyyymmdd}">
		
    <li class="time-label">
        <span class="bg-red">
           ${boardVO.board_write_date_yyyy}년 ${boardVO.board_write_date_mon} ${boardVO.board_write_date_dd}일 ${boardVO.board_write_date_day}
        </span>
    </li>
				</c:when>
 				</c:choose>
				
    <!-- /.timeline-label -->

    <!-- timeline item -->
    <li>
        <!-- timeline icon -->
        <i class="fa fa-user bg-aqua"></i>
        <div class="timeline-item">
            <span class="time"><i class="fa fa-clock-o"></i> ${boardVO.board_write_date }</span>

            <h3 class="timeline-header"><a href="#">${boardVO.user_id }	</a>&nbsp;&nbsp;&nbsp;&nbsp; ${boardVO.board_title }</h3>
	
	
	<!-- 줄바꿈 -->
            <div class="timeline-body" id="testrow" style="width:auto; overflow:hidden; white-space:normal; word-break:normal;
            text-overflow:ellipsis;  margin:10px;" >
            <article>
			<p style="white-space: pre;">${boardVO.board_contents }</p>
			</article>
            </div>

            <div class="timeline-footer">
            <div class="form-inline">
<!--             <div style="width: 500px"> -->
                <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo${status.index }" onclick="commentList(${boardVO.board_no})">${boardVO.comment_count } Comments</button>

<%--                 <button type="button" class="btn btn-danger"><a href="${URIs.PROJECT_DEFAULT }/${project.project_id}${URIs.BOARD_DEFAULT }/${category.category_id }${URIs.URI_BOARD_DELETE_DEFAULT}/${boardVO.board_no}">Delete</a>  --%>
<%--                 <input type="hidden" value=${boardVO.board_no } name = "board_no"> --%>
<%-- 				<input type="hidden" value=${login.user_id } name = "user_id"> --%>
<!--                 </button> -->
				<c:if test="${login.user_id eq boardVO.user_id}">
				<button type="button" class="btn btn-danger"><a href="${URIs.PROJECT_DEFAULT }/${project.project_id}${URIs.BOARD_DEFAULT }/${category.category_id }${URIs.URI_BOARD_MODIFY_FORM_DEFAULT}/${boardVO.board_no}">Modify</a>
                </button>
<%-- 				 <form class="form-group" action="${URIs.PROJECT_DEFAULT }/${project.project_id}${URIs.BOARD_DEFAULT }/${category.category_id }${URIs.URI_BOARD_MODIFY_FORM_DEFAULT}"> --%>
<!--                	   <input type="submit" value="Modify" class="btn btn-danger"> -->
<%--                	    <input type="hidden" value=${boardVO.board_no } name = "board_no"> --%>
<%-- 					<input type="hidden" value=${login.user_id } name = "user_id"> --%>
<!--                 </form> -->
                   <button type = "button" class="btn btn-danger" style="margin-right:10px" onclick="deleteBoard(${boardVO.board_no})" >Delete</button>
                
<%--                 <form class="form-group" action="${URIs.PROJECT_DEFAULT }/${project.project_id}${URIs.BOARD_DEFAULT }/${category.category_id }${URIs.URI_BOARD_DELETE_DEFAULT}/${boardVO.board_no}"> --%>
<!--                	   <input type="submit" value="Delete" class="btn btn-danger"> -->
<%--                	    <input type="hidden" value=${boardVO.board_no } name = "board_no"> --%>
<%-- 					<input type="hidden" value=${login.user_id } name = "user_id"> --%>
<!--                 </form> -->
               
				</c:if>
<!--                 </div> -->
            </div>
                
                <div id="demo${status.index }" class="collapse">
<!-- 	   				  <form> -->
    <div class="form-group">
<%--     <c:forEach items="${boardCommentList }" var="boardCommentVO" varStatus="status"> --%>
 				
<%--     	${boardCommentVO.comment_contents} --%>
<%--     	</c:forEach> --%>
 
    <div id="commentList${boardVO.board_no }"></div>
      <c:if test="${login.user_id != null}">    
      <label for="comment">Comment:</label>
      
      <form name="commentForm${boardVO.board_no}" action="post">
      <input type="hidden" value="${login.user_name}" name = "user_name"/>
      <input type="hidden" value=${boardVO.board_no } name = "board_no" />
	  <input type="hidden" value=${login.user_id } name = "user_id" />
      <textarea id= "commentText${boardVO.board_no }"class="form-control" rows="2" cols="80" name ="comment_contents"></textarea>
<!--         <textarea rows="5" cols="80" id="replytext" placeholder="댓글을 작성해주세요"></textarea> -->
        <br>
      </form>
        <button type="button" class="btn btn-info" onclick="commentWrite(${boardVO.board_no})">댓글 작성</button>
<!--         <button type="button" class="btn btn-info" id="commentWriteBtn" >댓글 작성</button> -->
        
        </c:if>
      
    </div>
<!--   </form> -->
	  			</div>
	  			
            </div>
        </div>
    </li>
				</c:forEach>

    
    <!-- END timeline item -->


</ul>

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
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
    
</div>

<!-- 채피 인크루드 -->
<jsp:include page ="${PAGEs.VIEW_CHAPPIE}" flush="false" />

	
<!-- ./wrapper -->


<!-- jQuery 2.2.3 -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script> -->
<!-- jQuery UI 1.11.4 -->
<!-- <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script> -->
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<!-- Bootstrap 3.3.6 -->
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- <!-- Morris.js charts --> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script> -->
<!-- <script src="/resources/plugins/morris/morris.min.js"></script> -->
<!-- <!-- Sparkline --> -->
<!-- <script src="/resources/plugins/sparkline/jquery.sparkline.min.js"></script> -->
<!-- <!-- jvectormap --> -->
<!-- <script src="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script> -->
<!-- <script src="/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script> -->
<!-- <!-- jQuery Knob Chart --> -->
<!-- <script src="/resources/plugins/knob/jquery.knob.js"></script> -->
<!-- <!-- daterangepicker --> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script> -->
<!-- <script src="/resources/plugins/daterangepicker/daterangepicker.js"></script> -->
<!-- <!-- datepicker --> -->
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


<script src="/resources/js/readmore.js"></script> 
<script type="text/javascript">
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
    
 // 삭제유무
    
 function deleteBoard(val){
//   		  alert("/project/${project.project_id }/todo/${category.category_id }/todoDelete?todo_no=${todoVO.todo_no }");
//   		  alert("alert");
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
  				if (isConfirm==true) {
  			    swal("Success!", "", "success");
  			    setTimeout( function() {
				  location.replace("${URIs.PROJECT_DEFAULT }/${project.project_id}${URIs.BOARD_DEFAULT }/${category.category_id }${URIs.URI_BOARD_DELETE_DEFAULT}/"+val);
				  
				  <%--                 <form class="form-group" action="${URIs.PROJECT_DEFAULT }/${project.project_id}${URIs.BOARD_DEFAULT }/${category.category_id }${URIs.URI_BOARD_DELETE_DEFAULT}/${boardVO.board_no}"> --%>
				  <!--                	   <input type="submit" value="Delete" class="btn btn-danger"> -->
				  <%--                	    <input type="hidden" value=${boardVO.board_no } name = "board_no"> --%>
				  <%-- 					<input type="hidden" value=${login.user_id } name = "user_id"> --%>
  			    
  			    }, 500);
  			  } else {
  			    swal("Cancelled!", "", "error");
  			  }
  			});
  		  
//   	     var isDelete = confirm("삭제하시겠습니까?");
  	     
  	     
  	     
//   	     if(isDelete){
//   	    	 document.form.submit();
//   	     }else{
//   	    	 return false;
//   	     }
  	     
  	  }
    
  </script>
  <!-- Custom Theme JavaScript -->
</body>
</html>
