<%@page import="kr.co.syteam.commons.KEYs"%>
<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
<!--   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css"> -->
  <!-- Ionicons -->
<!--   <link rel="stylesheet" href="https:d//cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css"> -->
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
  
  <script type="text/javascript">
		$(document).ready(function(){
		$("#user_id").on({
			"blur":function(){
			var user_id = $(this).serialize();
			
				$.ajax({
					url:"/idCheck",
					data:user_id,
					type: "get",
					dataType:"json",
					success:function(result){
							
						if(result.user_id==$("#user_id").val() ){
						$("#idcheck").text("이메일이 중복되었습니다.");
						$("#idcheck").css("color", "red");
						$("#submit").hide(); 
						}
						else{
							$("#idcheck").text("사용가능한 이메일 입니다.");
							$("#idcheck").css("color", "blue");
							$("#submit").show();
						}
						
					}				 
				});						
				}	
		});
	}); 
	

</script>
  
</head>

<body class="hold-transition register-page"style="background-color: #99ccff">
<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
<jsp:include page="${PAGEs.VIEW_NAV_MAIN}" flush="false"/>
</nav>
<div class="register-box">
  <div class="register-logo">
    <a href="#"><b>CHAPPIE </b>회원가입</a>
  </div> 

  <div class="register-box-body">
    <p class="login-box-msg">Register a new membership</p>

    <form action="${URIs.URI_USER_JOIN }" method="post">
    
    
     
<!--     <div class="form-group has-success"> -->
<!--                   <label class="control-label" for="inputSuccess"><i class="fa fa-check"></i> Input with success</label> -->
<!--                   <input type="text" class="form-control" id="inputSuccess" placeholder="Enter ..."> -->
<!--                   <span class="help-block">Help block with success</span> -->
<!--                 </div> -->
                
                
                
      <div class="form-group has-feedback">
        <input type="email" class="form-control" placeholder="Email" id="user_id" name="user_id">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        <div id="idcheck" ></div>
      </div>
      
      <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="Nickname" id="user_name" name="user_name">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password" id="user_pw" name="user_pw">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
<!--       <div class="form-group has-feedback"> -->
<!--         <input type="password" class="form-control" placeholder="Retype password" id="user_pwcheck" name="user_pwcheck"> -->
<!--         <span class="glyphicon glyphicon-log-in form-control-feedback"></span> -->
<!--       </div> -->


		<div class="input-group">
                  <div class="input-group-addon">
                    <i class="glyphicon glyphicon-earphone"></i>
                  </div>
                  <input type="text" class="form-control" id="user_phone" name="user_phone" data-inputmask='"mask": "(999) 9999-9999"' data-mask>
                </div>

<br>
<br>
      <div class="row">
<!--         <div class="col-xs-8"> -->
<!--           <div class="checkbox icheck"> -->
<!--             <label> -->
<!--               <input type="checkbox"> I agree to the <a href="#">terms</a> -->
<!--             </label> -->
<!--           </div> -->
<!--         </div> -->
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" id="submit" class="btn btn-primary btn-block btn-flat">Register</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

<!--     <div class="social-auth-links text-center"> -->
<!--       <p>- OR -</p> -->
<!--       <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign up using -->
<!--         Facebook</a> -->
<!--       <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign up using -->
<!--         Google+</a> -->
<!--     </div> -->
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
</html>
