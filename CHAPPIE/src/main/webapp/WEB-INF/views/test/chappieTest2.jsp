<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>API Example</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
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
				$('#response').scrollTop($('#response')[0].scrollHeight);
			});
		}
		

		function setResponse(val) {
			$("#response").append("<li class=\"right clearfix\"><span class=\"chat-img pull-right\" ><img src=\"http://placehold.it/50/FA6F57/fff&text=ME\" alt=\"User Avatar\" class=\"img-circle\" /></span><div class=\"chat-body clearfix\"><p align=\"right\">"+$('#input').val()+"</p></div></li>");
			$("#response").append("<li class=\"left clearfix\"><span class=\"chat-img pull-left\" ><img src=\"http://placehold.it/50/55C1E7/fff&text=U\" alt=\"User Avatar\" class=\"img-circle\" /></span><div class=\"chat-body clearfix\"><p>"+val+"</p></div></li>");
			document.getElementById('input').value = "";
		}
		

		function setResponseImg(val,data) {
			$("#response").append("<li class=\"right clearfix\"><span class=\"chat-img pull-right\" ><img src=\"http://placehold.it/50/FA6F57/fff&text=ME\" alt=\"User Avatar\" class=\"img-circle\" /></span><div class=\"chat-body clearfix\"><p align=\"right\">"+$('#input').val()+"</p></div></li>");
			$("#response").append("<li class=\"left clearfix\"><span class=\"chat-img pull-left\" ><img src=\"http://placehold.it/50/55C1E7/fff&text=U\" alt=\"User Avatar\" class=\"img-circle\" /></span><div class=\"chat-body clearfix\"><p>"+data+"</p><img src=\""+val+"\"></img></div></li>");
			document.getElementById('input').value = "";
		}
		
	</script>
	
	<style>
	@import url("http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css");
	.chat
	{
	    list-style: none;
	    margin: 0;
	    padding: 0;
	}

	.chat li
	{
	    margin-bottom: 10px;
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
	    margin: 0;
	    color: #777777;
	}

	.panel .slidedown .glyphicon, .chat .glyphicon
	{
	    margin-right: 5px;
	}

	.body-panel
	{
	    overflow-y: scroll;
	    height: 300px;
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
	
	<style type="text/css">
		body { width: 500px; margin: 0 auto; margin-top: 20px; }
		div {  padding:10px}
		input { width: 400px; }
		button { width: 50px; }
		textarea { width: 100%; }
		p {border:0.5px dotted;}
	</style>
	
</head>
<body>
<!-- 	<div> -->
<!-- 		<input id="input" type="text"> <button onclick="send()">Send!</button> -->
<!-- 		<div id="response" style="overflow:auto;border:1px solid; width:100%; height:300px; background-color:yellow"></div> -->
<!-- 	</div> -->
	

	
	
	<div class="container">
    <div class="row form-group">
        <div class="col-xs-12 col-md-offset-2 col-md-8 col-lg-8 col-lg-offset-2">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-comment"></span> Comments
                    <div class="btn-group pull-right">
<!--                         <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown"> -->
<!--                             <span class="glyphicon glyphicon-chevron-down"></span> -->
<!--                         </button> -->
<!--                         <ul class="dropdown-menu slidedown"> -->
<!--                             <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-refresh"> -->
<!--                             </span>Refresh</a></li> -->
<!--                             <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-ok-sign"> -->
<!--                             </span>Available</a></li> -->
<!--                             <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-remove"> -->
<!--                             </span>Busy</a></li> -->
<!--                             <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-time"></span> -->
<!--                                 Away</a></li> -->
<!--                             <li class="divider"></li> -->
<!--                             <li><a href="http://www.jquery2dotnet.com"><span class="glyphicon glyphicon-off"></span> -->
<!--                                 Sign Out</a></li> -->
<!--                         </ul> -->
                    </div>
                </div>
                
                
                <div class="panel-body body-panel" >
                    <ul class="chat" id="response">
                    
                    <!-- <li class="right clearfix"><span class="chat-img pull-right" >
                            <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" />
                        </span>
                            <div class="chat-body clearfix">
                                <p>장예찬</p>
                            </div>
                        </li>
                    
                    
				       채피
                        <li class="left clearfix"><span class="chat-img pull-left">
                            <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" />
                        </span>
                            <div class="chat-body clearfix">
                                <p>김용현</p>
                            </div>
                        </li> -->
                        
                        
                        


<!--                         <li class="left clearfix"><span class="chat-img pull-left"> -->
<!--                             <img src="http://placehold.it/50/55C1E7/fff&text=U" alt="User Avatar" class="img-circle" /> -->
<!--                         </span> -->

<!--                             <div class="chat-body clearfix"> -->
<!--                                 <div class="header"> -->
<!--                                     <strong class="primary-font">Jack Sparrow</strong> <small class="pull-right text-muted"> -->
<!--                                         <span class="glyphicon glyphicon-time"></span>14 mins ago</small> -->
<!--                                 </div> -->
<!--                                 <p> -->
<!--                                     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare -->
<!--                                     dolor, quis ullamcorper ligula sodales. -->
<!--                                 </p> -->
<!--                             </div> -->
<!--                         </li> -->



<!--                         <li class="right clearfix"><span class="chat-img pull-right"> -->
<!--                             <img src="http://placehold.it/50/FA6F57/fff&text=ME" alt="User Avatar" class="img-circle" /> -->
<!--                         </span> -->
<!--                             <div class="chat-body clearfix"> -->
<!--                                 <div class="header"> -->
<!--                                     <small class=" text-muted"><span class="glyphicon glyphicon-time"></span>15 mins ago</small> -->
<!--                                     <strong class="pull-right primary-font">Bhaumik Patel</strong> -->
<!--                                 </div> -->
<!--                                 <p> -->
<!--                                     Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare -->
<!--                                     dolor, quis ullamcorper ligula sodales. -->
<!--                                 </p> -->
<!--                             </div> -->
<!--                         </li> -->


       			
     			   </ul>
               <input id="input" type="text">		 
         		   <button class="btn btn-warning btn-lg btn-block" onclick="send()" id="btn-chat">Send</button>
           	   <span class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-xs-12" style="margin-top: 10px">
           	   </span>
               
                </div>
            </div>
        </div>
    </div>
</div>
	
</body>
</html>