<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<ul class="timeline">

    <!-- timeline time label -->
    <li class="time-label">
        <span class="bg-red">
            10 Feb. 2014
        </span>
    </li>
    <!-- /.timeline-label -->

    <!-- timeline item -->
    <li>
        <!-- timeline icon -->
        <i class="fa fa-envelope bg-blue"></i>
        <div class="timeline-item">
            <span class="time"><i class="fa fa-clock-o"></i> 12:05</span>

            <h3 class="timeline-header"><a href="#">Support Team</a> ...</h3>

            <div class="timeline-body">
                ...
                Content goes here
            </div>

            <div class="timeline-footer">
                <a class="btn btn-primary btn-xs">Read more</a>
            </div>
        </div>
    </li>
 <!-- timeline time label -->
 				<c:forEach items="${boardList }" var="boardVO" varStatus="status">
 				
 				<c:choose>
 				
                <c:when test="${boardList[status.index].board_write_date_yyyymmdd ne  boardList[status.index-1].board_write_date_yyyymmdd}">
		
    <li class="time-label">
        <span class="bg-red">
           ${boardVO.board_write_date_yyyy}, ${boardVO.board_write_date_mon} ${boardVO.board_write_date_dd}일 ${boardVO.board_write_date_day}
        </span>
    </li>
				</c:when>
 				</c:choose>
				
    <!-- /.timeline-label -->

    <!-- timeline item -->
    <li>
        <!-- timeline icon -->
        <i class="fa fa-envelope bg-blue"></i>
        <div class="timeline-item">
            <span class="time"><i class="fa fa-clock-o"></i> ${boardVO.board_write_date }</span>

            <h3 class="timeline-header"><a href="#">${boardVO.user_id }	</a>${boardVO.board_title }</h3>

            <div class="timeline-body">
                ...test0122555511
<%--                 	 <c:if test="${!status.last }"> --%>
<%--                 	 </c:if> --%>
<%--                 <c:if test="${boardList[status.index+1].board_title ne null}"> --%>
				haha
<%-- 				</c:if> --%>
<%-- 		${boardList[status.index].user_id } --%>
                Content goes here
            </div>

            <div class="timeline-footer">
                <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Comments</button>
                <div id="demo" class="collapse">
	   				 Lorem ipsum dolor sit amet, co nsectetur adipisicing elit,
	   					 sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
	    			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
	  			</div>
            </div>
        </div>
    </li>
				</c:forEach>

    <div>
    	
		<a class="btn btn-default pull-left" href="/project/${project.project_name}/board/${category_name }/boardWriteForm">Write</a>
	</div>
    <!-- END timeline item -->


</ul>