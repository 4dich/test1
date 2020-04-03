<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>NISSA - PHOTOGRAPHY STUDIO HTML TEMPLATE</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="/webapp/resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="/webapp/resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="/webapp/resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="/webapp/resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="/webapp/resources/css/style.css"/>
	<link rel="stylesheet" href="/webapp/resources/css/admin_qna.css"/>
	<link rel="stylesheet" href="/webapp/resources/css/admin_notice.css"/>
	
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
		
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

	<style>
		.infoMenu{font-size: 16px;}
		button{font-size:14px;}
		#searchArea{width: 316px; margin-top: 0px; }
		tr{height: 58px;}
		.blog-posts{height: 800px;}
		a{text-decoration: none; color: black;}
	</style>
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Main section start -->
	<div class="main-site-warp">

		<c:import url="../common/ad_menuBar.jsp"/>
	
		
		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
			 <!-- 로고구역 -->		
			 <div class="mb-warp">
                <a href="'indexView.do'" class="site-logo">
                    <h2 style="margin-left: 6px;">위대한 한걸음</h2>
                    <p style="padding-top: 15px;">THE GREAT ONE STEP</p>
                </a>

					<div class="about-info">
						<h2>공지사항</h2>
						<a href="pay.html" id="ad_pay" class="infoMenu">결제정보</a><br><br>
						<a href="adminProfile.html" id="ad_profile" class="infoMenu">회원정보</a><br><br>
						<a href="ad-chal.html" id="ad_challenge" class="infoMenu">챌린지 정보</a><br><br>
						<a href="ad-cert.html" id="ad_certify" class="infoMenu">인증글 정보</a><br><br>
						<a href="admin_qna.html" id="ad_questions" class="infoMenu">문의사항</a><br><br>
					</div>
					
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section blog-page">
				<div class="blog-posts">
					
					<div class="blog-post-item">
						<button class="site-btn sb-dark" style="width: 280px; font-size: 15px; margin-bottom: 40px;" type="button" onclick="location.href='adInsertView.do'">
							공지사항 등록하기							
						</button>
						<div id="searchArea">
							
							<div id="searchSelect"> 
								<select name="adNoticeSearch" id="adNoticeSearch">
									<option>작성자</option>
									<option>제목</option>
								</select>					
							</div>
							<!-- 검색 -->
							<input class="searchBox" type="search" id="adNoticeSerchWord">
							<button onclick="location.href='adNoticeSearch.do'">
								<img src="../resources/img/main/search.png" alt="">
							</button>
						</div>


						<!-- 공지사항 테이블 -->
						<table class="noticeTable">
							
							<tr class="thArea">								
								<th>NO</th>								
								<th>제목</th>
								<th>작성자</th>
								<th>날짜</th>
								<th>조회수</th>
							</tr>
							
							<c:forEach var="noticeList" itmes="${ list }">
							
							<!-- 반복문 예정 -->
							<tr class="noticeList">
								<td>1</td>								
								<td><a href="admin_noticeDetail.html"> 공지사항제목입니다.</a></td>
								<td>현스델리</td>
								<td>2020-03-25</td>
								<td>1</td>
							</tr>

							<!-- 나중에 삭제할거 -->
							<tr class="noticeList">
								<td>1</td>								
								<td>공지사항제목입니다.</td>
								<td>현스델리</td>
								<td>2020-03-25</td>
								<td>1</td>
							</tr>
							<tr class="noticeList">
								<td>1</td>								
								<td>공지사항제목입니다.</td>
								<td>현스델리</td>
								<td>2020-03-25</td>
								<td>1</td>
							</tr>
							<tr class="noticeList">
								<td>1</td>								
								<td>공지사항제목입니다.</td>
								<td>현스델리</td>
								<td>2020-03-25</td>
								<td>1</td>
							</tr>
							<tr class="noticeList">
								<td>1</td>								
								<td>공지사항제목입니다.</td>
								<td>현스델리</td>
								<td>2020-03-25</td>
								<td>1</td>
							</tr>
							<tr class="noticeList">
								<td>1</td>								
								<td>공지사항제목입니다.</td>
								<td>현스델리</td>
								<td>2020-03-25</td>
								<td>1</td>
							</tr>
							<tr class="noticeList">
								<td>1</td>								
								<td>공지사항제목입니다.</td>
								<td>현스델리</td>
								<td>2020-03-25</td>
								<td>1</td>
							</tr>



							<!-- 삭제 끝 -->

						</table>
						
						<div class="noticePaging">
							<a>&lt;</a>&nbsp;&nbsp;&nbsp;&nbsp;
							<a>●</a>
							<a>●</a>
							<a>●</a>
							<a>●</a>
							<a>●</a>&nbsp;&nbsp;&nbsp;&nbsp;
							<a>></a>
						</div>
					</div>
				</div>
			</div>
			<!-- Page end -->
		</div>
		<div class="copyright"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
	</div>
	<!-- Main section end -->

	<!-- 리스트 짝수 배경색 변경 -->
	<script>
		$(document).ready(function(){
		  $('.qnaTable tr:even').css("backgroundColor","rgb(247, 247, 247)");   // even 짝수
		});
	</script>
	
	<!--====== Javascripts & Jquery ======-->
	<script src="/webapp/resources/js/jquery-3.2.1.min.js"></script>
	<script src="/webapp/resources/js/bootstrap.min.js"></script>
	<script src="/webapp/resources/js/owl.carousel.min.js"></script>
	<script src="/webapp/resources/js/jquery.nicescroll.min.js"></script>
	<script src="/webapp/resources/js/circle-progress.min.js"></script>
	<script src="/webapp/resources/js/jquery.magnific-popup.min.js"></script>
	<script src="/webapp/resources/js/main.js"></script>

	</body>
</html>
