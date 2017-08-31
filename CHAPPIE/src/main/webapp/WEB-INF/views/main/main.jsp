<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<head>
<title>CHAPPIE</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="/resources/css/stylish-portfolio.css">

<!-- Custom Fonts -->
<link rel="stylesheet" href="/font-awesome/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
	type="text/css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<style>
@
keyframes slidy { 0% {
	left: 0%;
}

20%
{
left
:
 
0%;
}
25%
{
left
:
 
-100%;
}
45%
{
left
:
 
-100%;
}
50%
{
left
:
 
-200%;
}
70%
{
left
:
 
-200%;
}
75%
{
left
:
 
-300%;
}
95%
{
left
:
 
-300%;
}
100%
{
left
:
 
-400%;
}
}
body {
	margin: 0;
}

div.slider {
	overflow: hidden;
}

div.slider figure img {
	width: 20%;
	float: left;
}

div.slider figure {
	position: relative;
	width: 500%;
	margin: 0;
	top: 0;
	left: 0;
	text-align: left;
	font-size: 0;
	-webkit-animation: 20s slidy ease-in-out infinite;
	animation: 20s slidy ease-in-out infinite;
}
</style>
</head>
<body id="page-top" class="index">

	<!-- Navigation -->
	<nav id="mainNav"
		class="navbar navbar-default navbar-custom navbar-fixed-top">
		<jsp:include page="${PAGEs.VIEW_NAV_MAIN}" flush="false" />
		<%--     	<jsp:include page ="/nav/navMain.jsp" flush="false" /> --%>
		<!--         /.container-fluid -->
	</nav>

	<!-- Header -->





	<header id="top" class="header">
		<div class="text-vertical-center">

			<h1>Hello, CHAPPIE</h1>
			<h3>Collaboration Management Web Application</h3>
			<br> <br> <br> <br>
			<c:choose>
				<c:when test="${empty login }">
					<a href="/userLoginForm" class="btn btn-dark btn-lg">Get
						Started</a>
				</c:when>
				<c:otherwise>
					<a href="/projectList" class="btn btn-dark btn-lg">Get Started</a>
				</c:otherwise>
			</c:choose>
			<!--             <br> -->
			<!--             <a href="/projectCreateForm" class="btn btn-dark btn-lg">프로젝트</a> -->
			<!--             <br> -->
			<!--             <a href="/projectList" class="btn btn-dark btn-lg">프로젝트 리스트</a> -->
			<!--             <br> -->
			<!--             <a href="/todo/todoList" class="btn btn-dark btn-lg">todoList</a> -->
			<!--             <br> -->
		</div>
	</header>
	<!-- About -->
	<section id="about" class="about">
      <!-- 채피 인크루드 -->

      <div class="container">
         <div class="row">
            <div class="col-lg-12 text-center">
               <h1>CHAPPIE 소개</h1>
               <br>
               <p class="lead" FONT face="Arial Black">비트교육센터 출신의 학생들이 구현한
                  협업프로그램의 똑똑한 귀요미 "CHAPPIE"</p>
               <%--                <jsp:include page ="${PAGEs.VIEW_MAIN_INTRODUCE}" flush="false" /> --%>

               <div class="slider">
                  <figure>
                     <img src="/resources/img/chappie_intro.png" alt="">
                     <img src="/resources/img/introduce2-9.png" alt="">
                     <img src="/resources/img/chappie_intro.png" alt="">
                     <img src="/resources/img/introduce2-9.png" alt="">
                     <img src="/resources/img/chappie_intro.png" alt="">
                  </figure>
               </div>
            </div>
         </div>
      </div>
      <br> <br> <br />

<br><br><br><br>
      <section id="services" class="services bg-primary">
         <div class="container">
            <div class="row text-center">
               <div class="col-lg-10 col-lg-offset-1">
                  <h2>Our Services</h2>
                  <!--                     <hr class="small"> -->
                  <div class="row">


                     <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                           <span class="fa-stack fa-4x"> <i
                              class="fa fa-circle fa-stack-2x"></i> <i
                              class="fa fa-cloud fa-stack-1x text-primary"></i>
                           </span>
                           <h4>
                              <strong>Timeline</strong>
                           </h4>
                           <!--                         <p>멤버들간의 일상을 소통할 수 있습니다.</p> -->
                           <a href="#timeline" class="btn btn-light">Learn More</a>
                        </div>
                     </div>
                     <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                           <span class="fa-stack fa-4x"> <i
                              class="fa fa-circle fa-stack-2x"></i> <i
                              class="fa fa-compass fa-stack-1x text-primary"></i>
                           </span>
                           <h4>
                              <strong>To do list</strong>
                           </h4>
                           <!--                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p> -->
                           <a href="#todolist" class="btn btn-light">Learn More</a>
                        </div>
                     </div>
                     <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                           <span class="fa-stack fa-4x"> <i
                              class="fa fa-circle fa-stack-2x"></i> <i
                              class="fa fa-flask fa-stack-1x text-primary"></i>
                           </span>
                           <h4>
                              <strong>Chart</strong>
                           </h4>
                           <!--                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p> -->
                           <a href="#todolist" class="btn btn-light">Learn More</a>
                        </div>
                     </div>
                     <div class="col-md-3 col-sm-6">
                        <div class="service-item">
                           <span class="fa-stack fa-4x"> <i
                              class="fa fa-circle fa-stack-2x"></i> <i
                              class="fa fa-shield fa-stack-1x text-primary"></i>
                           </span>
                           <h4>
                              <strong>History</strong>
                           </h4>
                           <!--                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p> -->
                           <a href="#history" class="btn btn-light">Learn More</a>
                        </div>
                     </div>
                  </div>
                  <!-- /.row (nested) -->
               </div>
               <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
         </div>
         <!-- /.container -->
      </section>


      <br> <br>
      <div class="container">
         <div class="row">
            <div class="col-lg-12 text-center">
               <div id="timeline" class="timeline">
               <br><br><br>
                  <h2>이슈를 함께 해결하기 위한 커뮤니케이션</h2>
                  <br>
                  <h4>
                     회사 내의 facebook! <br> 회사 내의 일상을 timeline에 담아보세요!
                  </h4>
                  <div class="slider">

                     <img src="/resources/img/introduce4.png" alt=""
                        style="width: 100%;">
                     <!-- <img src="/resources/img/introduce2-9.png" alt=""> -->
                     <!-- <img src="/resources/img/chappie_intro.png" alt=""> -->
                     <!-- <img src="/resources/img/introduce2-9.png" alt=""> -->
                     <!-- <img src="/resources/img/chappie_intro.png" alt=""> -->
                     <br>
                     <br>
                  </div>
               </div>

               <div id="todolist" class="todolist">
                  <br><br><br>
                  <h2>한눈에 보기 쉬운 차트</h2>
                  <br>
                  <h4>
                     포스트 잇은 이제 그만! <br> 완료여부에 대한 한눈에 보기 좋은 차트까지 <br> 해야할 일에
                     대한 메모는 물론, 담당자 선택, 중요도 체크까지 가능합니다.
                  </h4>
                  <div class="slider">
                     <img src="/resources/img/introduce4_1.png" alt=""
                        style="width: 100%;">
                     <!-- <figure> -->
                     <!-- <img src="/resources/img/introduce_todolist.png" alt=""> -->
                     <!-- <img src="/resources/img/introduce_chart.png" alt=""> -->
                     <!-- <img src="/resources/img/chappie_intro.png" alt=""> -->
                     <!-- <img src="/resources/img/introduce2-9.png" alt=""> -->
                     <!-- <img src="/resources/img/chappie_intro.png" alt=""> -->
                     <!-- </figure> -->
                  </div>
               </div>


               <br>
               <div id="history" class="history">
                  <br><br><br>
                  <h2>히스토리</h2>
                  <br>
                  <h4>
                     협업의 기본! <br> 팀원들의 활동내역을 한눈에 볼 수 있습니다. <br>
                  </h4>
                  <div class="slider">
                     <img src="/resources/img/introduce4_2.png" alt=""
                        style="width: 100%;">
                     <!-- <figure> -->
                     <!-- <img src="/resources/img/introduce_todolist.png" alt=""> -->
                     <!-- <img src="/resources/img/introduce_chart.png" alt=""> -->
                     <!-- <img src="/resources/img/chappie_intro.png" alt=""> -->
                     <!-- <img src="/resources/img/introduce2-9.png" alt=""> -->
                     <!-- <img src="/resources/img/chappie_intro.png" alt=""> -->
                     <!-- </figure> -->
                  </div>
               </div>
               <br />
               <!--                <iframe width="350" height="430"
<!--                   src="https://console.api.ai/api-client/demo/embedded/62665667-db9e-446c-844c-087d4e7098c4"> 
<!--                </iframe> -->

            </div>
         </div>
         <!-- /.row -->
      </div>
      <!-- /.container -->
   </section>

	<!-- Services -->
	<!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
	<!-- 	<div id="about"> -->
	<%-- 	<jsp:include page ="${PAGEs.VIEW_MAIN_INTRODUCE}" flush="false" /> --%>
	<!-- 	</div> -->



	<!-- Call to Action -->
	<aside class="call-to-action bg-primary">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<!--                     <h3>The buttons below are impossible to resist.</h3> -->
					<!--                     <a href="#" class="btn btn-lg btn-light">Click Me!</a> -->
					<!--                     <a href="#" class="btn btn-lg btn-dark">Look at Me!</a> -->
				</div>
			</div>
		</div>
	</aside>

	<!-- Footer -->
	<section id="contact">
		<footer id="contact">
			<div class="container">
				<div class="row">
					<div class="col-lg-10 col-lg-offset-1 text-center">
						<h1>팀원 소개</h1>
						<br> <br> <br>
						<div class="box box-primary col-md-3">
							<div class="box-body box-profile">
								<img class="profile-user-img img-responsive img-circle"
									src="/resources/img/hch.jpg" alt="User profile picture">

								<h3 class="profile-username text-center">
									<b>팀장</b>&nbsp;한청화
								</h3>

								<p class="text-muted text-center">웹앱 &amp; 챗봇 개발</p>



								<button type="button" class="btn btn-primary btn-block">
									<b>buzzbylove@gmail.com</b>
								</button>
							</div>
							<!-- /.box-body -->
						</div>
						<div class="box box-primary col-md-3">
							<div class="box-body box-profile">
								<img class="profile-user-img img-responsive img-circle"
									src="/resources/img/profile-1.jpg" alt="User profile picture">

								<h3 class="profile-username text-center">
									<b>팀원</b>&nbsp;이용현
								</h3>

								<p class="text-muted text-center">웹앱 개발</p>



								<button type="button" class="btn btn-primary btn-block">
									<b>blues0d4@gmail.com</b>
								</button>
							</div>
							<!-- /.box-body -->
						</div>
						<div class="box box-primary col-md-3">
							<div class="box-body box-profile">
								<img class="profile-user-img img-responsive img-circle"
									src="/resources/img/kyh.jpg" alt="User profile picture">

								<h3 class="profile-username text-center">
									<b>팀원</b>&nbsp;김용현
								</h3>

								<p class="text-muted text-center">웹앱 &amp; 챗봇 개발</p>



								<button type="button" class="btn btn-primary btn-block">
									<b>jin98003@gmail.com</b>
								</button>
							</div>
							<!-- /.box-body -->
						</div>
						  <div class="box box-primary col-md-3">
                     <div class="box-body box-profile">
                        <img class="profile-user-img img-responsive img-circle"
                           src="/resources/img/jyc.jpg" alt="User profile picture">

                        <h3 class="profile-username text-center">
                           <b>팀원</b>&nbsp;장예찬
                        </h3>

                        <p class="text-muted text-center">웹앱 &amp; 디자인</p>



                        <button type="button" class="btn btn-primary btn-block">
                           <b>yc319@naver.com</b>
                        </button>
                     </div>
                     <!-- /.box-body -->
                  </div>
					</div>
				</div>
			</div>
		</footer>
	</section>

	<!-- 채피 인크루드 -->
	<jsp:include page="${PAGEs.VIEW_CHAPPIE_INTRO}" flush="false" />



	<a id="to-top" href="#top" class="btn btn-dark btn-lg"> <i
		class="fa fa-chevron-up fa-fw fa-1x"></i></a>
	<!-- jQuery -->
	<script src="/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="/js/bootstrap.min.js"></script>


	<!-- Custom Theme JavaScript -->
	<script>
		// Closes the sidebar menu
		$("#menu-close").click(function(e) {
			e.preventDefault();
			$("#sidebar-wrapper").toggleClass("active");
		});
		// Opens the sidebar menu
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#sidebar-wrapper").toggleClass("active");
		});
		// Scrolls to the selected menu item on the page
		$(function() {
			$(
					'a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])')
					.click(
							function() {
								if (location.pathname.replace(/^\//, '') == this.pathname
										.replace(/^\//, '')
										|| location.hostname == this.hostname) {
									var target = $(this.hash);
									target = target.length ? target
											: $('[name=' + this.hash.slice(1)
													+ ']');
									if (target.length) {
										$('html,body').animate({
											scrollTop : target.offset().top
										}, 1000);
										return false;
									}
								}
							});
		});
		//#to-top button appears after scrolling
		var fixed = false;
		$(document).scroll(function() {
			if ($(this).scrollTop() > 250) {
				if (!fixed) {
					fixed = true;
					// $('#to-top').css({position:'fixed', display:'block'});
					$('#to-top').show("slow", function() {
						$('#to-top').css({
							position : 'fixed',
							display : 'block'
						});
					});
				}
			} else {
				if (fixed) {
					fixed = false;
					$('#to-top').hide("slow", function() {
						$('#to-top').css({
							display : 'none'
						});
					});
				}
			}
		});
		// Disable Google Maps scrolling
		// See http://stackoverflow.com/a/25904582/1607849
		// Disable scroll zooming and bind back the click event
		var onMapMouseleaveHandler = function(event) {
			var that = $(this);
			that.on('click', onMapClickHandler);
			that.off('mouseleave', onMapMouseleaveHandler);
			that.find('iframe').css("pointer-events", "none");
		}
		var onMapClickHandler = function(event) {
			var that = $(this);
			// Disable the click handler until the user leaves the map area
			that.off('click', onMapClickHandler);
			// Enable scrolling zoom
			that.find('iframe').css("pointer-events", "auto");
			// Handle the mouse leave event
			that.on('mouseleave', onMapMouseleaveHandler);
		}
		// Enable map zooming with mouse scroll when the user clicks the map
		$('.map').on('click', onMapClickHandler);
	</script>





</body>
</html>
