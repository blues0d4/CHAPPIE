<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<div class="col-md-6">
	<div class="box box-solid">
		<div class="box-header with-border">
			<h3 class="box-title">Board</h3>
		</div>
		<!-- /.box-header -->
		<div class="box-body">

			<c:forEach items="${boardList }" var="boardVO" varStatus="status">
				<div class="box-group" id="accordion">
					<!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
					<div class="panel box box-primary">
						<div class="box-header with-border">
							<h4 class="box-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapse${status.index}" aria-expanded="false" class="collapsed">
									${boardVO.board_title } </a>
							</h4>
						</div>
						<div id="collapse${status.index}" class="panel-collapse collapse"
							aria-expanded="false" style="height: 0px;">
							<div class="box-body">${boardVO.user_id }</div>
						</div>
					</div>
			</c:forEach>

		</div>
	</div>
	<!-- /.box-body -->
</div>
<!-- /.box -->
</div>