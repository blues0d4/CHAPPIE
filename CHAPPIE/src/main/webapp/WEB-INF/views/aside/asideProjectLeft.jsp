<%@page import="kr.co.syteam.commons.URIs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <section class="sidebar" >
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
<!--          <i class="glyphicon glyphicon-user pull-left"></i> -->
        </div>
        <div class="pull-left info">
          <p>${ login.user_name }</p>
         <i class="fa fa-circle text-success"></i> 온라인
        </div>
      </div>
      <ul class="sidebar-menu">
       <li class="header">프로젝트</li>
       
       
       <li class="treeview">
         <a href="#">
            <i class="glyphicon glyphicon-folder-open "></i> <span>${project.project_name}</span>
            
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
<!--        <li class="active"> -->
         <c:forEach items="${projectList }" var="projectVO">
            <c:choose>
               <c:when test="${project.project_name eq projectVO.project_name}">
<!--                <li class="active"> -->
<%--                   <a href="/${projectVO.project_name}"><i class="fa fa-circle-o"></i> ${projectVO.project_name}</a> --%>
<!--                    </li> -->
                   </c:when>
                   <c:otherwise>
               <li>
                  <a href="${URIs.PROJECT_DEFAULT }/${projectVO.project_id}"><i class="fa fa-folder"></i> ${projectVO.project_name}</a>
                   </li>
                   
                   
                   </c:otherwise>
            </c:choose>
         </c:forEach>
            <li>
                  <a href="${URIs.URI_PROJECT_CREATE_FORM }"><i class="glyphicon glyphicon-plus"></i>새로운 프로젝트 만들기</a>
                </li>
          </ul>
       </li>
         <li class="treeview">
         <a href="${URIs.PROJECT_DEFAULT }/${project.project_id}/projectSetting">
            <i class="glyphicon glyphicon-cog"></i> <span>프로젝트 관리</span>
            
<!--             <span class="pull-right-container"> -->
<!--             </span> -->
          </a>
       </li>
      </ul>
      
<!--       search form -->
<!--       <form action="#" method="get" class="sidebar-form"> -->
<!--         <div class="input-group"> -->
<!--           <input type="text" name="q" class="form-control" placeholder="Search..."> -->
<!--               <span class="input-group-btn"> -->
<!--                 <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i> -->
<!--                 </button> -->
<!--               </span> -->
<!--         </div> -->
<!--       </form> -->
      <!-- /.search form -->
      
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">메뉴</li>
<!--         <li class="header"><br><br> </li> -->
<!--         <li class="treeview"> -->



        <li class="treeview">
          <a href="#">
<%--          <c:choose> --%>
<%--             <c:when test="${empty category}"> --%>
                  <i class="fa fa-commenting"></i> <span>타임라인 </span>
<%--                </c:when> --%>
<%--                <c:otherwise> --%>
<!--                     <i class="fa fa-slack"></i> <span>#${category.category_name}</span> -->
<%--                </c:otherwise> --%>
<%--             </c:choose> --%>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
<!--             <li class="active"> -->
         <c:forEach items="${categoryList}" var="categoryVO">
               <c:choose>
            <c:when test="${categoryVO.category_name eq category.category_name}">
            <li class="active">
            <a href="${URIs.PROJECT_DEFAULT }/${project.project_id}${URIs.BOARD_DEFAULT }/${categoryVO.category_id}"><i class="fa fa-commenting-o"></i> #${categoryVO.category_name}</a>
                  </li>
            </c:when>
            <c:otherwise> 
            <li>
               <a href="${URIs.PROJECT_DEFAULT }/${project.project_id}${URIs.BOARD_DEFAULT }/${categoryVO.category_id}"><i class="fa fa-commenting-o"></i> #${categoryVO.category_name}</a>
               </li>
            </c:otherwise>
         </c:choose>         
         </c:forEach>
            <li>
<!--             <a href="#"><i class="fa fa-circle-o"></i>+ Add Categories</a> -->
            <a href="${URIs.PROJECT_DEFAULT }/${project.project_id }${URIs.URI_PROJECT_CATEGORY_CREATE_FORM_DEFAULT}"><i class="glyphicon glyphicon-plus"></i>새로운 그룹 만들기</a> 
            </li>
          </ul>
        </li>        
        
        
        <li class="treeview">
          <a href="#">
           <i class="fa fa-check-square-o"></i> <span>할 일</span>
               <span class="pull-right-container">
                 <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">

<!--      	    <li class="active"> -->
			<c:forEach items="${categoryList}" var="categoryVO">
					<li>
		            <a href="${URIs.PROJECT_DEFAULT }/${project.project_id}/todo/${categoryVO.category_id}"><i class="fa fa-square-o"></i> #${categoryVO.category_name}</a>
		            </li>
			</c:forEach>
				<li>
<!-- 				<a href="#"><i class="fa fa-circle-o"></i>+ Add Categories</a> -->
					<a href="${URIs.PROJECT_DEFAULT }/${project.project_id }${URIs.URI_PROJECT_CATEGORY_CREATE_FORM_DEFAULT}"><i class="glyphicon glyphicon-plus"></i>새로운 그룹 만들기</a>
				</li>
          </ul>
        </li>
       
        
        <li class="treeview">
          <a href="/project/${project.project_id }/history">
            <i class="fa fa-history"></i>
            <span>활동 </span>
            <span class="pull-right-container">
<!--               <i class="fa fa-angle-left pull-right"></i> -->
            </span>
          </a>
        </li>
      
<!--         <li class="header">LABELS</li> -->
<!--         <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li> -->
<!--         <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li> -->
<!--         <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li> -->
      </ul>
    </section>