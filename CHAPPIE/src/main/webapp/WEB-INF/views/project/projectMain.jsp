<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<head>
<title>CHAPPIE</title>

<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
  <link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css">
  
<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/resources/dist/css/skins/_all-skins.min.css">
  
    <!-- iCheck -->
  <link rel="stylesheet" href="/resources/plugins/iCheck/flat/blue.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="/resources/plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="/resources/plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  
  
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="/resources/css/stylish-portfolio.css">

<!-- Custom Fonts -->
<link rel="stylesheet" href="/font-awesome/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" type="text/css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- 채피설정 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:400,300" type="text/css"> 
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans" type="text/css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&amp;lang=en" />

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



<body class="hold-transition skin-blue sidebar-mini fixed" data-spy="scroll" data-target="#scrollspy" style="height: auto;">


<div class="wrapper " style="height: auto;">
  <header class="main-header">
    <!-- Logo -->
    <a href="${URIs.URI_MAIN }" class="logo treeview-menu">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b><i class="glyphicon glyphicon-home"></i></b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>CHAPPIE</b></span>
    </a>
    
    <!-- Header Navbar: style can be found in header.less -->
    
	<nav class="navbar navbar-static-top">
    <jsp:include page ="${PAGEs.VIEW_NAV_PROJECT}" flush="false" />
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <jsp:include page ="${PAGEs.VIEW_ASIDE_LEFT}" flush="false" />
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <!-- Contents -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1> ${project.project_name }
<!--         <small>Control panel</small> -->
      </h1>

    </section>

    <!-- Main content -->
    <section class="content" >
    
    <div class="row">
        <div class="col-md-6">
          <!-- AREA CHART -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Area Chart</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="areaChart" style="height: 249px; width: 685px;" height="311" width="856"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- DONUT CHART -->
          <div class="box box-danger">
            <div class="box-header with-border">
              <h3 class="box-title">Donut Chart</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <canvas id="pieChart" style="height: 342px; width: 685px;" height="427" width="856"></canvas>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

        </div>
        <!-- /.col (LEFT) -->
        <div class="col-md-6">
          <!-- LINE CHART -->
          <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Line Chart</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="lineChart" style="height: 249px; width: 685px;" height="311" width="856"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- BAR CHART -->
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Bar Chart</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="barChart" style="height: 230px; width: 685px;" height="287" width="856"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
	<div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Bar Chart</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="barChart" style="height: 230px; width: 685px;" height="287" width="856"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div><div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Bar Chart</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="barChart" style="height: 230px; width: 685px;" height="287" width="856"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div><div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Bar Chart</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="barChart" style="height: 230px; width: 685px;" height="287" width="856"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div><div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Bar Chart</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body">
              <div class="chart">
                <canvas id="barChart" style="height: 230px; width: 685px;" height="287" width="856"></canvas>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
        </div>
        <!-- /.col (RIGHT) -->
      </div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  
  <!--  채피 아이콘 -->

	<div style="position: fixed; bottom: 5px; right: 5px; margin-right: 50px">
		<a href="#" id="addClass"><img src="/resources/img/chappie_button.png"></a>
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
			<iframe width="395" height="530"
				src="https://console.api.ai/api-client/demo/embedded/62665667-db9e-446c-844c-087d4e7098c4">
			</iframe>
		</div>
	</div>
	
	
  <footer class="main-footer">
   	 <jsp:include page ="${PAGEs.VIEW_FOOTER_PROJECT}" flush="false" />
    
  </footer>

  <!-- Control Sidebar -->
  
	<aside class="control-sidebar control-sidebar-dark">
		
   	 <jsp:include page ="${PAGEs.VIEW_ASIDE_RIGHT}" flush="false" />
	
 	</aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
  
</div>
<!-- ./wrapper -->
 <!-- jQuery 2.2.3 -->
<script
  src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.6 -->
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- Sparkline -->
<script src="/resources/plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="/resources/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="/resources/plugins/knob/jquery.knob.js"></script>
<!-- daterangepicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="/resources/plugins/daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="/resources/plugins/datepicker/bootstrap-datepicker.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="/resources/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="/resources/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="/resources/dist/js/app.min.js"></script>
<!-- <script src="/resources/dist/js/app.js"></script> -->
<!-- AdminLTE for demo purposes -->
<script src="/resources/dist/js/demo.js"></script>
<!-- SlimScroll 1.3.0 -->
   
    <script src="/resources/documentation/docs.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.js"></script>

    
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
