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
		var objDiv = document.getElementById('response'); 
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
			$.ajax({
				type: "POST",
				url: baseUrl + "query?v=20150910",
				contentType: "application/json; charset=utf-8",
				dataType: "json",
				headers: {
					"Authorization": "Bearer " + accessToken
				},
				data: JSON.stringify({ query: text, lang: "en", sessionId: "somerandomthing" }),
				success: function(data) {
					response(data);
				},
				error: function() {
					setResponse("Internal Server Error");
				}
			});			
		}
		
		function response(data){
			console.log(JSON.stringify(data, undefined, 2));
			var temp = "";
			
				if(typeof data.result.fulfillment.messages[0].imageUrl !="undefined"){
					temp = data.result.fulfillment.messages[0].imageUrl;
					setResponseImg(temp);
				}else{
					temp = data.result.fulfillment.speech;	
					setResponse(temp);
				}
				console.log("temp:"+temp);
				objDiv.scrollTop = objDiv.scrollHeight;
		}
		
		function setResponse(val) {
			$("#response").append("<p align=\"right\" style=\"width:55%;margin-left:45%;background-color:green\">"+$('#input').val()+"</p>");
			$("#response").append("<p style=\"width:55%;background-color:red\">"+val+"</p>");
			document.getElementById('input').value = "";
		}
		
		function setResponseImg(val) {
			$("#response").append("<p style=\"width:55%;margin-left:45%;background-color:green\" align=\"right\">"+$('#input').val()+"</p>");
			$("#response").append("<img src=\""+val+"\"></img>");
			document.getElementById('input').value = "";
		}
		
	</script>
	<style type="text/css">
		body { width: 500px; margin: 0 auto; margin-top: 20px; }
		div {  position: absolute; padding:10px}
		input { width: 400px; }
		button { width: 50px; }
		textarea { width: 100%; }
		p {border:0.5px dotted;}
	</style>
</head>
<body>
	<div>
		<input id="input" type="text"> <button onclick="send()">Send</button>
		<div id="response" style="overflow:scroll;border:1px solid; width:100%; height:300px; background-color:yellow"></div>
	</div>
</body>
</html>