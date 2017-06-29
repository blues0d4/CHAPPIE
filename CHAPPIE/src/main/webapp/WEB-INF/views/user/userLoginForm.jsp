<%@page import="kr.co.syteam.commons.KEYs"%>
<%@page import="kr.co.syteam.commons.URIs"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<<<<<<< HEAD
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapc]dn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="page-header">
				
			</div>
			<div class="col-md-3">
				<div class="login-box well"> 
					<form role="form" method="post" action="${URIs.URI_USER_LOGIN }">
						<legend>로그인</legend>
						<div class="form-group">
							<label for="userid">이메일 or 아이디</label>
							<input name="user_id" value='' id="userid" placeholder="E-mail or Username" type="text" class="form-control" />
						</div>
						<div class="form-group">
							<label for="password">비밀번호</label>
							<input name="user_pw" id="password" value='' placeholder="Password" type="password" class="form-control" />
						</div>
						<div class="form-group">
							<input type="submit"
								class="btn btn-default btn-login-submit btn-block m-t-md"
								value="Login" />
							
						</div>
							<div class="form-group">
							<a href="null" class="btn btn-default btn-login-submit btn-block m-t-md">Join</a>
						</div>
					</form>
				</div>
			</div>
=======
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>SSangyoung_login</title> 

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapc]dn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
 
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
 
 
 
</head>
 
<body>
  <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
      <div class="container">
 
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header page-scroll">
       
              <a class="navbar-brand page-scroll" href="${URIs.URI_MAIN}">CHAPPIE</a>
          </div>
 
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav navbar-right">
                  <li class="hidden">
                      <a href="#page-top"></a>
                  </li>
                  <li>
                      <a class="page-scroll" href="../#services">Services</a>
                  </li>
                  <li>
                      <a class="page-scroll" href="../#about">About</a>
                  </li>
                  <li>
                      <a class="page-scroll" href="../#contact">Contact</a>
                  </li>
 
                   <li>
                      <a class="page-scroll" href="${URIs.URI_USER_LOGIN_FORM}">
                        <span class ="glyphicon glyphicon-user"> 로그인</span></a>
                  </li>
                  <li>
                      <a class="page-scroll" href="${URIs.URI_USER_JOIN_FORM}">회원가입</a>
                  </li>
                  
              </ul>
          </div>
          <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
  </nav>
  <!-- Sign up -->
  <section id="sign_up" class="sign_up">
 
  <!-- Contact section -->
   <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" id="contact">
     <div class="w3-content" style="max-width:600px">
     
     <form role="form" method="post" action="${URIs.URI_USER_LOGIN}">
     <br>
     <br>
       <h4 class="w3-center"><b>로그인</b></h4>
       <p class = "w3-center"> </p>
       <form action="/action_page.php" target="_blank">
       
      
         <div class="w3-section">
           <label for="userid">이메일</label>
           <input class="w3-input w3-border" type="text" value='' id="user_id" name="user_id" placeholder="이메일" required>
         </div>
 
          <div class="w3-section">
           <label for = "password">비밀번호</label>
           <input class="w3-input w3-border" type="password" value='' id="user_pw" name="user_pw" placeholder="비밀번호" required>
         </div>
 
         <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                      <label>
                        <input type="checkbox"> 로그인 상태 유지
                      </label>
                    </div>
                  </div>
          </div>
 
          <div class="form-group">
                   <div class="col-sm-offset-2 col-sm-10">
                     <div class="checkbox">
                       <label>
                         <input type="checkbox"> 이메일 기억하기
                       </label>
                     </div>
                   </div>
           </div>
			
		<div class ="button">
         <button type="submit" class="w3-button w3-block w3-black w3-margin-bottom w3-round" >로그인</button>
         <button type="button" class="w3-button w3-block w3-black w3-margin-bottom w3-round" onclick="location.href='${URIs.URI_USER_JOIN_FORM}'">회원가입</button>
         
         <button type="submit" class="w3-button w3-block w3-black w3-margin-bottom w3-round">취소</button>
>>>>>>> branch 'master' of https://github.com/blues0d4/CHAPPIE.git
		</div>
<<<<<<< HEAD
	</div>
=======
 
       </form>
       </form>
     </div>
   </div>
  </section>
	
	
>>>>>>> branch 'master' of https://github.com/blues0d4/CHAPPIE.git
</body>
</html>