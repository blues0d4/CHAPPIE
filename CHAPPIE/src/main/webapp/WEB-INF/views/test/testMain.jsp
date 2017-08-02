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
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">/

<!-- Bootstrap Core CSS -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/resources/css/stylish-portfolio.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:400,300" type="text/css"> 
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans" type="text/css">
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;lang=en" />

</head>


<!-- 채피 채팅내용창 -->
<style>
body {
	font-family: 'Open Sans', sans-serif;
}

.popup-box {
	background-color: #ffffff;
	border: 1px solid #b0b0b0;
	bottom: 0;
	display: none;
	height: 415px;
	position: fixed;
	right: 70px;
	width: 300px;
	font-family: 'Open Sans', sans-serif;
}

.round.hollow {
	margin: 40px 0 0;
}

.round.hollow a {
	border: 2px solid #ff6701;
	border-radius: 35px;
	color: red;
	color: #ff6701;
	font-size: 23px;
	padding: 10px 21px;
	text-decoration: none;
	font-family: 'Open Sans', sans-serif;
}

.round.hollow a:hover {
	border: 2px solid #000;
	border-radius: 35px;
	color: red;
	color: #000;
	font-size: 23px;
	padding: 10px 21px;
	text-decoration: none;
}

.popup-box-on {
	display: block !important;
}

.popup-box .popup-head {
	background-color: #fff;
	clear: both;
	color: #7b7b7b;
	display: inline-table;
	font-size: 21px;
	padding: 7px 10px;
	width: 100%;
	font-family: Oswald;
}

.bg_none i {
	border: 1px solid #ff6701;
	border-radius: 25px;
	color: #ff6701;
	font-size: 17px;
	height: 33px;
	line-height: 30px;
	width: 33px;
}

.bg_none:hover i {
	border: 1px solid #000;
	border-radius: 25px;
	color: #000;
	font-size: 17px;
	height: 33px;
	line-height: 30px;
	width: 33px;
}

.bg_none {
	background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
	border: medium none;
}

.popup-box .popup-head .popup-head-right {
	margin: 11px 7px 0;
}

.popup-box .popup-messages {

width : 300;
height: 430;
	
}

.popup-head-left img {
	border: 1px solid #ffffff;
	border-radius: 50%;
	width: 44px;
	margin-right: 10px
}

.popup-messages-footer>textarea {
	border-bottom: 1px solid #b2b2b2 !important;
	margin: 7px;
	padding: 5px !important;
	border: medium none;
	width: 95% !important;
}

.popup-messages-footer {
	background: #fff none repeat scroll 0 0;
	bottom: 0;
	position: absolute;
	width: 100%;
}

.popup-messages-footer .btn-footer {
	overflow: hidden;
	padding: 2px 5px 10px 6px;
	width: 100%;
}

.simple_round {
	background: #d1d1d1 none repeat scroll 0 0;
	border-radius: 50%;
	color: #4b4b4b !important;
	height: 21px;
	padding: 0 0 0 1px;
	width: 21px;
}

.popup-box .popup-messages {
	background: #00abd9 none repeat scroll 0 0;
	height: 310px;
	overflow: auto;
}

.direct-chat-messages {
	overflow: auto;
	padding: 10px;
	transform: translate(0px, 0px);
}

.popup-messages .chat-box-single-line {
	border-bottom: 1px solid #a4c6b5;
	height: 12px;
	margin: 7px 0 20px;
	position: relative;
	text-align: center;
}

.popup-messages abbr.timestamp {
	background: #00abd9 none repeat scroll 0 0;
	color: #fff;
	padding: 0 11px;
}

.popup-head-right .btn-group {
	display: inline-flex;
	margin: 0 8px 0 0;
	vertical-align: top !important;
}

.chat-header-button {
	background: transparent none repeat scroll 0 0;
	border: 1px solid #ffffff;
	border-radius: 50%;
	font-size: 14px;
	height: 30px;
	width: 30px;
}

.popup-head-right .btn-group .dropdown-menu {
	border: medium none;
	min-width: 122px;
	padding: 0;
}

.popup-head-right .btn-group .dropdown-menu li a {
	font-size: 12px;
	padding: 3px 10px;
	color: #303030;
}

/* 	.popup-messages abbr.timestamp { */
/* 	    background: #00abd9  none repeat scroll 0 0; */
/* 	    color: #fff; */
/* 	    padding: 0 11px; */
/* 	} */
.popup-messages .chat-box-single-line {
	border-bottom: 1px solid #a4c6b5;
	height: 12px;
	margin: 7px 0 20px;
	position: relative;
	text-align: center;
}

.popup-messages .direct-chat-messages {
	height: auto;
}

.popup-messages .direct-chat-text {
	background: #dfece7 none repeat scroll 0 0;
	border: 1px solid #dfece7;
	border-radius: 2px;
	color: #1f2121;
}

.popup-messages .direct-chat-timestamp {
	color: #fff;
	opacity: 0.6;
}

.popup-messages .direct-chat-name {
	font-size: 15px;
	font-weight: 600;
	margin: 0 0 0 49px !important;
	color: #fff;
	opacity: 0.9;
}

.popup-messages .direct-chat-info {
	display: block;
	font-size: 12px;
	margin-bottom: 0;
}

.popup-messages  .big-round {
	margin: -9px 0 0 !important;
}

.popup-messages  .direct-chat-img {
	border: 1px solid #fff;
	background: #3f9684 none repeat scroll 0 0;
	border-radius: 50%;
	float: left;
	height: 40px;
	margin: -21px 0 0;
	width: 40px;
}

.direct-chat-reply-name {
	color: #fff;
	font-size: 15px;
	margin: 0 0 0 10px;
	opacity: 0.9;
}

.direct-chat-img-reply-small {
	border: 1px solid #fff;
	border-radius: 50%;
	float: left;
	height: 20px;
	margin: 0 8px;
	width: 20px;
	background: #3f9684;
}

.popup-messages .direct-chat-msg {
	margin-bottom: 10px;
	position: relative;
}

.popup-messages .doted-border::after {
	background: transparent none repeat scroll 0 0 !important;
	border-right: 2px dotted #fff !important;
	bottom: 0;
	content: "";
	left: 17px;
	margin: 0;
	position: absolute;
	top: 0;
	width: 2px;
	display: inline;
	z-index: -2;
}

.popup-messages .direct-chat-msg::after {
	background: #fff none repeat scroll 0 0;
	border-right: medium none;
	bottom: 0;
	content: "";
	left: 17px;
	margin: 0;
	position: absolute;
	top: 0;
	width: 2px;
	display: inline;
	z-index: -2;
}

.direct-chat-text::after, .direct-chat-text::before {
	border-color: transparent #dfece7 transparent transparent;
}

.direct-chat-text::after, .direct-chat-text::before {
	-moz-border-bottom-colors: none;
	-moz-border-left-colors: none;
	-moz-border-right-colors: none;
	-moz-border-top-colors: none;
	border-color: transparent #d2d6de transparent transparent;
	border-image: none;
	border-style: solid;
	border-width: medium;
	content: " ";
	height: 0;
	pointer-events: none;
	position: absolute;
	right: 100%;
	top: 15px;
	width: 0;
}

.direct-chat-text::after {
	border-width: 5px;
	margin-top: -5px;
}

.popup-messages .direct-chat-text {
	background: #dfece7 none repeat scroll 0 0;
	border: 1px solid #dfece7;
	border-radius: 2px;
	color: #1f2121;
}

.direct-chat-text {
	background: #d2d6de none repeat scroll 0 0;
	border: 1px solid #d2d6de;
	border-radius: 5px;
	color: #444;
	margin: 5px 0 0 50px;
	padding: 5px 10px;
	position: relative;
}
</style>

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
			test3
			<h1>Hello, CHAPPIE</h1>
			<h3>Collaboration Management Web &amp; App Hybrid Application</h3>
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


	<!--  채피 아이콘 -->

	<div style="position: fixed; bottom: 5px; right: 5px;">
		<a id="addClass"><img src="/resources/img/chappie_button.png"></a>
	</div>


	<!-- 채피 채팅창 -->

	<div class="popup-box chat-popup" id="qnimate">
		<div class="popup-head">
			<div class="popup-head-left pull-left">
				<img src="/resources/img/chappie_button.png" alt="iamgurdeeposahan">
				CHAPPIE
			</div>
			<div class="popup-head-right pull-right">
				<div class="btn-group">
					<button class="chat-header-button" data-toggle="dropdown"
						type="button" aria-expanded="false">
						<i class="glyphicon glyphicon-cog"></i>
					</button>
					<ul role="menu" class="dropdown-menu pull-right">
						<li><a href="#">Media</a></li>
						<li><a href="#">Block</a></li>
						<li><a href="#">Clear Chat</a></li>
						<li><a href="#">Email Chat</a></li>
					</ul>
				</div>

				<button data-widget="remove" id="removeClass"
					class="chat-header-button pull-right" type="button">
					<i class="glyphicon glyphicon-remove-circle"></i>
				</button>
			</div>
		</div>
		<div class="popup-messages">
			<iframe width="300" height="430"
				src="https://console.api.ai/api-client/demo/embedded/62665667-db9e-446c-844c-087d4e7098c4">
			</iframe>
		</div>
	</div>








	<!-- About -->
	<section id="about" class="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h1>CHAPPIE 소개</h1>
					<br>
					<p class="lead" FONT face="Arial Black">비트교육센터 출신의 학생들이 구현한
						협업프로그램의 똑똑한 귀요미 "CHAPPIE"</p>
					<br> <br> <br />
					<h2>"how is the weather in 서울"</h2>
					<br />
					<iframe width="350" height="430"
						src="https://console.api.ai/api-client/demo/embedded/342ef27c-7045-4ff8-b508-7273390d50ec">
					</iframe>

				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>

	<!-- Services -->
	<!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
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
									<strong>Service Name</strong>
								</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
								<a href="#" class="btn btn-light">Learn More</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="service-item">
								<span class="fa-stack fa-4x"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-compass fa-stack-1x text-primary"></i>
								</span>
								<h4>
									<strong>Service Name</strong>
								</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
								<a href="#" class="btn btn-light">Learn More</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="service-item">
								<span class="fa-stack fa-4x"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-flask fa-stack-1x text-primary"></i>
								</span>
								<h4>
									<strong>Service Name</strong>
								</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
								<a href="#" class="btn btn-light">Learn More</a>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="service-item">
								<span class="fa-stack fa-4x"> <i
									class="fa fa-circle fa-stack-2x"></i> <i
									class="fa fa-shield fa-stack-1x text-primary"></i>
								</span>
								<h4>
									<strong>Service Name</strong>
								</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
								<a href="#" class="btn btn-light">Learn More</a>
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

								<p class="text-muted text-center">웹앱 개발 &amp; 디자인</p>



								<button type="button" class="btn btn-primary btn-block">
									<b>yc319@naver.com</b>
								</button>
							</div>
							<!-- /.box-body -->
						</div>
						<!--                       <div class="w3-container w3-quarter padding-5"> -->
						<!--                         <span>한청화</span><br><br> -->

						<!--                         <img src="/resources/img/hch.jpg" alt="Avatar" style="width:70%"><br> -->
						<!--                         <ul style="list-style-type:none; float: right"> -->
						<!--                         <br> -->
						<!--                         <li> 팀장 & 챗봇 개발자 </li> -->
						<!--                         <li> buzzbylove@gmail.com </li> -->
						<!--                         </ul> -->
						<!--                       </div> -->
						<!--                     </div> -->

						<!--                     <div class="w3-card-2 w3-round w3-white w3-center"> -->
						<!--                       <div class="w3-container w3-quarter padding-5"> -->
						<!--                         <span>이용현</span><br><br> -->
						<!--                         <img src="/resources/img/profile-1.jpg" alt="Avatar" style="width:70%"><br> -->

						<!--                         <ul style="list-style-type:none; float: right"> -->
						<!--                         <br> -->
						<!--                         <li> 백엔드개발자 </li> -->
						<!--                         <li> blues0d4@gmail.com </li> -->
						<!--                         </ul> -->
						<!--                       </div> -->
						<!--                     </div> -->

						<!--                     <div class="w3-card-2 w3-round w3-white w3-center"> -->
						<!--                       <div class="w3-container w3-quarter padding-5"> -->
						<!--                         <span>김용현</span><br><br> -->
						<!--                         <img src="/resources/img/kyh.jpg" alt="Avatar" style="width:70%"><br> -->

						<!--                         <ul style="list-style-type:none; float: right"> -->
						<!--                         <br> -->
						<!--                         <li> 챗봇 개발자 </li> -->
						<!--                         <li> jin98003@gmail.com </li> -->
						<!--                         </ul> -->
						<!--                       </div> -->
						<!--                     </div> -->


						<!--                     <div class="w3-card-2 w3-round w3-white w3-center"> -->
						<!--                       <div class="w3-container w3-quarter padding-5"> -->
						<!--                         <span>장예찬</span><br><br> -->
						<!--                         <img src="/resources/img/jyc.jpg" alt="Avatar" style="width:70%"><br> -->

						<!--                         <ul style="list-style-type:none; float: right"> -->
						<!--                         <br> -->
						<!--                         <li> 프론트앤드개발&디자이너 </li> -->
						<!--                         <li> yc319@naver.com  </li> -->
						<!--                         </ul> -->
						<!--                       </div> -->
						<!--                     </div> -->

						<!--                     <h4><strong>Start Bootstrap</strong> -->
						<!--                     </h4> -->
						<!--                     <p>3481 Melrose Place -->
						<!--                         <br>Beverly Hills, CA 90210</p> -->
						<!--                     <ul class="list-unstyled"> -->
						<!--                         <li><i class="fa fa-phone fa-fw"></i> (123) 456-7890</li> -->
						<!--                         <li><i class="fa fa-envelope-o fa-fw"></i> <a href="mailto:name@example.com">name@example.com</a> -->
						<!--                         </li> -->
						<!--                     </ul> -->
						<!--                     <br> -->
						<!--                     <ul class="list-inline"> -->
						<!--                         <li> -->
						<!--                             <a href="#"><i class="fa fa-facebook fa-fw fa-3x"></i></a> -->
						<!--                         </li> -->
						<!--                         <li> -->
						<!--                             <a href="#"><i class="fa fa-twitter fa-fw fa-3x"></i></a> -->
						<!--                         </li> -->
						<!--                         <li> -->
						<!--                             <a href="#"><i class="fa fa-dribbble fa-fw fa-3x"></i></a> -->
						<!--                         </li> -->
						<!--                     </ul> -->
						<!--                     <hr class="small"> -->
						<!--                     <p class="text-muted">Copyright &copy; Your Website 2014</p> -->
					</div>
				</div>
			</div>
		</footer>
	</section>
	<a id="to-top" href="#top" class="btn btn-dark btn-lg"><i
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
	
<!-- 채피 스크립트 -->
	<script>
		$(function() {
			$("#addClass").click(function() {
				$('#qnimate').addClass('popup-box-on');
			});

			$("#removeClass").click(function() {
				$('#qnimate').removeClass('popup-box-on');
			});
		})
	</script>

</body>
</html>
