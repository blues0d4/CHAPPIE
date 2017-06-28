<%@page import="kr.co.syteam.commons.KEYs"%>
<%@page import="kr.co.syteam.commons.URIs"%>
<%-- <%@page import="kr.co.smh.commons.Pages"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<%-- 				<%	if(request.getAttribute(Keys.KEY_USERID_PARAM) == null) {%> --%>
<!-- 					<h2>로그인 하세요</h2> -->
<%-- 				<%	}else{ %> --%>
<%-- 					<h2><%= request.getAttribute(Keys.KEY_USERID_PARAM) + "으로 로그인 불가능 합니다. 다시 로그인 시도 해주세요" %></h2> --%>
<%-- 				<%	} %> --%>
				
			</div>
			<div class="col-md-3">
				<div class="login-box well"> <!-- ../../users/loginchk -->
					<form role="form" method="post" action="${URIs.URI_USER_LOGIN }">
<!-- 					<form role="form" method="post" action="../user/userLogin"> -->
						<legend>로그인</legend>
						<div class="form-group">
							<label for="userid">이메일 or 아이디</label>
							<input name="user_id" value='' id="userid" placeholder="E-mail or Username" type="text" class="form-control" />
<%-- 							<input name="${KEYs.KEY_USERID_PARAM}" value='' id="userid" placeholder="E-mail or Username" type="text" class="form-control" /> --%>
						</div>
						<div class="form-group">
							<label for="password">비밀번호</label>
							<input name="user_pw" id="password" value='' placeholder="Password" type="password" class="form-control" />
<%-- 							<input name="${KEYs.KEY_USERPW_PARAM}" id="password" value='' placeholder="Password" type="password" class="form-control" /> --%>
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
		</div>
	</div>
</body>
</html>