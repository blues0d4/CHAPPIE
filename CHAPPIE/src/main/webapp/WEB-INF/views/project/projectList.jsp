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
<title>CHAPPIE</title> 

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
</head>

<body> 

  <!-- Sign up -->
  <section id="project_create" class="project_create">

  <!-- Contact section -->
   <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" id="contact">
     <div class="w3-content" style="max-width:600px">
     <form role="form" method="post" action="/projectCreate">
     <br>
     <br>
       <h1 class="w3-center"><b>프로젝트 생성</b></h1>
       <p class = "w3-center"> 이용약관과 개인정보취급방침에 동의합니다. </p>
   
       
       <form action="/action_page.php" target="_blank">
         <div class="w3-section">
         
           <label>프로젝트 이름</label>
           <input class="w3-input w3-border" type="text" value='' id="project_name" name="project_name" placeholder="프로젝트 이름" required>
         </div>

					<table class="table">
						<thead>
							<tr class="filters">
								<th style="width: 5%; margin: auto;"><input type="text"
									class="form-control" placeholder="글번호" disabled></th>
								<th style="width: 60%;"><input type="text"
									class="form-control" placeholder="제목" disabled></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${ projectList }" var="projectVO">
								<tr>
									<td>${projectVO.project_id }</td>
									<td><a href="/board/view/${projectVO.project_name }">${projectVO.project_name }</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<div class="form-group">
         <input type="submit"
				class="w3-button w3-block w3-black w3-margin-bottom w3-round"
				value="프로젝트 선택" />
				
		<a class="w3-button w3-block w3-black w3-margin-bottom w3-round" href="${URIs.URI_MAIN}">메인으로</a>
       </div>
      
       </form>
       </form>
     </div>
   </div>
  </section>

</body>
</html>