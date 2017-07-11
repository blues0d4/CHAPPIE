<%@page import="kr.co.syteam.commons.URIs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <section class="sidebar" >
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
<!-- 			<i class="glyphicon glyphicon-user pull-left"></i> -->
        </div>
        <div class="pull-left info">
          <p>${ login.user_name }</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <ul class="sidebar-menu">
       <li class="header">PROJECTS</li>
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
<!-- 					<li class="active"> -->
<%--          			<a href="/${projectVO.project_name}"><i class="fa fa-circle-o"></i> ${projectVO.project_name}</a> --%>
<!--           			</li> -->
          			</c:when>
          			<c:otherwise>
					<li>
         			<a href="/project/${projectVO.project_name}"><i class="fa fa-folder"></i> ${projectVO.project_name}</a>
          			</li>
          			
          			
          			</c:otherwise>
				</c:choose>
			</c:forEach>
          </ul>
       </li>
         <li class="treeview">
         <a href="#">
            <i class="glyphicon glyphicon-cog"></i> <span>Project Settings</span>
            
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
        <li class="header">MENU</li>
<!--         <li class="header"><br><br> </li> -->
<!--         <li class="treeview"> -->
        <li class="active treeview">
          <a href="#">
			<c:choose>
				<c:when test="${empty category}">
	         	   <i class="fa fa-slack"></i> <span>#CATEGORIES </span>
	            </c:when>
	            <c:otherwise>
           			<i class="fa fa-slack"></i> <span>#${category.category_name}</span>
	            </c:otherwise>
            </c:choose>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
<!--      	    <li class="active"> -->
			<c:forEach items="${categoryList}" var="boardVO">
	            <c:choose>
				<c:when test="${boardVO.category_name eq category.category_name}">
				<li class="active">
				<a href="/project/${project.project_name}/board/${boardVO.category_name}"><i class="fa fa-slack"></i> #${boardVO.category_name}</a>
           		 </li>
				</c:when>
				<c:otherwise> 
				<li>
	            <a href="/project/${project.project_name}/board/${boardVO.category_name}"><i class="fa fa-slack"></i> #${boardVO.category_name}</a>
	            </li>
				</c:otherwise>
			</c:choose>
			
			</c:forEach>
				<li>
<!-- 				<a href="#"><i class="fa fa-circle-o"></i>+ Add Categories</a> -->
				<a href="/project/${project.project_name}/categoryCreateForm"><i class="glyphicon glyphicon-plus"></i>Add Categories</a>
				</li>
          </ul>
        </li>        
        
        <li class="treeview">
          <a href="#">
	        <i class="fa fa-check-square-o"></i><span>To-Do List</span>
            	<span class="pull-right-container">
             	 <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
<!--      	    <li class="active"> -->
			<c:forEach items="${categoryList}" var="boardVO">
					<li>
		            <a href="/project/${project.project_name}/todo/${boardVO.category_name}"><i class="fa fa-square-o"></i> #${boardVO.category_name}</a>
		            </li>
			</c:forEach>
				<li>
<!-- 				<a href="#"><i class="fa fa-circle-o"></i>+ Add Categories</a> -->
					<a href="/project/${project.project_name}/categoryCreateForm"><i class="glyphicon glyphicon-plus"></i>Add Categories</a>
				</li>
          </ul>
        </li>
       
       
        
<!--         <li> -->
<!--           <a href="#"> -->
<!--             <i class="fa fa-th"></i> <span>Widgets</span> -->
<!--             <span class="pull-right-container"> -->
<!--               <small class="label pull-right bg-green">new</small> -->
<!--             </span> -->
<!--           </a> -->
<!--         </li> -->
        <li class="treeview">
          <a href="/chart/progress">
            <i class="fa fa-pie-chart"></i>
            <span>Charts</span> 
            <span class="pull-right-container">
<!--               <i class="fa fa-angle-left pull-right"></i> -->
            </span>
          </a>
<!--           <ul class="treeview-menu"> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> ChartJS</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Morris</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Flot</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Inline charts</a></li> -->
<!--           </ul> -->
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-history"></i>
            <span>History </span>
            <span class="pull-right-container">
<!--               <i class="fa fa-angle-left pull-right"></i> -->
            </span>
          </a>
<!--           <ul class="treeview-menu"> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> General</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Icons</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Buttons</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Sliders</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Timeline</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Modals</a></li> -->
<!--           </ul> -->
        </li>
<!--         <li class="treeview"> -->
<!--           <a href="#"> -->
<!--             <i class="fa fa-edit"></i> <span>Forms</span> -->
<!--             <span class="pull-right-container"> -->
<!--               <i class="fa fa-angle-left pull-right"></i> -->
<!--             </span> -->
<!--           </a> -->
<!--           <ul class="treeview-menu"> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> General Elements</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Advanced Elements</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Editors</a></li> -->
<!--           </ul> -->
<!--         </li> -->
<!--         <li class="treeview"> -->
<!--           <a href="#"> -->
<!--             <i class="fa fa-table"></i> <span>Tables</span> -->
<!--             <span class="pull-right-container"> -->
<!--               <i class="fa fa-angle-left pull-right"></i> -->
<!--             </span> -->
<!--           </a> -->
<!--           <ul class="treeview-menu"> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Simple tables</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Data tables</a></li> -->
<!--           </ul> -->
<!--         </li> -->
<!--         <li> -->
<!--           <a href="#"> -->
<!--             <i class="fa fa-calendar"></i> <span>Calendar</span> -->
<!--             <span class="pull-right-container"> -->
<!--               <small class="label pull-right bg-red">3</small> -->
<!--               <small class="label pull-right bg-blue">17</small> -->
<!--             </span> -->
<!--           </a> -->
<!--         </li> -->
<!--         <li> -->
<!--           <a href="#"> -->
<!--             <i class="fa fa-envelope"></i> <span>Mailbox</span> -->
<!--             <span class="pull-right-container"> -->
<!--               <small class="label pull-right bg-yellow">12</small> -->
<!--               <small class="label pull-right bg-green">16</small> -->
<!--               <small class="label pull-right bg-red">5</small> -->
<!--             </span> -->
<!--           </a> -->
<!--         </li> -->
<!--         <li class="treeview"> -->
<!--           <a href="#"> -->
<!--             <i class="fa fa-folder"></i> <span>Examples</span> -->
<!--             <span class="pull-right-container"> -->
<!--               <i class="fa fa-angle-left pull-right"></i> -->
<!--             </span> -->
<!--           </a> -->
<!--           <ul class="treeview-menu"> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Invoice</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Profile</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Login</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Register</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Lockscreen</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> 404 Error</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> 500 Error</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Blank Page</a></li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Pace Page</a></li> -->
<!--           </ul> -->
<!--         </li> -->
<!--         <li class="treeview"> -->
<!--           <a href="#"> -->
<!--             <i class="fa fa-share"></i> <span>Multilevel</span> -->
<!--             <span class="pull-right-container"> -->
<!--               <i class="fa fa-angle-left pull-right"></i> -->
<!--             </span> -->
<!--           </a> -->
<!--           <ul class="treeview-menu"> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li> -->
<!--             <li> -->
<!--               <a href="#"><i class="fa fa-circle-o"></i> Level One -->
<!--                 <span class="pull-right-container"> -->
<!--                   <i class="fa fa-angle-left pull-right"></i> -->
<!--                 </span> -->
<!--               </a> -->
<!--               <ul class="treeview-menu"> -->
<!--                 <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li> -->
<!--                 <li> -->
<!--                   <a href="#"><i class="fa fa-circle-o"></i> Level Two -->
<!--                     <span class="pull-right-container"> -->
<!--                       <i class="fa fa-angle-left pull-right"></i> -->
<!--                     </span> -->
<!--                   </a> -->
<!--                   <ul class="treeview-menu"> -->
<!--                     <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li> -->
<!--                     <li><a href="#"><i class="fa fa-circle-o"></i> Level  Three</a></li> -->
<!--                   </ul> -->
<!--                 </li> -->
<!--               </ul> -->
<!--             </li> -->
<!--             <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li> -->
<!--           </ul> -->
<!--         </li> -->
      
        <li class="header">LABELS</li>
        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Important</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Warning</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Information</span></a></li>
      </ul>
    </section>
