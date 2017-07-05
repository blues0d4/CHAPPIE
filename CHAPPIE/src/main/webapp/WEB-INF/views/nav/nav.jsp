<%@page import="kr.co.syteam.commons.URIs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
        

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <a class="navbar-brand page-scroll" href="${URIs.URI_MAIN}">CHAPPIE</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                	
			<c:choose>
				<c:when test="${ empty login }">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">Services</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
					
                    <li>
                        <a class="page-scroll" href="${URIs.URI_USER_LOGIN_FORM}">
                          <span class ="glyphicon glyphicon-user">로그인</span></a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="${URIs.URI_USER_JOIN_FORM}">회원가입</a>
                    </li>
                </ul>
                </c:when>
				<c:otherwise>
					<li>
                        <a class="page-scroll" href="${URIs.URI_USER_MODIFY_FORM}">
                          <span class ="glyphicon glyphicon-user">${ login.user_name }</span></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="${URIs.URI_USER_LOGOUT}">
                          <span class ="glyphicon glyphicon-user">로그아웃</span></a>
                    </li>
				</c:otherwise>
			</c:choose>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->