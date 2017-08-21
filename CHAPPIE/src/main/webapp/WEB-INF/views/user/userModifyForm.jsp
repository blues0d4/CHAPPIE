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
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
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
  <!-- iCheck -->
  <link rel="stylesheet" href="/resources/plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  
  
  
</head>

<!-- <body class="hold-transition register-page"style="background-color: #99ccff"> -->
<body class="hold-transition register-page" style="background-color: #99ceff"> 
<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
<jsp:include page="${PAGEs.VIEW_NAV_MAIN}" flush="false"/>
</nav>
<div class="register-box">
  <div class="register-logo">
    <a href="#">회원수정</a>
  </div> 

  <div class="register-box-body">

    <form action="${URIs.URI_USER_MODIFY }" method="post">
    
      <div class="form-group has-feedback">
        <input type="email" class="form-control" value="${login.user_id }" id="user_id" name="user_id" readonly="readonly">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        <div id="idcheck" ></div>
      </div>
      
      <div class="form-group has-feedback">
        <input type="text" class="form-control" value="${login.user_name }" id="user_name" name="user_name">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password" id="user_pw" name="user_pw">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>


		<div class="input-group">
                  <div class="input-group-addon">
                    <i class="glyphicon glyphicon-earphone"></i>
                  </div>
                  <input type="text" class="form-control" id="user_phone" value="${login.user_phone }" name="user_phone" data-inputmask='"mask": "(999) 9999-9999"' data-mask>
                </div>

<br>
<br>
      <div class="row">
        <div class="col-xs-12">
          <button type="submit" id="submit" class="btn btn-primary btn-block btn-flat">수정</button>
          <a class="btn btn-primary btn-block btn-flat" href="../userDelete">회원탈퇴</a>
          <a class="btn btn-primary btn-block btn-flat" href="${URIs.URI_MAIN}">메인으로</a>
        </div>
        <!-- /.col -->
      </div>
    </form>

<br>
<br>
    <a href="/userLoginForm" class="text-center">I already have a membership</a>
  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->

<!-- jQuery 2.2.3 -->
<script src="/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="/resources/plugins/iCheck/icheck.min.js"></script>
</body>
</html>
