<%@page import="kr.co.syteam.commons.URIs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>SSangyoung_join</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<script type="text/javascript">
      $(document).ready(function(){
      $("#user_id").on({
         "blur":function(){
         var user_id = $(this).serialize();
            $.ajax({
               url:"/user/userIdCheck",
               data:user_id,
               type: "get",
               dataType:"json",
               success:function(result){
                  console.log(result.user_id);
                  if(result.user_id==$("#user_id").val()){
                  $("#idcheck").text("아이디가 중복되었습니다.");
                  $("#idcheck").css("color", "red");
                  }                  
                  else{
                     $("#idcheck").text("사용가능한 아이디입니다.");
                     $("#idcheck").css("color", "green");
                  }
               }      
            });
         }   
      });
   }); 
</script>
</head>

<body>

<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">

<jsp:include page="${PAGEs.VIEW_NAV_MAIN}" flush="false"/>
  </nav>
  <!-- Sign up -->
  <section id="sign_up" class="sign_up">

  <!-- Contact section -->
   <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" id="contact">
     <div class="w3-content" style="max-width:600px">
<%--      <form role="form" method="post" action="${URIs.URI_USER_JOIN}"> --%>
     <form role="form" method="post" action="${URIs.URI_USER_JOIN}">
     <br>
     <br>
       <h4 class="w3-center"><b>회원가입</b></h4>
       <p class = "w3-center"> 이용약관과 개인정보취급방침에 동의합니다. </p>
   
       
       <form action="/action_page.php" target="_blank">
         <div class="w3-section">
         
           <label>이메일</label>
           <input class="w3-input w3-border" type="text" value='' id="user_id" name="user_id" placeholder="이메일" required>
           <div id="idcheck"></div>
         </div>

         <div class="w3-section">
           <label for = "password">비밀번호</label>
           <input class="w3-input w3-border" type="password" value='' id="user_pw" name="user_pw" placeholder="비밀번호" required>
         </div>

         <div class="w3-section">
           <label for = "password">비밀번호 확인</label>
           <input class="w3-input w3-border" type="password" value='' id="user_pwcheck" name="user_pwcheck" placeholder="비밀번호 확인" required>
         </div>

         <div class="w3-section">
           <label>닉네임</label>
           <input class="w3-input w3-border" type="text" value='' id="user_name" name="user_name" placeholder="닉네임" required>
         </div>
         <div class="w3-section">
           <label>휴대폰번호</label>
           <input class="w3-input w3-border" type="number" value='' id="user_phone" name="user_phone" placeholder="휴대폰번호" required>
         </div>
         
         <div class="form-group">
         <input type="submit"
				class="w3-button w3-block w3-black w3-margin-bottom w3-round"
				value="가입완료" />
				
		<a class="w3-button w3-block w3-black w3-margin-bottom w3-round" href="${URIs.URI_MAIN}">메인으로</a>
       </div>
      
       </form>
       </form>
     </div>
   </div>
  </section>

</body>
</html>