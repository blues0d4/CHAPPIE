<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html;"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>CHAPPIE</title> 

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
</head>

<body> 
    <!-- Navigation -->
  <!-- Sign up -->
  <section id="category_create" class="category_create">

  <!-- Contact section -->
   <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" id="contact">
     <div class="w3-content" style="max-width:600px">
     <form role="form" method="post" action="/projectCategoryCreate">
     <br>
     <br>
       <h1 class="w3-center"><b>카테고리 생성</b></h1>
   
       
         <div class="w3-section">
         
           <label>카테고리 이름</label>
           <input class="w3-input w3-border" type="text" value='' id="category_name" name="category_name" placeholder="카테고리 이름" required>
         </div>

         
         
         <div class="form-group">
         <input type="submit"
				class="w3-button w3-block w3-black w3-margin-bottom w3-round"
				value="카테고리 생성" />
				
		<a class="w3-button w3-block w3-black w3-margin-bottom w3-round" href="/${project.project_name}">취소</a>
       </div>
      
       </form>
     </div>
   </div>
  </section>

</body>
</html>