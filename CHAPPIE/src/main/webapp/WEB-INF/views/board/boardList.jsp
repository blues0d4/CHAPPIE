<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<link 	rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link 	rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript" src="/resources/js/main.js"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<title>CHAPPIE 게시판</title>
</head>
<body>
<div>
		<div class="row">
			<div class="panel panel-primary filterable">
				<div class="panel-heading">
					<h3 class="panel-title">Board</h3>
					<div class="pull-right">
						<button class="btn btn-default btn-xs btn-filter">
							<span class="glyphicon glyphicon-filter"></span> Filter
						</button>
					</div>
				</div>
				<table class="table">
					<thead>
						<tr class="filters">
							<th style="width: 5%; margin: auto;"><input type="text"
								class="form-control" placeholder="글번호" disabled></th>
							<th style="width: 60%;"><input type="text"
								class="form-control" placeholder="제목" disabled></th>
							<th style="width: 10%; margin: auto;"><input type="text"
								class="form-control" placeholder="아이디" disabled></th>
							<th style="width: 15%; margin: auto;"><input type="text"
								class="form-control" placeholder="작성일자" disabled></th>
							<th style="width: 10%; margin: auto;"><input type="text"
								class="form-control" placeholder="조회수" disabled></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${ boardList }" var="boardVO">
							<tr>
								<td>${boardVO.board_no }</td>
								<td><a href="/board/view/${boardVO.board_no }">${boardVO.board_title }</a></td>
								<td>${ boardVO.user_id }</td>
								<td>${ boardVO.board_write_date }</td>
								<td>${ boardVO.board_count }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

<<<<<<< HEAD
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/stylish-portfolio.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<head>
  <script >
function moreList(){
    $.ajax({
        url : "/admin/jsonlist",
        type : "POST",
        cache : false,
        dataType: 'json',
        data : "conectType="+conectType +"&eDate="+eDate+"&sDate="+sDate+"&codeId="+codeId+"&limit="+limit,
        success : function(data){
            //console.log(data);
            var content="";
            for(var i=0; i<data.hashMapList.length; i++){
                content +=
                "<tr>"+
                    "<td>"+data.hashMapList[i].area+"</td>"+
                    "<td>"+data.hashMapList[i].name+"</td>"+
                    "<td>"+data.hashMapList[i].gubun+"</td>"+
                    "<td>"+data.hashMapList[i].cnt+"</td>"+
                "</tr>";
            }
            content+="<tr id='addbtn'><td colspan='5'><div class='btns'><a href='javascript:moreList();' class='btn'>더보기</a></div>  </td></tr>";
            $('#addbtn').remove();//remove btn
            $(content).appendTo("#table");
        }, error:function(request,status,error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
           }
    });
};
</script>


</head>


<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}
</style>
<body class="w3-theme-l5">

  <table id="table" class="table">
      <thead>
          <tr>
              <th>지역</th>
              <th>콘텐츠명</th>
              <th>콘텐츠 구분</th>
              <th>페이지 뷰</th>
          </tr>
      </thead>
      <tbody>
          <c:forEach items="${ boardList }" var="boardVO" varStatus="status">
          <tr>
              <td>${boardVO.board_no }</td>
              <td>${ boardVO.board_writer }</td>
              <td>${ boardVO.board_contents }</td>
              <td>${ boardVO.board_count }</td>
          </tr>
          </c:forEach>
          <tr id='addbtn'><td colspan="5"><div class="btns"><a href="javascript:moreList();" class="btn btn-primary">더보기</a></div></td></tr>
      </tbody>
  </table>


=======
		<a class="btn btn-warning" href="/doException">예외 테스트</a>
		
		<c:if test="${ not empty login }">
			<a class="btn btn-warning" href="#">게시글 작성하기</a>
		</c:if>
		
	</div>
>>>>>>> branch 'master' of https://github.com/blues0d4/CHAPPIE
</body>
</html>
