<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>WEHAN - 위대한 한걸음</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link href="resources/images/sitelogo.png" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/style.css"/>
	<link rel="stylesheet" href="resources/css/admin_qna.css"/>
	<link rel="stylesheet" href="resources/css/font.css"/>
	<link rel="stylesheet" href="resources/css/adminmargin.css"/>
	<link rel="stylesheet" href="resources/css/padding.css"/>
	
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
		
		<script src="resources/js/jquery-3.2.1.min.js"></script>

	<style>
		.infoMenu{font-size: 16px;}
		button{font-size:14px;}
		#searchArea{width: 316px; margin-top: 0px; }
		tr{height: 58px;}
		.blog-posts{height: 800px;}
		a{text-decoration: none; color: black;}
		.about-info{margin:0;}
	</style>
</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Main section start -->
	<div class="main-site-warp">
	
		
		
		
		<c:import url="/WEB-INF/views/common/ad_menuBar.jsp" />
		
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
                <a href="indexView.do" class="site-logo">
                    <h2 style="margin-left: 6px;">위대한 한걸음</h2>
                    <p style="padding-top: 15px;">THE GREAT ONE STEP</p>
                </a>

					<div class="about-info">
						<h2>공지사항</h2>
						<a href="qnaListView.do" id="qnaList" class="infoMenu">문의사항</a><br><br>
						<a href="mlist.do" id="mlist" class="infoMenu">회원정보</a><br><br>
						<a href="paylist.do" id="ad_pay" class="infoMenu">결제정보</a><br><br>
						<a href="ad_challengeListView.do" id="ad_challenge" class="infoMenu">챌린지 정보</a><br><br>
						<a href="ad_certifyView.do" id="ad_certify" class="infoMenu">인증글 정보</a><br><br>
						<a href="blackList.do" id="ad_blackList" class="infoMenu">블랙리스트</a><br><br>
					</div>
					
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section blog-page">
				<div class="blog-posts">
					
					<div class="blog-post-item">
						<button class="site-btn sb-dark" style="width: 170px; font-size: 15px;" type="button" onclick="location.href='ad_noticeInsertView.do'">
							등록하기							
						</button>
					<!-- 	<div id="searchArea" style=height:52px;>		
							<form action="ad_searchNotice.do">					
								<div id="searchSelect"> 
									<select name="adSearchNotice" id="searchNotice">
										<option value="title">제목</option>
										<option value="content">내용</option>
									</select>					
								</div>
								검색
								<input class="searchBox" type="search" name="adNoticeSerchWord" style="height:31px; width:55%">
								<button>
									<img src="resources/images/main/search.png" alt="">
								</button>
							</form>
						</div> -->
 						<div id="searchArea">
							<div id="searchSelect"> 
								<select name="selecter" id="selecter">
									<option value="userId">유저ID</option>
									<option value="chName">챌린지명</option>
									<option value="pNo">결제번호</option>
									<option value="chId">챌린지번호</option>
								</select>					
							</div>
							<!-- 검색 -->
							<input class="searchBox" type="search" name="searchValue">
							<button id="search"><img src="resources/images/main/search.png" alt=""></button>
						</div>
    
						<!-- 공지사항 테이블 -->
						<table class="qnaTable" style="margin-bottom:30px;">
							
							<tr class="thArea" style="border-bottom:2px solid black;">								
								<th>NO</th>								
								<th>제목</th>
								<th>작성자</th>
								<th>날짜</th>
								<th>조회수</th>
							</tr>
							
							<!-- 반복문 예정 -->
							
							<c:forEach var="n" items="${list}">
								<tr class="noticeList">
									
									<td>
										<input type="hidden" value="${n.nId}">
										${n.nId}
									</td>									
									<td style="text-align:left">${n.nTitle}</td>
									<td>${n.nWriter}</td>
									<td>${n.nDate}</td>
									<td>${n.nCount}</td>
								</tr>	
							</c:forEach>	
           
							
         
						</table>
						<!-- 페이징 처리 -->
						<!-- 이전 -->
						<div class="qnaPaging">
							<c:if test="${pi.currentPage eq 1 }">
							</c:if>
							<c:if test ="${pi.currentPage ne 1 }">
								<c:url var="before" value="ad_noticeList.do">
									<c:param name="currentPage" value="${pi.currentPage - 1}"/>
								</c:url>
								<a href="${ before }"><</a>
							</c:if>
					 		
							<!-- 페이지 -->
							<c:forEach var="p" begin="${pi.startPage}" end="${pi.endPage }">
								<c:if test="${ p eq pi.currentPage }">
									<div style="width:24px; height:24px; background:#242424; color:white; display:inline-block; border-radius:70%">${ p }</div>
								</c:if>
								
								<c:if test="${ p ne pi.currentPage }">
									<c:url var="pagenation" value="ad_noticeList.do">
										<c:param name="currentPage" value="${p}"/>
									</c:url>
									<a href="${ pagenation }">${p}</a>
								</c:if>
							</c:forEach>
							
							<!-- 다음 -->
							<c:if test="${pi.currentPage eq pi.maxPage }">
							</c:if>
							<c:if test="${pi.currentPage ne pi.maxPage }">
								<c:url var="after" value="ad_noticeList.do">
									<c:param name="currentPage" value="${pi.currentPage + 1 }"/>
								</c:url>
								<a href="${after}">></a>
							</c:if>
					</div>
				</div>
			</div>
			<!-- Page end -->
		</div>
		<div class="copyright"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
	</div>
	</div>
	<!-- Main section end -->

	<!-- 리스트 짝수 배경색 변경 -->
	<script>
		$(document).ready(function(){
		  $('.qnaTable tr:even').css("backgroundColor","rgb(247, 247, 247)");   // even 짝수
		});
		
		$('.qnaTable td').click(function(){
			var nId = $(this).parent().children().find("input[type=hidden]").val();
			var currentPage = ${pi.currentPage};
			
			location.href="ad_noticeDetail.do?nId="+nId+"&currentPage=" + currentPage;
		});
	</script>
	
	<!--====== Javascripts & Jquery ======-->

	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.nicescroll.min.js"></script>
	<script src="resources/js/circle-progress.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/main.js"></script>

	</body>
</html>
