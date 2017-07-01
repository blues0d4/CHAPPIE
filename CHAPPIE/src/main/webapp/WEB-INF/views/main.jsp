<%@page import="kr.co.syteam.commons.URIs"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="en">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<head>
	<title>SSangyoung</title> 
	
	  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Bootstrap Core CSS -->
    <link href="../../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../../resources/css/stylish-portfolio.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
	
</head>
<body>
<body id="page-top" class="index">

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container">
        

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <a class="navbar-brand page-scroll" href="${URIs.URI_MAIN}">CHAPPIE</a>
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
                        <a class="page-scroll" href="${URIs.URI_USER_LOGIN_FORM}">
                          <span class ="glyphicon glyphicon-user"> 로그인</span></a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="${URIs.URI_USER_MODIFY_FORM}">
                          <span class ="glyphicon glyphicon-user"> 회원정보수정</span></a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="${URIs.URI_USER_JOIN_FORM}">회원가입</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    
   

    
    
    <header id="top" class="header">
        <div class="text-vertical-center">
            <h1>Start Ssangyoung</h1>
            <h3>Free Bootstrap Themes &amp; Templates</h3>
            <tbody><tr><td>

<style>
/* ================================================================================================
																															KEYFRAMES
================================================================================================ */
@keyframes shake {
	2% {
		transform: translate(-0.5px, -0.5px) rotate(0.5deg); }
	4% {
		transform: translate(2.5px, -1.5px) rotate(-0.5deg); }
	6% {
		transform: translate(2.5px, 0.5px) rotate(1.5deg); }
	8% {
		transform: translate(-0.5px, 2.5px) rotate(-0.5deg); }
	10% {
		transform: translate(1.5px, -0.5px) rotate(1.5deg); }
	12% {
		transform: translate(0.5px, -1.5px) rotate(-0.5deg); }
	14% {
		transform: translate(0.5px, -1.5px) rotate(0.5deg); }
	16% {
		transform: translate(-0.5px, 0.5px) rotate(0.5deg); }
	18% {
		transform: translate(-1.5px, 1.5px) rotate(0.5deg); }
	20% {
		transform: translate(-0.5px, -1.5px) rotate(-0.5deg); }
	22% {
		transform: translate(1.5px, 1.5px) rotate(0.5deg); }
	24% {
		transform: translate(-1.5px, 2.5px) rotate(1.5deg); }
	26% {
		transform: translate(-0.5px, 0.5px) rotate(0.5deg); }
	28% {
		transform: translate(-1.5px, 1.5px) rotate(-0.5deg); }
	30% {
		transform: translate(1.5px, 0.5px) rotate(0.5deg); }
	32% {
		transform: translate(1.5px, -0.5px) rotate(0.5deg); }
	34% {
		transform: translate(2.5px, 1.5px) rotate(-0.5deg); }
	36% {
		transform: translate(-1.5px, -0.5px) rotate(-0.5deg); }
	38% {
		transform: translate(1.5px, 2.5px) rotate(-0.5deg); }
	40% {
		transform: translate(-0.5px, -1.5px) rotate(0.5deg); }
	42% {
		transform: translate(0.5px, 0.5px) rotate(0.5deg); }
	44% {
		transform: translate(1.5px, 1.5px) rotate(-0.5deg); }
	46% {
		transform: translate(-1.5px, 0.5px) rotate(-0.5deg); }
	48% {
		transform: translate(1.5px, 1.5px) rotate(1.5deg); }
	50% {
		transform: translate(0.5px, -0.5px) rotate(0.5deg); }
	52% {
		transform: translate(-0.5px, 0.5px) rotate(1.5deg); }
	54% {
		transform: translate(1.5px, -1.5px) rotate(0.5deg); }
	56% {
		transform: translate(-0.5px, -1.5px) rotate(1.5deg); }
	58% {
		transform: translate(2.5px, 1.5px) rotate(0.5deg); }
	60% {
		transform: translate(-0.5px, -0.5px) rotate(1.5deg); }
	62% {
		transform: translate(1.5px, 2.5px) rotate(-0.5deg); }
	64% {
		transform: translate(-1.5px, 0.5px) rotate(-0.5deg); }
	66% {
		transform: translate(2.5px, 1.5px) rotate(-0.5deg); }
	68% {
		transform: translate(2.5px, 0.5px) rotate(1.5deg); }
	70% {
		transform: translate(-1.5px, -1.5px) rotate(0.5deg); }
	72% {
		transform: translate(-1.5px, -0.5px) rotate(-0.5deg); }
	74% {
		transform: translate(-0.5px, -1.5px) rotate(1.5deg); }
	76% {
		transform: translate(1.5px, 1.5px) rotate(0.5deg); }
	78% {
		transform: translate(1.5px, -0.5px) rotate(1.5deg); }
	80% {
		transform: translate(-0.5px, 1.5px) rotate(1.5deg); }
	82% {
		transform: translate(2.5px, 2.5px) rotate(0.5deg); }
	84% {
		transform: translate(-0.5px, 0.5px) rotate(1.5deg); }
	86% {
		transform: translate(1.5px, -0.5px) rotate(1.5deg); }
	88% {
		transform: translate(2.5px, -1.5px) rotate(0.5deg); }
	90% {
		transform: translate(0.5px, -1.5px) rotate(-0.5deg); }
	92% {
		transform: translate(-0.5px, -1.5px) rotate(1.5deg); }
	94% {
		transform: translate(2.5px, 0.5px) rotate(1.5deg); }
	96% {
		transform: translate(-0.5px, -1.5px) rotate(-0.5deg); }
	98% {
		transform: translate(-0.5px, -1.5px) rotate(0.5deg); }
	0%, 100% {
		transform: translate(0, 0) rotate(0); } }


@keyframes shake-little {
	2% {
		transform: translate(0px, 0px) rotate(0.5deg); }
	4% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	6% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	8% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	10% {
		transform: translate(2px, 0px) rotate(0.5deg); }
	12% {
		transform: translate(0px, 2px) rotate(0.5deg); }
	14% {
		transform: translate(0px, 0px) rotate(0.5deg); }
	16% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	18% {
		transform: translate(0px, 0px) rotate(0.5deg); }
	20% {
		transform: translate(2px, 0px) rotate(0.5deg); }
	22% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	24% {
		transform: translate(0px, 2px) rotate(0.5deg); }
	26% {
		transform: translate(0px, 0px) rotate(0.5deg); }
	28% {
		transform: translate(0px, 0px) rotate(0.5deg); }
	30% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	32% {
		transform: translate(2px, 0px) rotate(0.5deg); }
	34% {
		transform: translate(2px, 0px) rotate(0.5deg); }
	36% {
		transform: translate(0px, 0px) rotate(0.5deg); }
	38% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	40% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	42% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	44% {
		transform: translate(2px, 0px) rotate(0.5deg); }
	46% {
		transform: translate(0px, 0px) rotate(0.5deg); }
	48% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	50% {
		transform: translate(2px, 0px) rotate(0.5deg); }
	52% {
		transform: translate(0px, 0px) rotate(0.5deg); }
	54% {
		transform: translate(0px, 0px) rotate(0.5deg); }
	56% {
		transform: translate(2px, 0px) rotate(0.5deg); }
	58% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	60% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	62% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	64% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	66% {
		transform: translate(0px, 0px) rotate(0.5deg); }
	68% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	70% {
		transform: translate(2px, 0px) rotate(0.5deg); }
	72% {
		transform: translate(2px, 0px) rotate(0.5deg); }
	74% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	76% {
		transform: translate(0px, 2px) rotate(0.5deg); }
	78% {
		transform: translate(0px, 0px) rotate(0.5deg); }
	80% {
		transform: translate(0px, 0px) rotate(0.5deg); }
	82% {
		transform: translate(0px, 0px) rotate(0.5deg); }
	84% {
		transform: translate(0px, 0px) rotate(0.5deg); }
	86% {
		transform: translate(2px, 0px) rotate(0.5deg); }
	88% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	90% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	92% {
		transform: translate(2px, 0px) rotate(0.5deg); }
	94% {
		transform: translate(2px, 0px) rotate(0.5deg); }
	96% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	98% {
		transform: translate(2px, 2px) rotate(0.5deg); }
	0%, 100% {
		transform: translate(0, 0) rotate(0); } }
/*=========================== shake end ==============================*/

@keyframes spin {
	0% { transform: rotate(0deg); }
	0.1% { transform: rotate(-60deg); }
	0.2% { transform: rotate(-144deg); }
	0.25% { transform: rotate(-252deg); }
	0.3% { transform: rotate(-396deg); }
	0.35% { transform: rotate(-576deg); }
	0.4% { transform: rotate(-792deg); }
	0.45% { transform: rotate(-1152deg); }
	0.5% { transform: rotate(-1632deg); }
	0.6% { transform: rotate(-2352deg); }
	0.7% { transform: rotate(-4012deg); }
	2.1% { transform: rotate(-56856deg); }
	2.2% { transform: rotate(-58514deg); }
	2.3% { transform: rotate(-59234deg); }
	2.4% { transform: rotate(-59703deg); }
	2.5% { transform: rotate(-60063deg); }
	2.6% { transform: rotate(-60279deg); }
	2.7% { transform: rotate(-60603deg); }
	2.8% { transform: rotate(-60711deg); }
	100% { transform: rotate(-82656deg); }
}
@keyframes scale-up {
	0% { transform: scale(0.5); }
	0.5% { transform: scale(0.5); }
	1% { transform: scale(2.5); }
	2% { transform: scale(2.5); }
	2.3% { transform: scale(0.5) translate(200px,-200px); }
	100% {	}
}
@keyframes remove-border {
	0% {	}
	1% {
		border-color: rgba(255,255,255,0);
		background-color: rgba(255,255,255,0);
	}
	100% {	}
}
@keyframes fall-header {
	0% {
		top: 0;
	}
	0.6% {
		opacity: 1;
	}
	0.7% {
		top: 350px;
		transform: scale(0) perspective(450px) rotateY(155deg) rotateZ(100deg);
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
@keyframes fall-sharemenu {
	0% {}
	0.5% {
		transform: translate(-100%,0%) rotate(-270deg) scale(0.2);
		opacity: 1;
	}
	0.55% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
@keyframes fall-search_box {
	0% {}
	0.4% {
		transform: translate(-10%,-500%) rotate(400deg) scale(0);
		opacity: 1;
	}
	0.45% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
@keyframes fall-list_btn_top_right {
	0% {}
	0.5% {
		transform: translate(45vw,212px) rotate(180deg) scale(0.2);
		transform-origin: left;
		opacity: 1;
	}
	0.55% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
@keyframes fall-list_btn_top_left {
	0% {}
	0.5% {
		transform: translate(-45vw,212px) rotate(180deg) scale(0.2);
		transform-origin: left;
		opacity: 1;
	}
	0.55% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
@keyframes fall-list_btn_bottom_right {
	0% {}
	0.5% {
		transform: translate(45vw,-212px) rotate(180deg) scale(0.2);
		transform-origin: left;
		opacity: 1;
	}
	0.55% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
@keyframes fall-list_btn_bottom_left {
	0% {}
	0.5% {
		transform: translate(-45vw,-312px) rotate(180deg) scale(0.2);
		transform-origin: left;
		opacity: 1;
	}
	0.55% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
@keyframes fall-cafemenu {
	0% {}
	0.7% {
		transform: translate(44vw,-42%) rotate(345deg) scale(0.05);
		opacity: 1;
	}
	0.75% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
@keyframes fall-commentDiv {
	0% {}
	1% {
		transform: translate(-6vw,-8vw) rotateX(230deg) rotateY(240deg) scale(0.05);
		opacity: 1;
		transform-origin: top;
	}
	1.1% {
		opacity: 0;
	}
	100% { opacity: 0; }
}
@keyframes fall-subject {
	0% {}
	0.5% {
		transform: translate(45vw,190px) rotate(50deg) scale(0.4);
		transform-origin: right;
		opacity: 1;
	}
	0.55% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
@keyframes fall-writer {
	0% {}
	0.5% {
		transform: translate(40vw,180px) rotate(-60deg) scale(0.4);
		transform-origin: right;
		opacity: 1;
	}
	0.55% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
@keyframes fall-url {
	0% {}
	0.5% {
		transform: translate(45vw,180px) rotate(-45deg) scale(0.2);
		transform-origin: right;
		opacity: 1;
	}
	0.55% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
@keyframes fall-comment_cnt {
	0% {}
	0.5% {
		transform: translate(40vw,-82px) rotate(180deg) scale(0.2);
		transform-origin: left;
		opacity: 1;
	}
	0.55% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
@keyframes fall-ccl {
	0% {}
	0.5% {
		transform: translate(-44vw,-42px) scale(0.5);
		transform-origin: left;
		opacity: 1;
	}
	0.55% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
@keyframes appear-hos {
	0% {	}
	0.04% { opacity: 1; }
	100% { opacity: 1; }
}
@keyframes fall-paging {
	0% {	}
	0.5% {
		transform: rotate(-45deg) translate(7vw,-400px) scale(0.5);
		opacity: 1;
	}
	0.55% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
@keyframes fall-minidaum {
	0% {	}
	0.5% {
		transform: rotate(-48deg) translate(-45vw) scale(0.5);
		opacity: 1;
	}
	0.55% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}
@keyframes fall-nickzzal {
	0% {	}
	0.5% {
		transform: translate(387px,22px) rotate(200deg) rotateX(60deg) rotateY(60deg) scale(0.1);
		opacity: 1;
	}
	0.55% {
		opacity: 0;
	}
	100% {
		opacity: 0;
	}
}


/* ================================================================================================
																																	STYLE
================================================================================================ */
html {
	animation-name: shake;
	animation-duration: 100ms;
	animation-timing-function: ease-in-out;
	animation-iteration-count: 190;
	animation-delay: 6.5s;
}
body {
	animation-name: shake-little;
	animation-duration: 100ms;
	animation-timing-function: ease-in-out;
	animation-iteration-count: 245;
	animation-delay: 3s;
}
.bbs_contents {z-index: 0;}
#header {
	z-index: 2000;
}
#title {
	overflow: visible;
	animation: 1000s fall-header ease-out 8.5s;
}
#shareMenu { z-index: 2000 }
#shareMenu > * {
	animation: 1000s fall-sharemenu cubic-bezier(0.85, 0.18, 1, 1.01) 7s;
	z-index: 2000;
}
#wrap { 
	overflow: visible;
}
.search_box_elem {
	animation: 1000s fall-search_box ease 6s;
}
.list_btn_top > a {
	animation: 1000s fall-list_btn_top_right cubic-bezier(0.85, 0.18, 1, 1.01) 7s;
	z-index: 2000;
}
.list_btn_top > .list_paging {
	animation: 1000s fall-list_btn_top_left cubic-bezier(0.85, 0.18, 1, 1.01) 7s;
	z-index: 2000;
}
.lineT > a {
	animation: 1000s fall-list_btn_bottom_right cubic-bezier(0.85, 0.18, 1, 1.01) 7s;
	z-index: 2000;
}
.lineT > .list_paging {
	animation: 1000s fall-list_btn_bottom_left cubic-bezier(0.85, 0.18, 1, 1.01) 7s;
	z-index: 2000;
}
#cafemenu {
	animation: 1000s fall-cafemenu linear 7s;
	z-index: 2000;
}
.commentDiv {
	animation: 1000s fall-commentDiv linear 8s;
	z-index: 2001;
}
.subject > span, .subject > a {
	animation: 1000s fall-subject linear 7s;
	z-index: 2000;
}
.article_writer > a, .article_writer > .bar2, .article_writer > .p11 {
	animation: 1000s fall-writer linear 6s;
	z-index: 2000;
}
.article_writer > .txt_sub {
	animation: 1000s fall-url linear 6s;
	z-index: 2000;
}
#comment_cnt {
	animation: 1000s fall-comment_cnt linear 6s;
	z-index: 2000;
}
.cclArea img {
	animation: 1000s fall-ccl linear 6s;
	z-index: 2000;
}
.article_subject, .linebg, .lineT {
	animation: 1000s remove-border linear 7s;
}
.prenext_paging {
	animation: 1000s fall-paging linear 6s;
	z-index: 2000;
}
#daum-ad-root-ifrm, .goTop, #footer {
	display: none;
}
#minidaum {
	animation: 1000s fall-minidaum linear 6s;
	z-index: 2000;
}
.sigong div {
	width: 300px; height:300px;
	min-width: 300px;
	top: 0; left: 0;
	background-size: contain;
	background-position: center;
	background-repeat: no-repeat;
}
.sigong .sigong_detail1 {
	position: absolute;
	background-image: url('http://cfile263.uf.daum.net/image/2120C1435920967129707D');
}
.sigong .sigong_detail2 {
	background-image: url('http://cfile290.uf.daum.net/image/2720604359209677295E2D');
	animation: spin 1000s linear infinite;
}
.nickzzal img {
	position: absolute;
	top: -50px;
	width: 110px;
	z-index: 2000;
	animation: 1000s fall-nickzzal linear 6s;
}
#user_contents {
	overflow: visible !important;
}
.hos {
	background-image: url(http://cfile278.uf.daum.net/image/2124B4435920967229A02D);
    background-size: contain;
    background-position: center;
}

audio {
	visibility: hidden;
}

/* ================================================================================================
																																	미디어쿼리
================================================================================================ */
@media screen and (min-width: 480px) {		/* vw>480px */
	.sigong {
		position: absolute;
		right: 50%;
		margin-top: -100px;
		animation: scale-up 1000s linear infinite;
		z-index: 1000;
	}
	.hos {
		opacity: 0;
		animation: 1000s appear-hos linear 23s;
		width: 708px;
		height: 700px;
		position: absolute;
		right: 50%;
		margin-top: -338px;
		margin-right: -255px;
	}
}

@media screen and (max-width: 480px) {		 /* vw<480px */  @keyframes scale-up {   0% { transform: scale(0.5); }   0.5% { transform: scale(0.5); }   1% { transform: scale(1.2); }   2% { transform: scale(1.2); }   2.5% { transform: scale(0.21) translate(33%,-47%) }   100% { }  }  @keyframes mobile_comment1 {   0% {}   0.5% {     transform: translate(0,-100px) scale(0.4) rotate(-225deg);    opacity: 1;   }   0.55% { opacity: 0;    }   100% {}  }  @keyframes mobile_comment2 {   0% {}   0.5% {     transform: translate(0,-200px) scale(0.4) rotate(-45deg);    opacity: 1;   }   0.55% { opacity: 0;    }   100% {}  }  @keyframes mobile_comment3 {   0% {}   0.5% {     transform: translate(0,-300%) scale(0.4) rotate(70deg);    opacity: 1;   }   0.55% { opacity: 0;    }   100% {}  }  @keyframes mobile_comment4 {   0% {}   0.5% {     transform: translate(0,-400%) scale(0.4) rotate(-80deg);    opacity: 1;   }   0.55% { opacity: 0;    }   100% {}  }  @keyframes mobile_comment5 {   0% {}   0.5% {     transform: translate(0,-500%) scale(0.4) rotate(200deg);    opacity: 1;   }   0.55% { opacity: 0;    }   100% {}  }  @keyframes mobile_subject {   0% {}   1% {     transform: translate(0,250px) scale(0.2) rotateX(60deg) rotateY(60deg) rotateZ(360deg);    opacity: 1;   }   1.05% { opacity: 0;    }   100% {}  }  @keyframes mobile_navi {   0% {}   0.6% {     transform: translate(0,350px) scale(0.5) rotate(-145deg);    opacity: 1;   }   0.65% { opacity: 0;    }   100% {}  }  @keyframes mobile_tabcafe {   0% {}   0.6% {     transform: translate(0,-100px) scale(0.2) rotate(-145deg);    opacity: 1;   }   0.65% { opacity: 0;    }   100% {}  }  @keyframes mobile_optionbtn1 {   0% {}   0.6% {     transform: translate(-65px,-10px) scale(0.5);    opacity: 1;   }   0.65% { opacity: 0;    }   100% {}  }  @keyframes mobile_optionbtn2 {   0% {}   0.6% {     transform: translate(-100px,-10px) scale(0.5);    opacity: 1;   }   0.65% { opacity: 0;    }   100% {}  }  @keyframes fall-nickzzal {   0% { }   0.5% {    transform: translate(120px,150px) rotate(200deg) rotateX(60deg) rotateY(60deg) scale(0.2);    opacity: 1;   }   0.55% {    opacity: 0;   }   100% {    opacity: 0;   }  }    html, body { overflow: hidden; }  .sigong div {   width: 100%;  }  .sigong {   animation: scale-up 1000s linear infinite;   width: 100%;   z-index: 1000;   display: table-cell;  }  .hos {   position: absolute;   width: 100%;   left: 0;   opacity: 0;   z-index: -1;   animation: 1000s appear-hos linear 23s;  }  .mobilebox {   position: absolute;   display: table;   top: 0;   left: 0;   width: 100%;   height: 375px;   vertical-align: middle;  }  .list_cmt > li:nth-child(1) {   position: relative;   animation: 1000s mobile_comment1 linear 6s;   z-index: 2000;  }  .list_cmt > li:nth-child(2) {   position: relative;   animation: 1000s mobile_comment2 linear 6.4s;   z-index: 2000;  }  .list_cmt > li:nth-child(3) {   position: relative;   animation: 1000s mobile_comment3 linear 6.8s;   z-index: 2000;  }  .list_cmt > li:nth-child(4) {   position: relative;   animation: 1000s mobile_comment4 linear 7.2s;   z-index: 2000;  }  .list_cmt > li:nth-child(5) {
		position: relative;
		animation: 1000s mobile_comment5 linear 7.6s;
		z-index: 2000;
	}
	.view_subject {
		animation: 1000s mobile_subject linear 10s;
		z-index: 2000;
	}
	.cafe_navi	{
		animation: 1000s mobile_navi linear 7s;
		z-index: 2000;
	}
	.tab_cafe {
		animation: 1000s mobile_tabcafe linear 9s;
		z-index: 2000;
		position: relative;
	}
	.detail_btns {
		animation: 1000s mobile_optionbtn1 linear 6s;
		z-index: 2000;
		position: relative;
	}
	.article_more {
		animation: 1000s mobile_optionbtn2 linear 6.5s;
		z-index: 2000;
		position: relative;
	}
}
</style>

<div class="mobilebox">
	<div class="sigong">
		<div class="sigong_detail1"></div>
		<div class="sigong_detail2"></div>
	</div>
	<div class="hos"></div>
</div>
<div>

<div style="display: none;">
	<audio autoplay="true" controls="" class="attach_audio" src="http://cdh0912.github.io/assets/files/시공의 폭풍은 정말 최고야.mp3" type="audio/mpeg"></audio>
	<audio autoplay="true" controls="" class="attach_audio" src="http://cdh0912.github.io/assets/files/시공좋아시공좋아.mp3" type="audio/mpeg"></audio>
</div>
	 	<!-- -->
							<!-- end clix_content -->
				</div></div></td></tr></tbody>
            <br>
            <a href="#about" class="btn btn-dark btn-lg">Find Out More</a>
        </div>
	</header>

    <!-- About -->
    <section id="about" class="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2> 회사소개 </h2><br>
                    <p class="lead" FONT face="Arial Black">비트교육센터 출신의 학생들이 구현한 협업프로그램의 똑똑한 귀요미 "CHAPPIE"</p>
                    <br>
                    <br>
                    <h2> 팀원소개 </h2>
                    <br>
					<br /><h2>"how is the weather in sunnyvale"</h2><br />
		<iframe width="350" height="430"
			src="https://console.api.ai/api-client/demo/embedded/ad805c6c-889c-4c68-b0e6-668a13eed289">
		</iframe>
		
                    <div class="w3-card-2 w3-round w3-white w3-center">
                      <div class="w3-container w3-quarter padding-5">
                        <span>한청화</span><br><br>
                        
                        <img src="../resources/img/hch.jpg" alt="Avatar" style="width:70%"><br>
                        <ul style="list-style-type:none; float: right">
                        <br>
                        <li> 팀장 & 챗봇 개발자 </li>
                        <li> buzzbylove@gmail.com </li>
                        </ul>
                        <div class="w3-row w3-opacity">
                          <div class="w3-half">
                            <button class="w3-button w3-block w3-green w3-section" title="Accept"><i class="fa fa-check"></i></button>
                          </div>
                          <div class="w3-half">
                            <button class="w3-button w3-block w3-red w3-section" title="Decline"><i class="fa fa-remove"></i></button>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="w3-card-2 w3-round w3-white w3-center">
                      <div class="w3-container w3-quarter padding-5">
                        <span>이용현</span><br><br>
                        <img src="../resources/img/profile-1.jpg" alt="Avatar" style="width:70%"><br>

                        <ul style="list-style-type:none; float: right">
                        <br>
                        <li> 백엔드개발자 </li>
                        <li> jin98003@gmail.com </li>
                        </ul>
                        <div class="w3-row w3-opacity">
                          <div class="w3-half">
                            <button class="w3-button w3-block w3-green w3-section" title="Accept"><i class="fa fa-check"></i></button>
                          </div>
                          <div class="w3-half">
                            <button class="w3-button w3-block w3-red w3-section" title="Decline"><i class="fa fa-remove"></i></button>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="w3-card-2 w3-round w3-white w3-center">
                      <div class="w3-container w3-quarter padding-5">
                        <span>김용현</span><br><br>
                        <img src="../resources/img/kyh.jpg" alt="Avatar" style="width:70%"><br>

                        <ul style="list-style-type:none; float: right">
                        <br>
                        <li> 챗봇 개발자 </li>
                        <li> jin98003@gmail.com </li>
                        </ul>
                        <div class="w3-row w3-opacity">
                          <div class="w3-half">
                            <button class="w3-button w3-block w3-green w3-section" title="Accept"><i class="fa fa-check"></i></button>
                          </div>
                          <div class="w3-half">
                            <button class="w3-button w3-block w3-red w3-section" title="Decline"><i class="fa fa-remove"></i></button>
                          </div>
                        </div>
                      </div>
                    </div>


                    <div class="w3-card-2 w3-round w3-white w3-center">
                      <div class="w3-container w3-quarter padding-5">
                        <span>장예찬</span><br><br>
                        <img src="../resources/img/jyc.jpg" alt="Avatar" style="width:70%"><br>

                        <ul style="list-style-type:none; float: right">
                        <br>
                        <li> 프론트앤드개발&디자이너 </li>
                        <li> yc319@naver.com </li>
                        </ul>
                        <div class="w3-row w3-opacity">
                          <div class="w3-half">
                            <button class="w3-button w3-block w3-green w3-section" title="Accept"><i class="fa fa-check"></i></button>
                          </div>
                          <div class="w3-half">
                            <button class="w3-button w3-block w3-red w3-section" title="Decline"><i class="fa fa-remove"></i></button>
                          </div>
                        </div>
                      </div>
                    </div>

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
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-cloud fa-stack-1x text-primary"></i>
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
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-compass fa-stack-1x text-primary"></i>
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
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-flask fa-stack-1x text-primary"></i>
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
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-shield fa-stack-1x text-primary"></i>
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
                    <h3>The buttons below are impossible to resist.</h3>
                    <a href="#" class="btn btn-lg btn-light">Click Me!</a>
                    <a href="#" class="btn btn-lg btn-dark">Look at Me!</a>
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
                    <h4><strong>Start Bootstrap</strong>
                    </h4>
                    <p>3481 Melrose Place
                        <br>Beverly Hills, CA 90210</p>
                    <ul class="list-unstyled">
                        <li><i class="fa fa-phone fa-fw"></i> (123) 456-7890</li>
                        <li><i class="fa fa-envelope-o fa-fw"></i> <a href="mailto:name@example.com">name@example.com</a>
                        </li>
                    </ul>
                    <br>
                    <ul class="list-inline">
                        <li>
                            <a href="#"><i class="fa fa-facebook fa-fw fa-3x"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-twitter fa-fw fa-3x"></i></a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-dribbble fa-fw fa-3x"></i></a>
                        </li>
                    </ul>
                    <hr class="small">
                    <p class="text-muted">Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </div>
        <a id="to-top" href="#top" class="btn btn-dark btn-lg"><i class="fa fa-chevron-up fa-fw fa-1x"></i></a>
    </footer>
    </section>
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>


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
        $('a[href*=#]:not([href=#],[data-toggle],[data-target],[data-slide])').click(function() {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') || location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top
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
                        position: 'fixed',
                        display: 'block'
                    });
                });
            }
        } else {
            if (fixed) {
                fixed = false;
                $('#to-top').hide("slow", function() {
                    $('#to-top').css({
                        display: 'none'
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
