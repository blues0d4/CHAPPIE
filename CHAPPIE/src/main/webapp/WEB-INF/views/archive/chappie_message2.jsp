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
			var temp3 = "";
			
				if(typeof data.result.fulfillment.messages[0].imageUrl !="undefined"){
					temp = data.result.fulfillment.messages[0].imageUrl;
					temp2 = data.result.fulfillment.speech;
					setResponseImg(temp,temp2);
					var allData = { "user_say": data.result.resolvedQuery, 
							"bot_say": temp2, "bot_img": temp };
					$.ajax({
						type: "GET",
						url: "/chappie",
						data: allData,
						success: function(data) {
						},
						error: function() {
						}
					});	
				}else{
					temp3 = data.result.fulfillment.speech;	
					setResponse(temp3);
					var allData = { "user_say": data.result.resolvedQuery, 
							"bot_say": temp3 };
					$.ajax({
						type: "GET",
						url: "/chappie",
						data: allData,
						success: function(data) {
						},
						error: function() {
						}
					});	
				}
				
		}
		$(document).ready(function(){
			
		})

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
			 cw=screen.availWidth;     //화면 넓이
			 ch=screen.availHeight;    //화면 높이
			 ml=(cw-W)/2;        //가운데 띄우기위한 창의 x위치
			 mt=(ch-H)/2;         //가운데 띄우기위한 창의 y위치
			 O="width="+W+",height="+H+",top="+mt+",left="+ml+",scrollbars=yes"; 
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
/* 		height: 450px; */
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
	margin-bottom: 50px;
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
		<a id="addClass"><img src="/resources/img/chappie_button.png" style="cursor:pointer"></a>
	</div>

	<!-- 채피 채팅창 -->
<body>
		
	
<!-- 	시작 -->
<div class="row">
        <div class="col-md-3 popup-box chat-popup" id="qnimate">
          <!-- DIRECT CHAT PRIMARY -->
          <div class="box box-primary direct-chat direct-chat-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Direct Chat</h3>

              <div class="box-tools pull-right">
                <span data-toggle="tooltip" title="3 New Messages" class="badge bg-light-blue">3</span>
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-toggle="tooltip" title="" data-widget="chat-pane-toggle" data-original-title="Contacts">
                  <i class="fa fa-comments"></i></button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: block;">
              <!-- Conversations are loaded here -->
              <div class="direct-chat-messages">
                <!-- Message. Default to the left -->
                <div class="direct-chat-msg">
                  <div class="direct-chat-info clearfix">
                    <span class="direct-chat-name pull-left">Alexander Pierce</span>
                    <span class="direct-chat-timestamp pull-right">23 Jan 2:00 pm</span>
                  </div>
                  <!-- /.direct-chat-info -->
                  <img class="direct-chat-img" src="../dist/img/user1-128x128.jpg" alt="Message User Image"><!-- /.direct-chat-img -->
                  <div class="direct-chat-text">
                    Is this template really for free? That's unbelievable!
                  </div>
                  <!-- /.direct-chat-text -->
                </div>
                <!-- /.direct-chat-msg -->

                <!-- Message to the right -->
                <div class="direct-chat-msg right">
                  <div class="direct-chat-info clearfix">
                    <span class="direct-chat-name pull-right">Sarah Bullock</span>
                    <span class="direct-chat-timestamp pull-left">23 Jan 2:05 pm</span>
                  </div>
                  <!-- /.direct-chat-info -->
                  <img class="direct-chat-img" src="../dist/img/user3-128x128.jpg" alt="Message User Image"><!-- /.direct-chat-img -->
                  <div class="direct-chat-text">
                    You better believe it!
                  </div>
                  <!-- /.direct-chat-text -->
                </div>
                <!-- /.direct-chat-msg -->
              </div>
              <!--/.direct-chat-messages-->

              <!-- Contacts are loaded here -->
              <div class="direct-chat-contacts">
                <ul class="contacts-list">
                  <li>
                    <a href="#">
                      <img class="contacts-list-img" src="../dist/img/user1-128x128.jpg" alt="User Image">

                      <div class="contacts-list-info">
                            <span class="contacts-list-name">
                              Count Dracula
                              <small class="contacts-list-date pull-right">2/28/2015</small>
                            </span>
                        <span class="contacts-list-msg">How have you been? I was...</span>
                      </div>
                      <!-- /.contacts-list-info -->
                    </a>
                  </li>
                  <!-- End Contact Item -->
                </ul>
                <!-- /.contatcts-list -->
              </div>
              <!-- /.direct-chat-pane -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer" style="display: block;">
              <form action="#" method="post">
                <div class="input-group">
                  <input type="text" name="message" placeholder="Type Message ..." class="form-control">
                      <span class="input-group-btn">
                        <button type="submit" class="btn btn-primary btn-flat">Send</button>
                      </span>
                </div>
              </form>
            </div>
            <!-- /.box-footer-->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
<!-- 끝 -->
	<!-- 채피 스크립트 -->

<script>
		$(function() {
			$("#addClass").click(function() {
				$('#qnimate').addClass('popup-box-on');
				$('#responseScroll').scrollTop($('#responseScroll')[0].scrollHeight);
				var allData = { "onOff" : "on"};
				$.ajax({
					type: "GET",
					url: "/chappieOnOff",
					data: allData,
					success: function(data) {
					},
				});	
			});

			$("#removeClass").click(function() {
				$('#qnimate').removeClass('popup-box-on');
				var allData = { "onOff" : "off"};
				$.ajax({
					type: "GET",
					url: "/chappieOnOff",
					data: allData,
					success: function(data) {
					},
				});	
			});
		})
		
		$(document).ready(function(){
			var member_id = "<%=(String)session.getAttribute("onoff")%>"
			if(member_id == "on"){
				$('#qnimate').addClass('popup-box-on');
				$("#responseScroll").scrollTop($("#responseScroll")[0].scrollHeight);
			}
		
		})

</script>
</body>	
</html>	