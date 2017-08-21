<%@page import="kr.co.syteam.commons.KEYs"%>
<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <meta name="description" content=""> -->
<!-- <meta name="author" content=""> -->
<title>CHAPPIE</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
<!--   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"> -->
  <!-- Ionicons -->
<!--   <link rel="stylesheet" href="https:d//cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css"> -->
  <!-- Theme style -->
  <link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="/resources/plugins/iCheck/square/blue.css">
</head>



<body class="hold-transition login-page" style="background-color: #a3dcd7">

  <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
<jsp:include page ="${PAGEs.VIEW_NAV_MAIN}" flush="false" />
  </nav>
 <!-- Sign up --> 
 <section id="sign_up" class="sign_up">
<div class="login-box">
  <div class="login-logo">
   
    <a href="#"><b>CHAPPIE  </b>로그인</a>
    
     
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
  <form role="form" method="post" action="${URIs.URI_USER_LOGIN}">
<!-- 	<p class="login-box-msg">Sign in to start your session</p> -->
               
      <div class="form-group has-feedback">
        <input type="email" class="form-control" placeholder="Email" id="user_id" name="user_id">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        <div id="idcheck" ></div>
      </div>
      
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password" id="user_pw" name="user_pw">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
<!--         <div class="col-xs-8"> -->
<!--           <div class="checkbox icheck"> -->
<!--             <label> -->
<!--               <input type="checkbox">Remember Me -->
<!--               <br> -->
<!--             </label> -->
<!--           </div> -->
<!--         </div> -->
        
         <!-- /.col -->
        <div class="col-xs-4">
        <br>
          <button type="submit" class="btn btn-primary btn-block btn-flat" style="background-color: #59c0b7">Login</button>
<!--           <button type="submit" class="btn btn-primary btn-block btn-flat" style="background-color: #59c0b7">취소</button> -->
          
        <br>
        <br>
        </div>
        
       
        <!-- /.col -->
     </div>
    

    <!-- /.social-auth-links -->
    <a href="/userJoinForm" class="text-center" onclick="location.href='${URIs.URI_USER_JOIN_FORM}'">Register a new membership</a>
    <%--<button type="button" class="w3-button w3-block w3-black w3-margin-bottom w3-round" onclick="location.href='${URIs.URI_USER_JOIN_FORM}'">회원가입</button> --%>
    
    
 		</form>
    </div>
  </div>
  <!-- /.login-box-body -->

<!-- /.login-box -->

</section>
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
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>
<script>
  $(function () {
   
    //Money Euro
    $("[data-mask]").inputmask();

    
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
