<%@page import="kr.co.syteam.commons.KEYs"%>
<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <meta name="description" content=""> -->
<!-- <meta name="author" content=""> -->
<title>SSangyoung_login</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">

  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">

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



<body class="hold-transition login-page" style="background-color: #E5FFFD">
  <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
<jsp:include page ="${PAGEs.VIEW_NAV_MAIN}" flush="false" />
  </nav>
 <!-- Sign up --> 
 <section id="sign_up" class="sign_up">
<div class="login-box">
  <div class="login-logo">
   
    <a href="#"><b>CHAPPIE  </b>로그인</a>
    <form role="form" method="post" action="${URIs.URI_USER_LOGIN}">
     <form action="/action_page.php" target="_blank">
     
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
	<p class="login-box-msg">Sign in to start your session</p>
      <div class="form-group has-feedback">
       <label for="userid">이메일</label>
           <input class="w3-input w3-border" type="text" value='' id="user_id" name="user_id" placeholder="이메일" required>
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <label for = "password">비밀번호</label>
           <input class="w3-input w3-border" type="password" value='' id="user_pw" name="user_pw" placeholder="비밀번호" required>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck">
            <label>
              <input type="checkbox"> Remember Me
            </label>
          </div>
        </div>
        
        
        
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat">로그인</button>
          <button type="submit" class="btn btn-primary btn-block btn-flat">취소</button>
          
        </div>
        <!-- /.col -->
     </div>
    

    <!-- /.social-auth-links -->
    <a href="/userJoinForm" class="text-center" onclick="location.href='${URIs.URI_USER_JOIN_FORM}'">Register a new membership</a>
    <%--<button type="button" class="w3-button w3-block w3-black w3-margin-bottom w3-round" onclick="location.href='${URIs.URI_USER_JOIN_FORM}'">회원가입</button> --%>
    
    
 		</form>
    </form>
  </div>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

</section>
<!-- jQuery 2.2.3 -->
<script src="../../plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="../../plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>


</body>




<!--   <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top"> -->

<%--     	<jsp:include page ="${PAGEs.VIEW_NAV_MAIN}" flush="false" /> --%>
<!--   </nav> -->
<!--   <!-- Sign up --> 
<!--   <section id="sign_up" class="sign_up"> -->

<!--   <!-- Contact section --> 
<!--    <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" id="contact"> -->
<!--      <div class="w3-content" style="max-width:600px"> -->

<%--      <form role="form" method="post" action="${URIs.URI_USER_LOGIN}"> --%>
<!--      <br> -->
<!--      <br> -->
<!--        <h4 class="w3-center"><b>로그인</b></h4> -->
<!--        <p class = "w3-center"> </p> -->
<!--        <form action="/action_page.php" target="_blank"> -->


<!--          <div class="w3-section"> -->
<!--            <label for="userid">이메일</label> -->
<!--            <input class="w3-input w3-border" type="text" value='' id="user_id" name="user_id" placeholder="이메일" required> -->
<!--          </div> -->

<!--           <div class="w3-section"> -->
<!--            <label for = "password">비밀번호</label> -->
<!--            <input class="w3-input w3-border" type="password" value='' id="user_pw" name="user_pw" placeholder="비밀번호" required> -->
<!--          </div> -->

<!--          <div class="form-group"> -->
<!--                   <div class="col-sm-offset-2 col-sm-10"> -->
<!--                     <div class="checkbox"> -->
<!--                       <label> -->
<!--                         <input type="checkbox"> 로그인 상태 유지 -->
<!--                       </label> -->
<!--                     </div> -->
<!--                   </div> -->
<!--           </div> -->

<!--           <div class="form-group"> -->
<!--                    <div class="col-sm-offset-2 col-sm-10"> -->
<!--                      <div class="checkbox"> -->
<!--                        <label> -->
<!--                          <input type="checkbox"> 이메일 기억하기 -->
<!--                        </label> -->
<!--                      </div> -->
<!--                    </div> -->
<!--            </div> -->

<!-- 		<div class ="button"> -->
<!--          <button type="submit" class="w3-button w3-block w3-black w3-margin-bottom w3-round" >로그인</button> -->
<%--          <button type="button" class="w3-button w3-block w3-black w3-margin-bottom w3-round" onclick="location.href='${URIs.URI_USER_JOIN_FORM}'">회원가입</button> --%>

<!--          <button type="submit" class="w3-button w3-block w3-black w3-margin-bottom w3-round">취소</button> -->
<!-- 		</div> -->
<!-- 	</div> -->

<!--        </form> -->
<!--        </form> -->
<!--      </div> -->
<!--    </div> -->
<!--   </section> -->


<!-- </body> -->
</html>
