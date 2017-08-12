<%@page import="kr.co.syteam.commons.URIs"%>
<%@page import="kr.co.syteam.commons.PAGEs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>CHAPPIE</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="/resources/dist/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="/resources/plugins/iCheck/flat/blue.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="/resources/plugins/morris/morris.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="/resources/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Date Picker -->
  <link rel="stylesheet" href="/resources/plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="/resources/plugins/daterangepicker/daterangepicker.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="/resources/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini fixed">
<div class="wrapper">

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
<!--   <aside class="main-sidebar"> -->
    <!-- sidebar: style can be found in sidebar.less -->
<%--     <jsp:include page ="${PAGEs.VIEW_ASIDE_LEFT}" flush="false" /> --%>
    <!-- /.sidebar -->
<!--   </aside> -->

  <!-- Content Wrapper. Contains page content -->
  <!-- Contents -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) --> 
    <section class="content-header">
    <div>
      <h1> <b>#${category.category_name }</b>
    </div>
<!--         <small>Control panel</small> -->
      </h1>

    </section>

    <!-- Main content -->
    <section class="content">
		<ul class="timeline">

    <!-- timeline time label -->
    <li class="time-label">
        <span class="bg-red">
            2017년 2월 20일 월요일
        </span>
    </li>
    <!-- /.timeline-label -->

    <!-- timeline item -->
    <li>
        <!-- timeline icon -->
        <i class="fa fa-envelope bg-blue"></i>
        <div class="timeline-item">
            <span class="time"><i class="fa fa-clock-o"></i> 12:12</span>

            <h3 class="timeline-header"><a href="#">SY Team</a>			 #${category.category_name}게시판 공지입니다.</h3>

            <div class="timeline-body">
                	<b>#${category.category_name}</b> 게시판 공지입니다.
            </div>

            <div class="timeline-footer">
                <a class="btn btn-primary btn-xs">Read more</a>
            </div>
        </div>
    </li>
 <!-- timeline time label -->
 				<c:forEach items="${boardList }" var="boardVO" varStatus="status">
 				
 				<c:choose>
 				
                <c:when test="${boardList[status.index].board_write_date_yyyymmdd ne  boardList[status.index-1].board_write_date_yyyymmdd}">
		
    <li class="time-label">
        <span class="bg-red">
           ${boardVO.board_write_date_yyyy}년 ${boardVO.board_write_date_mon} ${boardVO.board_write_date_dd}일 ${boardVO.board_write_date_day}
        </span>
    </li>
				</c:when>
 				</c:choose>
				
    <!-- /.timeline-label -->

    <!-- timeline item -->
    <li>
        <!-- timeline icon -->
        <i class="fa fa-user bg-aqua"></i>
        <div class="timeline-item">
            <span class="time"><i class="fa fa-clock-o"></i> ${boardVO.board_write_date }</span>

            <h3 class="timeline-header"><a href="#">${boardVO.user_id }	</a>&nbsp;&nbsp;&nbsp;&nbsp; ${boardVO.board_title }</h3>

            <div class="timeline-body">
            <section id="demo">
            test2
            
<article>
<p></p>
</article>
            </section>
            </div>

            <div class="timeline-footer">
                <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo${status.index }">Comments</button>
                <div id="demo${status.index }" class="collapse">
	   				 Lorem ipsum dolor sit amet, co nsectetur adipisicing elit,
	   					 sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
	    			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
	  			</div>
            </div>
        </div>
    </li>
				</c:forEach>

    <div>
    	
		<a class="btn btn-default pull-left" href="/project/${project.project_name}/board/${category_name }/boardWriteForm">Write</a>
	</div>
    <!-- END timeline item -->


</ul>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
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
	
	
<div id="container">
<h1>Demo</h1>
<section id="demo">
<article>
<h2>Artisanal Narwahls</h2> 
<p>Salvia portland leggings banh mi fanny pack mixtape, authentic bushwick wes anderson intelligentsia artisan typewriter high life they sold out mixtape high life. Marfa ethnic wayfarers brooklyn keytar mixtape. Blue bottle shoreditch gluten-free, mixtape hoodie whatever pinterest viral twee fashion axe high life irony biodiesel tofu.</p>
<p>Retro church-key thundercats keytar, skateboard irony selvage ethnic freegan banjo pour-over fixie. Raw denim fashion ax eoke locavore disrupt, tonx retro authentic letterpress raw denim stumptown mixtape ugh kale chips flexitarian 90's deep v. Squid fingerstache bespoke wolf DIY. Banjo pour-over shoreditch cardigan try-hard.</p>
<p>Skateboard artisan bicycle rights next level vinyl cardigan beard twee, farm-to-table truffaut. Shoreditch freegan cliche thundercats, bushwick VHS intelligentsia selfies ethnic try-hard before they sold out. Marfa terry richardson hella, seitan odd future pug butcher. Wes anderson tousled YOLO cardigan. Typewriter high life carles, artisan gentrify messenger bag single-origin coffee truffaut thundercats cray 90's pour-over seitan. Banksy 8-bit organic, salvia gentrify stumptown wayfarers. Godard echo park before they sold out chambray, skateboard twee mcsweeney's synth hella.</p>
<p>Flannel pinterest Austin twee narwhal, hoodie swag wolf photo booth. Hella kale chips marfa occupy pitchfork put a bird on it. Semiotics dreamcatcher selfies beard DIY umami craft beer 3 wolf moon. Try-hard literally mustache polaroid ennui VHS. High life fixie wolf, trust fund twee seitan pinterest blog helvetica sriracha. Tattooed selvage try-hard, biodiesel banjo direct trade echo park kogi tonx bespoke. Pork belly put a bird on it iphone, fixie literally bespoke tonx butcher +1 swag.</p>
</article>
<article class="slide">
<h2>Portland Leggings</h2>
<p>Put a bird on it you probably haven't heard of them DIY, vice photo booth terry richardson pickled vegan cray. Pug DIY blog stumptown 3 wolf moon, blue bottle farm-to-table actually banh mi fanny pack quinoa small batch. Mumblecore raw denim hoodie ethnic. Craft beer sriracha mlkshk, organic bicycle rights twee gentrify messenger bag keffiyeh ethical helvetica tumblr. Gluten-free tousled vinyl pop-up. Butcher keytar pickled literally, cosby sweater chambray authentic. Fixie odd future kale chips, church-key pinterest beard pour-over banksy typewriter dreamcatcher squid blue bottle sartorial.</p>
<p>Banksy blog craft beer PBR fap retro wayfarers polaroid narwhal blue bottle mixtape squid YOLO. Pitchfork brunch put a bird on it, fashion axe squid vegan vice pop-up organic blue bottle forage plaid deep v locavore +1. American apparel 3 wolf moon cray tonx single-origin coffee, gluten-free sartorial. Try-hard iphone pork belly bespoke keffiyeh leggings selfies, chillwave gastropub. Master cleanse plaid hella readymade. Keytar cosby sweater truffaut kogi, try-hard flannel chillwave. Truffaut selvage bespoke banjo freegan, ugh williamsburg.</p>
<p>Austin single-origin coffee umami vice pork belly, ethical williamsburg flexitarian forage aesthetic street art keytar fashion axe twee. Cliche aesthetic trust fund, williamsburg carles godard four loko. Photo booth authentic cred semiotics, pickled vegan williamsburg mixtape church-key intelligentsia irony umami PBR. Wayfarers fixie keffiyeh hella ugh, dreamcatcher kale chips banksy Austin swag stumptown deep v tattooed. Mlkshk viral seitan small batch squid cosby sweater, jean shorts neutra. Vegan pitchfork banjo readymade, helvetica ethical bushwick banksy artisan sriracha single-origin coffee. Umami viral fashion axe, marfa DIY banh mi wes anderson master cleanse cosby sweater cray selvage organic actually semiotics. </p>
<p>Yr messenger bag fanny pack small batch, single-origin coffee literally gluten-free farm-to-table 8-bit godard butcher fap actually biodiesel trust fund. Pickled squid cred pug pop-up. Polaroid deep v 90's, +1 godard mumblecore retro next level carles salvia try-hard food truck gluten-free. Four loko post-ironic tofu lomo, narwhal readymade mustache jean shorts letterpress. Leggings put a bird on it farm-to-table jean shorts williamsburg cardigan. Gentrify pug bushwick PBR fixie etsy. PBR banh mi cardigan, cosby sweater master cleanse mixtape fingerstache.</p>
</article>
<article class="slide">
<h2>This section is shorter than the Readmore minimum</h2>
<p>Put a bird on it you probably haven't heard of them DIY, vice photo booth terry richardson pickled vegan cray. Pug DIY blog stumptown 3 wolf moon, blue bottle farm-to-table actually banh mi fanny pack quinoa small batch. Mumblecore raw denim hoodie ethnic. Craft beer sriracha mlkshk, organic bicycle rights twee gentrify messenger bag keffiyeh ethical helvetica tumblr. Gluten-free tousled vinyl pop-up. Butcher keytar pickled literally, cosby sweater chambray authentic. Fixie odd future kale chips, church-key pinterest beard pour-over banksy typewriter dreamcatcher squid blue bottle sartorial.</p>
</article>
</section>
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="/resources/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.6 -->
<script src="/resources/bootstrap/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="/resources/plugins/morris/morris.min.js"></script>
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
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="/resources/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="/resources/dist/js/demo.js"></script>

<script src="/resources/Readmore.js/Readmore.js-master/readmore.js"></script> 
<script>
    $('article').readmore({maxHeight: 216});
  </script>
</body>
</html>
