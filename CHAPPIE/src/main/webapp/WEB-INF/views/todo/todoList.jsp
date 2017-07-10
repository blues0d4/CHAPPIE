<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>SSangyoung_todolist_list</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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

<link href="/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/resources/css/stylish-portfolio.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">


<style>

.calendar-group{
}
.calendar-group_common{
  float: left;
}
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}
</style>
</head>
<body class="w3-theme-l5">

<!-- Navbar -->

<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
    	<jsp:include page ="${PAGEs.VIEW_NAV_MAIN}" flush="false" />
</nav>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large">
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">My Profile</a>
</div>

<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
    <div class="w3-col m3">
      <!-- Profile -->
      <div class="w3-card-2 w3-round w3-white">
        <div class="w3-container">
         <h4 class="w3-center">My Profile</h4>
         <p class="w3-center"><img src="/w3images/avatar3.png" class="w3-circle" style="height:106px;width:106px" alt="Avatar"></p>
         <hr>
         <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> Designer, UI</p>
         <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> London, UK</p>
         <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> April 1, 1988</p>
        </div>
      </div>
      <br>

      <!-- Accordion -->
      <div class="w3-card-2 w3-round">
        <div class="w3-white">
          <button onclick="myFunction('Demo1')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-user-circle-o"></i> My Project </button>
          <div id="Demo1" class="w3-hide w3-container">
            <ul>
              <li>
              <button style="padding:5px; border:0px; background-color:#FFFFFF">My Project</button>
              </li>
              <li>
              <button style="padding:5px; border:0px; background-color:#FFFFFF">Create Project</button>
              </li>
              <li>
              <button style="padding:5px; border:0px; background-color:#FFFFFF">Post</button>
              </li>
          </div>

          <button onclick="myFunction('Demo2')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-users fa-fw"></i> Share Project</button>
          <div id="Demo2" class="w3-hide w3-container">
            <ul>
            <li>
            <button style="padding:5px; border:0px; background-color:#FFFFFF">Post</button>
            </li>
            <li>
            <button style="padding:5px; border:0px; background-color:#FFFFFF">To do list</button>
            </li>
            <li>
            <button style="padding:5px; border:0px; background-color:#FFFFFF">Progression rate</button>
            </li>
        </div>

          <button onclick="myFunction('Demo3')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-gear"></i> Management </button>
          <div id="Demo3" class="w3-hide w3-container">
         <div class="w3-row-padding">
         </div>
          </div>
        </div>
      </div>
      <br>
    <!-- End Left Column -->
    </div>

    <!-- Middle Column -->
    <div class="w3-col m7">
     <!-- Tabs -->
     <div id="Notice" class="w3-container myLink">       
       <div class="w3-container w3-card-2 w3-white w3-round" style="align:right"><br>
       	 <fieldset><legend style="margin-left:20px">To Do List</legend></fieldset>           
             <div class="row">
               <div class="col-xs-2">
                <select class="form-control input-sm" id="select" style="margin-left:20px">
                 <option>category</option>
                 <option>1</option>
                 <option>2</option>
                 <option>3</option>
                 <option>4</option>
                 <option>5</option>
               </select>
           	  </div>
              <div class="col-xs-2">
               	<button type="button" style="w3-indigo float" class="btn btn-default" data-toggle="modal" data-target="#todolist_plus"><i class="fa fa-plus-circle"></i></button>
              </div>
            </div>
               
	        <div class="w3-panel">
               <div class="w3-row-padding" style="margin:0 -16px">
                 <table class="w3-table w3-striped w3-white" >
                    <tr>
                   	 <td width="70px"></td>
                     <td><strong>할 일 목록</strong></td>
                     <td width="50px"><strong>완료</strong></td>
                    </tr>
					<c:forEach items="${ todoList }" var="todoVO">
						<tr>
							<td width="70px">								
		                     	<a href="/todo/todoView?todo_no=${todoVO.todo_no }" class="btn btn-default"><i class="fa fa-circle"></i></a>	                     									
		                    </td>
							<td style="padding-top:15px">${todoVO.todo_list}	</td>
														
							<c:choose>
								<c:when test="${todoVO.todo_complete == '1' }">
									<td width="50px"><input type="checkbox" style="display:table-col; margin-left:10px; margin-top:10px" onclick="complete(${todoVO.todo_no });" checked/>
								</c:when>
								<c:otherwise>
									<td width="50px"><input type="checkbox" style="display:table-col; margin-left:10px; margin-top:10px" onclick="complete(${todoVO.todo_no });"/>
								</c:otherwise>
							</c:choose>
						</tr>
					</c:forEach>                   
                  </table>
              </div>
            </div>
        </div>
      </div>
     </div>
  </div>
</div>
  <!-- End Grid -->
<!-- End Page Container -->


<!-- 
<div class="modal fade" id="todolist_check" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
 <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header" style="height:50px">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>
      </div>

      <div class="modal-body">
        <form class="form-horizontal">
          <fieldset>          
            <select style="margin-left:20px">
            <option>category</option>
            <option>1</option>
            <option>2</option>
            </select>
          </fieldset>
       	   	<div class="modal-body">
       	   		<table class="w3-table w3-white">
       	   			<tr>
       	   				<td width="110px" style="padding-left:5px"><label for="inputEmail" style="margin-top:5px"> 할 일 </label></td>
       	   				<td><input type="text" class="form-control" id="inputEmail"></td>
       	   			</tr>
       	   			<tr>
       	   				<td style="padding-left:5px">
       	   					<label for="inputEmail" style="margin-top:5px; padding: 0px"> 시작일자
			         		<button type="button" value="시작일자" onClick="datePicker(event, 'target_date')" onFocus="this.blur();">
			         		<i class="fa fa-calendar"></i></button></label>
		         		</td>
			         	<td><input type="text" name="target_date" class="form-control" id="inputEmail"></td>
       	   			</tr>
       	   			<tr>
       	   				<td style="padding-left:5px">
       	   					<label for="inputEmail" style="margin-top:5px; padding: 0px"> 종료일자
			                <button type="button" value="종료일자" onClick="datePicker(event, 'target_date2')" onFocus="this.blur();">
			                <i class="fa fa-calendar"></i></button></label>
		                </td>
		                <td>
		               		<input type="text" name="target_date2" class="form-control" id="inputEmail">
		                </td>
       	   			</tr>
       	   			<tr>
       	   				<td style="padding-left:5px"><label for="inputEmail" style="margin-top:5px"> 중요도 </label></td>
       	   				<td>
	       	   				<select style="margin:3px">
				                <option> 상 </option>
				                <option> 중 </option>
				                <option> 하 </option>
		               		</select>
	               		</td>
       	   			</tr>
       	   			<tr>
       	   				<td style="padding-left:5px"><label for="textArea" style="margin-top:5px">비고</label></td>
       	   				<td><textarea class="form-control" rows="10" id="textArea"></textarea></td>
       	   			</tr>
       	   		</table>
       	   		<div class="form-group" style="text-align:center">
             		<div class="col-lg-10 col-lg-offset-2" style="margin-left:60px">
             			<br/>
	                 	<button type="submit" class="btn btn-primary">수정</button>
	                  	<button type="button" data-dismiss="modal" class="btn btn-default">취소</button>
           			</div>
           		</div>
			</div>        
		</form>
      </div>
    </div>
  </div>
</div>
-->

<div class="modal fade" id="todolist_plus" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
           <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-header" style="height:50px">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span></button>
      </div>

      <div class="modal-body">
        <form class="form-horizontal" method="post" action="/todo/todoWrite">
          <fieldset>          
            <select style="margin-left:20px">
            <option>category</option>
            <option>todo</option>
            <option>what</option>
            <option>chappie</option>
            </select>
          </fieldset>
       	   	<div class="modal-body">
       	   		<table class="w3-table w3-white">
       	   			<tr>
       	   				<td width="110px" style="padding-left:5px"><label for="inputEmail" style="margin-top:5px"> 할 일 </label></td>
       	   				<td><input type="text" class="form-control" id="todo_list" name="todo_list"></td>
       	   			</tr>
       	   			<tr>
       	   				<td style="padding-left:5px">
       	   					<label for="inputEmail" style="margin-top:5px; padding: 0px"> 시작일자
			         		<button type="button" value="시작일자" onClick="datePicker(event, 'todo_start_date')" onFocus="this.blur();">
			         		<i class="fa fa-calendar"></i></button></label>
		         		</td>
			         	<td><input type="text" name="todo_start_date" class="form-control" id="start_date" placeholder=""></td>
       	   			</tr>
       	   			<tr>
       	   				<td style="padding-left:5px">
       	   					<label for="inputEmail" style="margin-top:5px; padding: 0px"> 종료일자
			                <button type="button" value="종료일자" onClick="datePicker(event, 'todo_end_date')" onFocus="this.blur();">
			                <i class="fa fa-calendar"></i></button></label>
		                </td>
		                <td>
		               		<input type="text" name="todo_end_date" class="form-control" id="end_date" placeholder="">
		                </td>
       	   			</tr>
       	   			<tr>
       	   				<td style="padding-left:5px"><label for="inputEmail" style="margin-top:5px"> 중요도 </label></td>
       	   				<td>
	       	   				<select style="margin:3px" name="todo_priority">
				                <option> 상 </option>
				                <option> 중 </option>
				                <option> 하 </option>
		               		</select>
	               		</td>
       	   			</tr>
       	   			<tr>
       	   				<td style="padding-left:5px"><label for="textArea" style="margin-top:5px">비고</label></td>
       	   				<td><textarea class="form-control" rows="10" id="description" placeholder="내용을 입력하세요" name="todo_note"></textarea></td>
       	   			</tr>
       	   		</table>
       	   		<div class="form-group" style="text-align:center">
             		<div class="col-lg-10 col-lg-offset-2" style="margin-left:60px">
             			<br/>
	                 	<button type="submit" class="btn btn-primary">등록</button>
	                  	<button type="reset" data-dismiss="modal" class="btn btn-default">취소</button>
           			</div>
           		</div>
			</div>        
		</form>
      </div>
	  </div>
	</div>
</div>

<script type="text/javascript">
function complete(chk)
{	
	var allData = { "todo_no": chk };
	$.ajax({
		url: "/todo/todoComplete",
		data: allData,
		type: "get",
		dataType:"String",
		success:function(result){
			alert("aa");
		}		
	});	
}
</script>




<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="http://googledrive.com/host/0B-QKv6rUoIcGREtrRTljTlQ3OTg"></script><!-- ie10-viewport-bug-workaround.js -->
<script src="http://googledrive.com/host/0B-QKv6rUoIcGeHd6VV9JczlHUjg"></script><!-- holder.js -->
<script language="JavaScript" src="/include/date_picker.js"></script>

<script>
// Calendar Script
// Licence : GPL (http://www.gnu.org/licenses/licenses.html#GPL)
// Update & Download  : http://www.ziwoo.net/zb/view.php?boardid=zb_ziwoo_javascript&uid=129
// This page was last modified on 2011.12.15 (Since 2010.04.11)

//ex1 : datePicker(event, 'targetFieldName');
//ex2 : datePicker(event, 'targetFieldName', 2);
//세번째 인자는 날짜를 입력할 타겟의 필드명이 복수인 경우를 위한 배열키.(기본값:0)

function datePicker(e, elm) {
	currentElement = (arguments[2])?document.getElementsByName(elm)[arguments[2]]:document.getElementsByName(elm)[0];
	var event = e || window.event;

	if(document.getElementById('currentDiv')) {
		document.getElementById("currentDiv").parentNode.removeChild(document.getElementById("currentDiv"));
	}

	if(arguments[0]){
		var eventX = event.clientX;
		var eventY = event.clientY;
		if(eventX>document.body.offsetWidth-182-40) eventX = document.body.offsetWidth-182-40;
		if(eventY>document.body.offsetHeight-158-40) eventY = document.body.offsetHeight-158-40;
		var calDivObj = document.createElement("div");
		calDivObj.setAttribute("id","currentDiv");
		calDivObj.style.width = '145px';
		calDivObj.style.height = '115px';
		calDivObj.style.border = "1px solid #D0D0D0";
		calDivObj.style.position = "absolute";
		calDivObj.style.top = eventY+document.body.scrollTop+10+'px';
		calDivObj.style.left = eventX+10+'px';
		calDivObj.style.zIndex = 100000;
		document.body.appendChild(calDivObj);
		fBuildHtml();
	}
}

function fBuildHtml() {
	// 기존 입력된 날짜 표시
	if(currentElement.value.length==10){
		var arrayOldDate = currentElement.value.split(/[^0-9]/);
		var currentDate = new Date(arrayOldDate[0], arrayOldDate[1]-1, arrayOldDate[2], 0, 0);
	}else{
		var currentDate = new Date();
	}
	var igYear = currentDate.getFullYear();
	var igMonth = currentDate.getMonth() + 1;

	var gMonths = new Array("1","2","3","4","5","6","7","8","9","10","11","12");
	var calHtml = "<table border='0' bgcolor='#C0C0C0'>";
	calHtml += "<tr style='font-size:9pt'>";
	calHtml += "<td valign='middle' align='center'>";
	calHtml += "<input type='button' name='PrevMonth' value='<' style='height:20px; width:20px; font:9pt Fixedsys;' onClick='fPrevMonth()'>";
	calHtml += " <select name='tbSelYear' style='font-size:9pt;' onChange='fUpdateCal(tbSelYear.value, tbSelMonth.value)'>";
	for(i=1970;i<2030;i++) calHtml += "<OPTION value='"+i+"'>"+i+"</OPTION>";
	calHtml += "</select>";
	calHtml += " <select name='tbSelMonth' style='font-size:9pt' onChange='fUpdateCal(tbSelYear.value, tbSelMonth.value)'>";
	for (i=0; i<12; i++) calHtml += "<option value='"+(i+1)+"'>"+gMonths[i]+"</option>";
	calHtml += "</select>";
	calHtml += " <input type='button' name='PrevMonth' value='>' style='height:20px; width:20px; font:9pt Fixedsys;' onclick='fNextMonth()'>";
	calHtml += "</td>";
	calHtml += "</tr><tr>";
	calHtml += "<td align='center'>";
	calHtml += "<DIV><table width='100%' border='0' cellspacing='1' cellpadding='2'>";
	calHtml += fDrawCal(igYear,igMonth);
	calHtml += "</table></DIV>";
	calHtml += "</td>";
	calHtml += "</tr>";
	calHtml += "</td></tr>";
	calHtml += "</table>";

	document.getElementById('currentDiv').innerHTML = calHtml;
	fSetYearMon(igYear,igMonth);
}

function fDrawCal(iYear, iMonth) {
	var WeekDay = new Array("Sun","Mon","Tue","Wed","Thu","Fri","Sat");
	var calHtml = "<tr>";

	for(i=0; i<7; i++) calHtml += "<td bgcolor='White' width='20' valign='middle' align='center' style='font:bold 10px Tahoma; color:#C0C0C0; ' >" + WeekDay[i] + "</td>";
	calHtml += "</tr>";
	var i = 0;
	for (w = 1; w < 7; w++) {
		calHtml += "<tr>";
		for (d = 0; d < 7; d++) {
			if(w==6 && d==6){
				calHtml += "<td bgcolor='#C0C0C0' width='20' valign='middle' align='center' style='padding:1px 0 0 3px; cursor:pointer;' onClick='datePicker()'>";
				calHtml += "<font color='White' face='Tahoma'>X</font>";
				calHtml += "</td>";
			}else{
				calHtml += "<td bgcolor='White' width='20' valign='middle' align='center' style='font:bold 10px Tahoma; cursor:pointer;' onMouseOver=\"this.bgColor='Pink'\" onMouseOut=\"this.bgColor='White'\" onClick='fSetSelected(this)'>";
				calHtml += "<font id='cellText_"+i+"'></font>";
				calHtml += "</td>";
			}
			i++;
		}
		calHtml += "</tr>";
	}
	return calHtml;
}

function fSetYearMon(iYear, iMon){
	var tbSelYear = document.getElementsByName('tbSelYear')[0];
	var tbSelMonth = document.getElementsByName('tbSelMonth')[0];
	tbSelMonth.options[iMon-1].selected = true;
	for (i = 0; i < tbSelYear.length; i++) if (tbSelYear.options[i].value == iYear) tbSelYear.options[i].selected = true;
	fUpdateCal(iYear, iMon);
}

function fPrevMonth(){
	var iMon = document.getElementsByName('tbSelMonth')[0].value;
	var iYear = document.getElementsByName('tbSelYear')[0].value;
	if (--iMon<1) {
		iMon = 12;
		iYear--;
	}
	fSetYearMon(iYear, iMon);
}

function fNextMonth(){
	var iMon = document.getElementsByName('tbSelMonth')[0].value;
	var iYear = document.getElementsByName('tbSelYear')[0].value;
	if (++iMon>12) {
		iMon = 1;
		iYear++;
	}
	fSetYearMon(iYear, iMon);
}

function fUpdateCal(iYear, iMonth) {
	myMonth = fBuildCal(iYear, iMonth);
	// 기존 입력된 날짜 표시
	if(currentElement.value.length==10){
		var arrayOldDate = currentElement.value.split(/[^0-9]/);
		var currentDate = new Date(arrayOldDate[0], arrayOldDate[1]-1, arrayOldDate[2], 0, 0);
	}else{
		var currentDate = new Date();
	}
	var igYear = currentDate.getFullYear();
	var igMonth = currentDate.getMonth() + 1;
	var igDate = currentDate.getDate();
	var i = 0;
	for (w = 0; w < 6; w++) for (d = 0; d < 7; d++) if(w!=5 || d!=6) {
		with (document.getElementById('cellText_'+parseInt((7*w)+d))) {
			if (myMonth[w+1][d]<0) {
				color = "#808080";
				innerHTML = -myMonth[w+1][d];
			}else{
				if(d==0) color = "red";
				else if(d==6) color = "blue";
				else color = "black";
				innerHTML = myMonth[w+1][d];
				if(iYear==igYear && iMonth==igMonth && innerHTML==igDate){
					parentNode.style.backgroundColor='#D8FF00';
				}else{
					parentNode.style.backgroundColor='';
				}
			}
		}
	}
}

function fBuildCal(iYear, iMonth) {
	var aMonth=new Array();
	for(i=1;i<7;i++) aMonth[i]=new Array(i);
	var dCalDate=new Date(iYear, iMonth-1, 1);
	var iDayOfFirst=dCalDate.getDay();
	var iDaysInMonth=new Date(iYear, iMonth, 0).getDate();
	var iOffsetLast=new Date(iYear, iMonth-1, 0).getDate()-iDayOfFirst+1;
	var iDate = 1;
	var iNext = 1;
	for (d = 0; d < 7; d++) aMonth[1][d] = (d<iDayOfFirst)?-(iOffsetLast+d):iDate++;
	for (w = 2; w < 7; w++) for (d = 0; d < 7; d++) if(w!=6 || d!=6) aMonth[w][d] = (iDate<=iDaysInMonth)?iDate++:-(iNext++);
	return aMonth;
}

function fSetSelected(aCell){
	var tbSelYear = document.getElementsByName('tbSelYear')[0];
	var tbSelMonth = document.getElementsByName('tbSelMonth')[0];
	var iOffset = 0;
	var iYear = parseInt(tbSelYear.value);
	var iMonth = parseInt(tbSelMonth.value);
	with (aCell.firstChild){
		var iDay = parseInt(innerHTML);
		if(aCell.parentNode.rowIndex<2 && iDay>15) iMonth--;
		if(aCell.parentNode.rowIndex>4 && iDay<15) iMonth++;
		if (iMonth<1) {
			iYear--;
			iMonth = 12;
		}else if (iMonth>12){
			iYear++;
			iMonth = 1;
		}
	}
	currentElement.value = iYear+"-"+(parseInt(iMonth+100).toString().substring(1,3))+"-"+(parseInt(iDay+100)).toString().substring(1,3);
	document.getElementById("currentDiv").parentNode.removeChild(document.getElementById("currentDiv"));
}
</script>
</body>
</html>
