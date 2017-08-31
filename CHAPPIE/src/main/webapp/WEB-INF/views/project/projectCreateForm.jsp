<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html;"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>CHAPPIE</title> 

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
</head>

<body> 
    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
    	<jsp:include page ="${PAGEs.VIEW_NAV_MAIN}" flush="false" />
<!--         /.container-fluid -->
    </nav>
  <!-- Sign up -->
  <section id="project_create" class="project_create">

  <!-- Contact section -->
   <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" id="contact">
     <div class="w3-content" style="max-width:600px">
     <form role="form" action="/projectCreate" method="post">
     <br>
     <br>
       <h1 class="w3-center"><b>프로젝트 생성</b></h1>
   
       
         <div class="w3-section">
         
           <label>프로젝트 이름</label>
           <input class="w3-input w3-border" type="text" value='' id="project_name" name="project_name" placeholder="프로젝트 이름" required>
         </div>
		<div id="projectCheck" style="width:600px;height:30px">
		</div>
         
         <div class="form-group">
         <input type="submit" id="btn"
				class="w3-button w3-block w3-black w3-margin-bottom w3-round"
				value="프로젝트 생성" disabled="disabled" />
				
		<a class="w3-button w3-block w3-black w3-margin-bottom w3-round" href="${URIs.URI_MAIN}">메인으로</a>
       </div>
      
       </form>
     </div>
   </div>
  </section>

<script type="text/javascript">

$(document).ready(function(){
	$("#project_name").on({
		"keyup":function(event){
			if (event.which == 13) {
				return false;
			}
		var project_name = $(this).serialize();
		
			$.ajax({
				url:"/projectCheck",
				data: project_name,
				type: "get",
				success:function(result){
					btn = document.getElementById('btn');
					if(result==1){
						 $("#projectCheck").text("");
						  btn.disabled = false;
			    	  }else{
			    		  btn.disabled = 'disabled';
			    		  $("#projectCheck").text("이미 존재하는 이름입니다");
							$("#projectCheck").css("color", "red");
			    	  }
					
				}				 
			});						
			}	
	});
}); 

</script>

<!-- jQuery 2.2.3 -->
<script src="/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="/resources/plugins/iCheck/icheck.min.js"></script>
</body>
</html>