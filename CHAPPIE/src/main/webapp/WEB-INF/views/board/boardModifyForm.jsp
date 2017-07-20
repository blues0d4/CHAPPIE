<%@page import="kr.co.syteam.commons.KEYs"%>
<%@page import="kr.co.syteam.commons.URIs"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CHAPPIE</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<form action="${URIs.PROJECT_DEFAULT }/${project.project_id }${URIs.BOARD_DEFAULT }/${category.category_id}${URIs.URI_BOARD_MODIFY_DEFAULT}/${boardVO.board_no}" method="post">
			<table class="table table-bordered">
			<thead>
			<h3>글 수정</h3>
			</thead>
				<tbody>
					<tr>
						<th>제목:</th>
						<td><input type="text" placeholder="제목을 입력하세요. "
							name="board_title" class="form-control" /></td>
					</tr>
					<tr>
						<th>내용:</th>
						<td><textarea cols="100" placeholder="내용을 입력하세요. " rows="10"
								name="board_contents" class="form-control"></textarea></td>
					</tr>
					<tr>
<%-- 					<input type="hidden" value=<%=request.getParameter("board_kind") %> name = "board_kind"> --%>
					<input type="hidden" value=${login.user_id } name = "user_id">
					<input type="hidden" value=${boardVO.board_no } name = "board_no">
					<div>
						<td colspan="2"><input type="submit" value="Write" class="btn btn-default" style="float: left">
			<a href="${URIs.PROJECT_DEFAULT }/${project.project_id}${URIs.BOARD_DEFAULT }/${category.category_id}" class="btn btn-default" style="float: right">글 목록으로 가기</a></td>
					</div>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>