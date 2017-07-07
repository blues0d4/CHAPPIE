<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
<head>
	<title>CHAPPIE</title> 
	
	  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Bootstrap Core CSS -->
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../../resources/css/stylish-portfolio.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	
</head>

<body>
	<aside>
		<jsp:include page ="../aside/aside.jsp" flush="false"/>
	</aside> 
    <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
    	<jsp:include page ="../../${PAGEs.VIEW_NAV_PROJECT}" flush="false" />
<!--         /.container-fluid -->
    </nav>
  <!-- Sign up -->
  <section id="project_create" class="project_create">

  <!-- Contact section -->
   <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" id="contact">
     <div class="w3-content" style="max-width:600px">
     <br>
     <br>
       <h1 class="w3-center"><b>프로젝트를 선택하세요.</b></h1>
   
       

					<table class="table">
						<tbody>
							<c:forEach items="${ projectList }" var="projectVO">
								<tr>
									<td><a href="/${projectVO.project_name }">${projectVO.project_name }</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<div class="form-group">
				
		<a class="w3-button w3-block w3-black w3-margin-bottom w3-round" href="${URIs.URI_MAIN}">메인으로</a>
       </div>
      
     </div>
   </div>
  </section>

</body>

</html>