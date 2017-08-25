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

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition lockscreen skin-blue">
<!-- <body class="hold-transition skin-blue sidebar-mini fixed" data-spy="scroll" data-target="#scrollspy" style="height: auto;"> -->
<!-- Automatic element centering -->
<div class="lockscreen-wrapper">
  <div class="lockscreen-logo">
    <a href="#"><b>CHAPPIE</b></a>
  </div>
  <br>
  <br>
  <!-- User name -->
  <div class="lockscreen-name">${login.user_name }</div>

  <!-- START LOCK SCREEN ITEM -->
  <div class="lockscreen-item">
    <!-- lockscreen image -->
    <div class="lockscreen-image">
      <img src="/resources/dist/img/user2-512x512.jpg" alt="User Image">
    </div>
    <!-- /.lockscreen-image -->

    <!-- lockscreen credentials (contains the form) -->
    <form class="lockscreen-credentials">
      <div class="input-group">
        <input type="password" class="form-control" placeholder="password" id="pwinput">

        <div class="input-group-btn">
          <div class="btn" onclick="pwCheck()"><i class="fa fa-arrow-right text-muted"></i></div>
        </div>
      </div>
    </form>
    <!-- /.lockscreen credentials -->
  </div>
  <div class="text-center" id="pwcheck"></div>
  <!-- /.lockscreen-item -->
  <br>
  
  <div class="help-block text-center">
    비밀번호를 확인해주세요
  </div>
  <div class="text-center">
<!--     <a href="login.html">Or sign in as a different user</a> -->
  </div>
  <div class="lockscreen-footer text-center">
<!--   <br> -->
<!--   <br> -->
<!--   <br> -->
<!--     Copyright &copy; 2014-2016 <b><a href="http://almsaeedstudio.com" class="text-black">Almsaeed Studio</a></b><br> -->
<!--     All rights reserved -->
  </div>
</div>
<!-- /.center -->


<script type="text/javascript">
$(document).ready(function() {
	$("#pwinput").keypress(function(event) {
		if (event.which == 13) {
			event.preventDefault();
			pwCheck();
		}
	});			
});

function pwCheck()
{
   var allData = { "user_pw": $("#pwinput").val() };
   
   $.ajax({
      url: "/pwCheck",
      data: allData,
      type: "get",
      success:function(result){
    	  if(result==1){
    		  var url = "/userModifyForm"; 
    		  $(location).attr('href',url);
    	  }else{
    		  $("#pwcheck").text("비밀번호가 틀립니다");
				$("#pwcheck").css("color", "red");
    	  }
      }
   });
}
	

</script>
<script
  src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
