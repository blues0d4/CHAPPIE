<%@page import="kr.co.syteam.commons.KEYs"%>
<%@page import="kr.co.syteam.commons.URIs"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Write something else you want</title>
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
		<form action="<%=URIs.URI_BOARD_WRITE_FULL%>" method="post">
			<table class="table table-bordered">
				<thead>
					<caption>�۾���</caption>
				</thead>
				<tbody>
					<tr>
						<th>����:</th>
						<td><input type="text" placeholder="������ �Է��ϼ���. "
							name="board_title" class="form-control" /></td>
					</tr>
					<tr>
						<th>����:</th>
						<td><textarea cols="100" placeholder="������ �Է��ϼ���. " rows="10"
								name="board_contents" class="form-control"></textarea></td>
					</tr>
					<tr>
<%-- 					<input type="hidden" value=<%=request.getParameter("board_kind") %> name = "board_kind"> --%>
						<td colspan="2"><a href="/project/${project.project_name}" class="btn btn-default" style="float: left">�� ������� ����</a>
						<input type="submit" value="�۾���" class="btn btn-default" style="float: right"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>