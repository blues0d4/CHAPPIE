<%@page import="kr.co.syteam.commons.URIs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container" >
        

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <a class="navbar-brand page-scroll" href="${URIs.URI_MAIN}">CHAPPIE </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                	
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/#top">Home</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/#about">About</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/#services">Services</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="/#contact">Contact</a>
                    </li>
					
			<c:choose>
				<c:when test="${ empty login }">
                    <li>
                        <a class="page-scroll" href="${URIs.URI_USER_LOGIN_FORM}">
                          <span class ="glyphicon glyphicon-user">로그인</span></a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="${URIs.URI_USER_JOIN_FORM}">
                          <span class ="glyphicon glyphicon-user">회원가입</span></a>
                    </li>
                </ul>
                </c:when>
				<c:otherwise>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#"><span class ="glyphicon glyphicon-user">${ login.user_name }</span><span class="caret "></span></a>
						<ul class="dropdown-menu">
							<li><a href="${URIs.URI_USER_MODIFY_CONFIRM_FORM}">회원 정보 수정</a></li>
							<li><a href="${URIs.URI_USER_LOGOUT }">로그아웃</a></li>
						</ul>
					</li>
				</c:otherwise>
			</c:choose>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->