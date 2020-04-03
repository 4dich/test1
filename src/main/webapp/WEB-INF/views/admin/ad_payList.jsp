<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>NISSA - PHOTOGRAPHY STUDIO HTML TEMPLATE</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="../resources/img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="../resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="../resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="../resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="../resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="../resources/css/style.css"/>
	<link rel="stylesheet" href="../resources/css/admin_qna.css"/>

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


		
	<%@ include file="/WEB-INF/views/common/ad_menuBar.jsp" %>


		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
		
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
			
				<div class="mb-warp">
					<a href="../homepage/index.html" class="site-logo">
						<h2 style="margin-left: 6px;">위대한 한걸음</h2>
						<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
					</a>

					<div class="about-info">
						<h2>결제정보</h2>
						<a href="adminProfile.html" id="ad_profile" class="infoMenu">회원정보</a><br><br>
						<a href="ad-chal.html" id="ad_challenge" class="infoMenu">챌린지 정보</a><br><br>
						<a href="ad-cert.html" id="ad_certify" class="infoMenu">인증글 정보</a><br><br>
						<a href="admin_notice.html" id="ad_notice" class="infoMenu">공지사항</a><br><br>
						<a href="admin_qna.html" id="ad_questions" class="infoMenu">문의사항</a><br><br>
					</div>
					
					
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<!-- Page start -->
			<div class="page-section blog-page">
				<div class="blog-posts">
					
					<div class="blog-post-item">
						<button style="margin-top: 12px;">환불하기</button>
						<div id="searchArea">
							<div id="searchSelect"> 
								<select name="" id="">
									<option>작성자</option>
									<option>챌린지명</option>
									<option>결제번호</option>
								</select>					
							</div>
							<!-- 검색 -->
							<input class="searchBox" type="search">
							<button><img src="../resources/img/main/search.png" alt=""></button>
						</div>


						<!-- 문의사항 테이블 -->
						<table class="qnaTable">
							
							<tr class="thArea">
								<th>Check</th>
								<th>결제 번호</th>
								<th>챌린지명</th>
								<th>유저ID</th>
								<th>마감기한</th>
								<th>결제여부</th>
								<th>결제정보</th>
								<th>환급여부</th>
							</tr>
							<!-- 반복문 예정 -->
							<tr class="noticeList">
								<td><input type="checkbox"></td>
								<td>dd241241</td>
								<td><a href="pay2.html">하루에 3번 팩하기</a></td>
								<td>knine22</td>
								<td>2020-03-20</td>
								<td>Y</td>
								<td><button>정보</button></td>
								<td>지급완료</td>
							</tr>

							<!-- 나중에 삭제할거 -->
							<tr class="noticeList">
								<td><input type="checkbox"></td>
								<td>dd241241</td>
								<td>하루에 3번 팩하기</td>
								<td>knine22</td>
								<td>2020-03-20</td>
								<td>Y</td>
								<td><button>정보</button></td>
								<td>지급완료</td>
							</tr>
							<tr class="noticeList">
								<td><input type="checkbox"></td>
								<td>dd241241</td>
								<td>하루에 3번 팩하기</td>
								<td>knine22</td>
								<td>2020-03-20</td>
								<td>Y</td>
								<td><button>정보</button></td>
								<td>지급완료</td>
							</tr>
							<tr class="noticeList">
								<td><input type="checkbox"></td>
								<td>dd241241</td>
								<td>하루에 3번 팩하기</td>
								<td>knine22</td>
								<td>2020-03-20</td>
								<td>Y</td>
								<td><button>정보</button></td>
								<td>지급완료</td>
							</tr>
							<tr class="noticeList">
								<td><input type="checkbox"></td>
								<td>dd241241</td>
								<td>하루에 3번 팩하기</td>
								<td>knine22</td>
								<td>Y</td>
								<td>Y</td>
								<td><button>정보</button></td>
								<td>미지급</td>
							</tr>
							<tr class="noticeList">
								<td><input type="checkbox"></td>
								<td>dd241241</td>
								<td>하루에 3번 팩하기</td>
								<td>knine22</td>
								<td>Y</td>
								<td>Y</td>
								<td><button>정보</button></td>
								<td>미지급</td>
							</tr>
							<tr class="noticeList">
								<td><input type="checkbox"></td>
								<td>dd241241</td>
								<td>하루에 3번 팩하기</td>
								<td>knine22</td>
								<td>Y</td>
								<td>Y</td>
								<td><button>정보</button></td>
								<td>미지급</td>
							</tr>
							<tr class="noticeList">
								<td><input type="checkbox"></td>
								<td>dd241241</td>
								<td>하루에 3번 팩하기</td>
								<td>knine22</td>
								<td>Y</td>
								<td>Y</td>
								<td><button>정보</button></td>
								<td>미지급</td>
							</tr>
							<tr class="noticeList">
								<td><input type="checkbox"></td>
								<td>dd241241</td>
								<td>하루에 3번 팩하기</td>
								<td>knine22</td>
								<td>Y</td>
								<td>Y</td>
								<td><button>정보</button></td>
								<td>미지급</td>
							</tr>
							<tr class="noticeList">
								<td><input type="checkbox"></td>
								<td>dd241241</td>
								<td>하루에 3번 팩하기</td>
								<td>knine22</td>
								<td>Y</td>
								<td>Y</td>
								<td><button>정보</button></td>
								<td>미지급</td>
							</tr>
							


							<!-- 삭제 끝 -->

						</table>
						
						<div class="qnaPaging">
							<a><</a>&nbsp;&nbsp;&nbsp;&nbsp;
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
	<script>
		$(function(){
			$('.qnaTable tr:even').css("backgroundColor","rgb(247, 247, 247"); //even 짝수
		});

	</script>
	
	<!--====== Javascripts & Jquery ======-->
	<script src="../resources/js/jquery-3.2.1.min.js"></script>
	<script src="../resources/js/bootstrap.min.js"></script>
	<script src="../resources/js/owl.carousel.min.js"></script>
	<script src="../resources/js/jquery.nicescroll.min.js"></script>
	<script src="../resources/js/circle-progress.min.js"></script>
	<script src="../resources/js/jquery.magnific-popup.min.js"></script>
	<script src="../resources/js/main.js"></script>

	</body>
</html>