<%@page import="kr.co.syteam.commons.URIs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <!-- 채피 버튼 관련 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- 채피설정 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:400,300" type="text/css"> 
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans" type="text/css">
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;lang=en" />

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
	height: 600px;
	position: fixed;
	right: 70px;
	width: 400px;
	font-family: 'Open Sans', sans-serif;
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


/*채팅방이랑 연결하는 바*/
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

width : 400;
height: 600;
	
}

.popup-head-left img {
	border: 1px solid #ffffff;
	border-radius: 50%;
	width: 44px;
	margin-right: 10px
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
	height: auto;
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

}

.popup-messages .direct-chat-name {
	font-size: 15px;
	font-weight: 600;
	margin: 0 0 0 49px !important;
	color: #fff;

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
	
}
</style>

	<!--  채피 아이콘 -->

	<div style="position: fixed; bottom: 5px; right: 5px; margin-right: 50px">
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
			<iframe width="400" height="530"
				src="https://console.api.ai/api-client/demo/embedded/62665667-db9e-446c-844c-087d4e7098c4">
			</iframe>
		</div>
	</div>
	

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
	
	