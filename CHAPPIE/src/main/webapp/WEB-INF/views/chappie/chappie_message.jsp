<%@page import="kr.co.syteam.commons.URIs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    
      <!-- 채피 버튼 관련 -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- 채피설정 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:400,300" type="text/css"> 
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans" type="text/css">
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;lang=en" />






<script type="text/javascript">
		var accessToken = "164f9b791200484dbb585026512392a4";
		var baseUrl = "https://api.api.ai/v1/";
		
		$(document).ready(function() {
			$("#input").keypress(function(event) {
				if (event.which == 13) {
					event.preventDefault();
					send();
				}
			});			
		});
		
		function send() {
			var text = $("#input").val();
			if(text==""){
				return;
			}
			

			$.ajax({
				type: "POST",
				url: baseUrl + "query?v=20150910",
				contentType: "application/json; charset=utf-8",
				dataType: "json",
				headers: {
					"Authorization": "Bearer " + accessToken
				},
				data: JSON.stringify({ query: text, lang: "ko", sessionId: "somerandomthing" }),
				success: function(data) {
					response(data);
				},
				error: function() {
					setResponse("Error");
				}
			});			
		}
		
		function response(data){
			console.log(JSON.stringify(data, undefined, 2));
			var temp = "";
			var temp2 = "";
				if(typeof data.result.fulfillment.messages[0].imageUrl !="undefined"){
					temp = data.result.fulfillment.messages[0].imageUrl;
					temp2 = data.result.fulfillment.speech;
					setResponseImg(temp,temp2);
				}else{
					temp = data.result.fulfillment.speech;	
					setResponse(temp);
				}
			console.log("temp:"+temp);
			
			$(document).ready(function(){
				
			});
		}
		

		function setResponse(val) {
			$("#response").append("<li class=\"right clearfix\"><span class=\"chat-img pull-right\" ><img src=\"/resources/img/chappie_button_chat2.png\" alt=\"User Avatar\" class=\"img-circle\" style=\"width:50px;height:50px\" /></span><div class=\"chat-body clearfix\"><p align=\"right\">"+$('#input').val()+"</p></div></li>");
			$("#response").append("<li class=\"left clearfix\"><span class=\"chat-img pull-left\" ><img src=\"/resources/img/chappie_button_chat.png\" alt=\"User Avatar\" class=\"img-circle\" style=\"width:50px;height:50px\" /></span><div class=\"chat-body clearfix\"><p>"+val+"</p></div></li>");
			document.getElementById('input').value = "";
			$("#responseScroll").scrollTop($("#responseScroll")[0].scrollHeight);
		}
		

		function setResponseImg(val, data) {
			$("#response").append("<li class=\"right clearfix\"><span class=\"chat-img pull-right\" ><img src=\"/resources/img/chappie_button_chat2.png\" alt=\"User Avatar\" class=\"img-circle\" style=\"width:50px;height:50px\" /></span><div class=\"chat-body clearfix\"><p align=\"right\">"+$('#input').val()+"</p></div></li>");
			$("#response").append("<li class=\"left clearfix\"><span class=\"chat-img pull-left\" ><img src=\"/resources/img/chappie_button_chat.png\" alt=\"User Avatar\" class=\"img-circle\" style=\"width:50px;height:50px\" /></span><img src=\""+val+"\" style=\"cursor: pointer;\" onclick=\"doImgPop('"+val+"')\" \"></img><div class=\"chat-body clearfix\"><p>"+data+"</p></div></li>");
			document.getElementById('input').value = "";
			$("#responseScroll").scrollTop($("#responseScroll")[0].scrollHeight);
		}
		
		function doImgPop(img){ 
			 img1= new Image(); 
			 img1.src=(img); 
			 imgControll(img); 
			} 
			  
			function imgControll(img){ 
			 if((img1.width!=0)&&(img1.height!=0)){ 
			    viewImage(img); 
			  } 
			  else{ 
			     controller="imgControll('"+img+"')"; 
			     intervalID=setTimeout(controller,20); 
			  } 
			}
			function viewImage(img){ 
			 W=img1.width; 
			 H=img1.height; 
			 O="width="+W+",height="+H+",scrollbars=yes"; 
			 imgWin=window.open("","",O); 
			 imgWin.document.write("<html><head><title>:*:*:*: 이미지상세보기 :*:*:*:*:*:*:</title></head>");
			 imgWin.document.write("<body topmargin=0 leftmargin=0>");
			 imgWin.document.write("<img src="+img+" onclick='self.close()' style='cursor:pointer;' title ='클릭하시면 창이 닫힙니다.'>");
			 imgWin.document.close();
			}
	</script>
	
	<style>
	@import url("http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css");
	.chat
	{
	    list-style: none;
	    margin-bottom: 20px;
	    padding: 0;
	}

	.chat li
	{
	    margin-bottom: 5px;
	    padding-bottom: 5px;
	    border-bottom: 1px dotted #B3A9A9;
	}

	.chat li.left .chat-body
	{
	    margin-left: 60px;
	}

	.chat li.right .chat-body
	{
	    margin-right: 60px;
	}


	.chat li .chat-body p
	{
	    margin: 0 auto;
	    color: #777777;
	}

	.panel .slidedown .glyphicon, .chat .glyphicon
	{
	    margin-right: 5px;
	}

	.body-panel
	{
 		overflow: scroll;
		height: 480px;
	    background-color : #F5F5F5;
	}

	
	.popup-box .input_id
	{
		width: 380px;
		height: 40px;
		margin-left : 10px;
		margin-bottom : 5px;
		margin-top:5px;
	}


	::-webkit-scrollbar-track
	{
	    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3);
	    background-color: #F5F5F5;
	}

	::-webkit-scrollbar
	{
	    width: 12px;
	    background-color: #F5F5F5;
	}

	::-webkit-scrollbar-thumb
	{
	    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,.3);
	    background-color: #555;
	}
	
	</style>




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
/* 	background: #00abd9 none repeat scroll 0 0; */
	
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
/* 	background: #00abd9 none repeat scroll 0 0; */
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
/* 	background: #dfece7 none repeat scroll 0 0; */
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
/* 	background: transparent none repeat scroll 0 0 !important; */
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
/* 	background: #fff none repeat scroll 0 0; */
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
/* 	background: #dfece7 none repeat scroll 0 0; */
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

.popup-messages-footer {

    background: #fff none repeat scroll 0 0;
    bottom: 10px;
    position: absolute;
    width: 100%;
    height: 100px;

}
.popup-messages-footer .btn-footer {
	
    padding: 2px 5px 10px 6px;
    width: 100%;
}
</style>

	<!--  채피 아이콘 -->

	<div style="position: fixed; bottom: 5px; right: 5px; margin-right: 60px">
		<a id="addClass"><img src="/resources/img/chappie_button.png"></a>
	</div>

	<!-- 채피 채팅창 -->
<body>
		<div class="popup-box chat-popup" id="qnimate">
		<div class="popup-head" style="border: 1px solid #b0b0b0;">
			<div class="popup-head-left pull-left">
				<img src="/resources/img/chappie_button_chat.png" alt="iamgurdeeposahan">
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
<!-- 			<iframe width="400" height="530" -->
<!-- 				src="https://console.api.ai/api-client/demo/embedded/62665667-db9e-446c-844c-087d4e7098c4"> -->
<!-- 			</iframe> -->
			
			
			   <div class="panel-body body-panel"  id="responseScroll" style="overflow: auto;">
			  		
                    <ul class="chat" id="response">
                    </ul>
<!--                <input id="input" type="text" class="input_id">		  -->
<!--          		   <button class="btn btn-warning btn-lg btn-block" onclick="send()" id="btn-chat">Send</button> -->
           	   <span class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-xs-12" style="margin-top: 10px">
           	   </span>
               
                </div>
   </div>
		<div class="popup-messages-footer">
			<input id="input" type="text" class="input_id">	
<!-- 			<textarea id="status_message" placeholder="Type a message..." rows="10" cols="40" name="message"></textarea> -->
			<div class="btn-footer">
			<button class="btn btn-warning btn-lg btn-block" onclick="send()" id="btn-chat">Send</button>
<!-- 			<button class="bg_none"><i class="glyphicon glyphicon-film"></i> </button> -->
<!-- 			<button class="bg_none"><i class="glyphicon glyphicon-camera"></i> </button> -->
<!--             <button class="bg_none"><i class="glyphicon glyphicon-paperclip"></i> </button> -->
<!-- 			<button class="bg_none pull-right"><i class="glyphicon glyphicon-thumbs-up"></i> </button> -->
			</div>
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
	
</body>	
</html>	