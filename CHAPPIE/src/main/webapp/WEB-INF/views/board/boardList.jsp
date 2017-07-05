<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<title>SSangyoung_borad_list</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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


</body>
</html>
