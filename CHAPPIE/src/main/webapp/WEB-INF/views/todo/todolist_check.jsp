<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<title>SSangyoung_todolist_modify</title>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/stylish-portfolio.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">


<style>

.calendar-group{
}

.calendar-group_common{
  float: left;
}



html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}
</style>
<body class="w3-theme-l5">

<!-- Navbar -->

<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
    <div class="container">

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
            </button>


            <a class="navbar-brand page-scroll" href="#page-top">Ssangyoung Company</a>
        </div>

<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav navbar-right">
        <li class="hidden">
            <a href="#page-top"></a>
        </li>
        <li>
            <a class="page-scroll" href="#services">Services</a>
        </li>
        <li>
            <a class="page-scroll" href="#about">About</a>
        </li>
        <li>
            <a class="page-scroll" href="#contact">Contact</a>
        </li>

        <li>
            <a class="page-scroll" href="#sign_up">
              <span class ="glyphicon glyphicon-user"> 로그인</span></a>
        </li>
        <li>
            <a class="page-scroll" href="#join">회원가입</a>
        </li>

    </ul>
</div>
</nav>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large">
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">My Profile</a>
</div>

<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
    <div class="w3-col m3">
      <!-- Profile -->
      <div class="w3-card-2 w3-round w3-white">
        <div class="w3-container">
         <h4 class="w3-center">My Profile</h4>
         <p class="w3-center"><img src="/w3images/avatar3.png" class="w3-circle" style="height:106px;width:106px" alt="Avatar"></p>
         <hr>
         <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> Designer, UI</p>
         <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> London, UK</p>
         <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> April 1, 1988</p>
        </div>
      </div>
      <br>

      <!-- Accordion -->
      <div class="w3-card-2 w3-round">
        <div class="w3-white">
          <button onclick="myFunction('Demo1')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-user-circle-o"></i> My Project </button>
          <div id="Demo1" class="w3-hide w3-container">
            <ul>
              <li>
              <button style="padding:5px; border:0px; background-color:#FFFFFF">My Project</button>
              </li>
              <li>
              <button style="padding:5px; border:0px; background-color:#FFFFFF">Create Project</button>
              </li>
              <li>
              <button style="padding:5px; border:0px; background-color:#FFFFFF">Post</button>
              </li>
          </div>

          <button onclick="myFunction('Demo2')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-users fa-fw"></i> Share Project</button>
          <div id="Demo2" class="w3-hide w3-container">
            <ul>
            <li>
            <button style="padding:5px; border:0px; background-color:#FFFFFF">Post</button>
            </li>
            <li>
            <button style="padding:5px; border:0px; background-color:#FFFFFF">To do list</button>
            </li>
            <li>
            <button style="padding:5px; border:0px; background-color:#FFFFFF">Progression rate</button>
            </li>
        </div>

          <button onclick="myFunction('Demo3')" class="w3-button w3-block w3-theme-l1 w3-left-align"><i class="fa fa-gear"></i> Management </button>
          <div id="Demo3" class="w3-hide w3-container">
         <div class="w3-row-padding">
         </div>
          </div>
        </div>
      </div>
      <br>



      <!-- Alert Box -->
      <div class="w3-container w3-display-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
        <span onclick="this.parentElement.style.display='none'" class="w3-button w3-theme-l3 w3-display-topright">
          <i class="fa fa-remove"></i>
        </span>
        <p><strong>Hey!</strong></p>
        <p>People are looking at your profile. Find out who.</p>
      </div>

    <!-- End Left Column -->
    </div>

    <!-- Middle Column -->
    <div class="w3-col m7">
      <div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>


        <!-- Forms
          ================================================== -->
          <div class="bs-docs-section" style="margin-right:20px">


            <div class="row">
                  <form class="form-horizontal">
                    <fieldset>
                      <legend style="margin-left:20px">To Do List 수정</legend>

                          <select id="select" style="margin-left:20px">
                            <option>카테고리</option>
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                          </select>
                        </div>
                      </div>

                      <div>
                      <div class="form-group">
                        <label for="inputEmail" class="col-lg-2 control-label" style="margin-top:5px"> 할 일 </label>
                        <div class="col-lg-10">
                          <input type="text" class="form-control" id="inputEmail" placeholder="">
                        </div>
                      </div>
                      </div><br>



                      <!-- Alert Box -->
                      <section id="calendar" class="calendar">
                      <div class="w3-container w3-display-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
                        <span onclick="this.parentElement.style.display='none'" class="w3-button w3-theme-l3 w3-display-topright">
                          <i class="fa fa-remove"></i>
                        </span>
                        <p><strong>Hey!</strong></p>
                        <p>People are looking at your profile. Find out who.</p>
                      </div>
                    </section>




                    <div>
                    <div class="form-group">
                      <label for="inputEmail" class="col-lg-2 control-label" style="margin-top:5px"> 종료일자
                        <i class="fa fa-calendar" style="margin-left:10px"></i> </label>
                      <div class="col-lg-10">
                        <input type="text" class="form-control" id="inputEmail" placeholder="">
                      </div>
                    </div>
                    </div><br>

                      <div>
                      <div class="form-group">
                        <label for="inputEmail" class="col-lg-2 control-label" style="margin-top:5px"> 종료일자
                          <i class="fa fa-calendar" style="margin-left:10px"></i> </label>
                        <div class="col-lg-10">
                          <input type="text" class="form-control" id="inputEmail" placeholder="">
                        </div>
                      </div>
                      </div><br>

                      <div>
                      <div class="form-group">
                        <label for="inputEmail" class="col-lg-2 control-label" style="margin-top:5px"> 담당자 </label>
                        <div class="col-lg-10">
                          <input type="text" class="form-control" id="inputEmail" placeholder="">
                        </div>
                      </div>
                      </div><br><br>

                      <div>
                      <div class="form-group">
                        <label for="inputEmail" class="col-lg-2 control-label" style="margin-top:5px"> 중요도 </label>
                        <div class="col-lg-10">
                          <select id="select" style="margin-3px">
                            <option> 상 </option>
                            <option> 중 </option>
                            <option> 하 </option>
                          </select>
                        </div>
                      </div>
                      </div><br>

                      <div>
                      <div class="form-group">
                        <label for="inputEmail" class="col-lg-2 control-label" style="margin-top:5px"> 알림 </label>
                        <div class="col-lg-10">
                          <input type="text" class="form-control" id="inputEmail" placeholder="">
                        </div>
                      </div>
                      </div><br>

                      <div class="form-group">
                        <br>
                        <label for="textArea" class="col-lg-2 control-label" style="margin-top:5px">비고</label>
                        <div class="col-lg-10">
                          <textarea class="form-control" rows="10" id="textArea" placeholder="내용을 입력하세요"></textarea>
                          <br>
                        </div>

                      </div>

                      <div class="form-group" style="text-align:center">
                        <div class="col-lg-10 col-lg-offset-2" style="margin-bottom:30px">
                          <br>
                          <button type="submit" class="btn btn-primary">등록</button>
                          <button type="reset" class="btn btn-default">취소</button>

                        </div>
                      </div>
                    </fieldset>

                  </form>

                </div>

              </div>

      </div>

    </div>


  <!-- End Grid -->


<!-- End Page Container -->
</div>
<br>



<script>
// Accordion
function myFunction(id) {
    var x = document.getElementById(id);
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
        x.previousElementSibling.className += " w3-theme-d1";
    } else {
        x.className = x.className.replace("w3-show", "");
        x.previousElementSibling.className =
        x.previousElementSibling.className.replace(" w3-theme-d1", "");
    }
}

// Used to toggle the menu on smaller screens when clicking on the menu button
function openNav() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>

</body>
</html>
