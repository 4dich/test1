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
	<link href="resources/images/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
    <link rel="stylesheet" href="resources/css/follow.css"/>
    <link rel="stylesheet" href="resources/css/style.css"/>


	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Main section start -->
	<div class="main-site-warp">
        
        
		
		<%@ include file="/WEB-INF/views/common/menuBar.jsp" %>

		
        
        <!-- 메뉴 끝 -->
        

		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
			<div class="header-social">
				<!-- <a href=""><i class="fa fa-pinterest"></i></a>
				<a href=""><i class="fa fa-facebook"></i></a>
				<a href=""><i class="fa fa-twitter"></i></a>
				<a href=""><i class="fa fa-dribbble"></i></a>
                <a href=""><i class="fa fa-behance"></i></a> -->
                <a href="fidRecommend.html" >추천피드</a>
                <a href="fidFriend.html">친구피드</a>
                <a href="follow.html" style="color: red;">팔로우</a>
			</div>
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
				<div class="mb-warp">

                    <a href="index.html" class="site-logo">
                        <h2 style="margin-left: 6px;">위대한 한걸음</h2>
                        <p style="padding-top: 15px;">THE GREAT ONE STEP</p>
                    </a>

					<div>
						<input type="textarea" style="width: 300px; height: 50px; border-radius: 3px; border:3px solid #242424" placeholder="유저를 검색해주세요">
						<a href="#" class="site-btn2">
						<img src="resources/images/main/search.png" alt=""></a>
					</div>
					<br><br>

					<!-- 서브메뉴 -->
					<div class="about-info">
						<h2>팔로우</h2>
                        <!-- 감성글 작성 -->
                        <p>내가 추가한 친구 리스트를 확인할 수 있습니다. <br>
                        어떤 친구들을 팔로우하고 있는지 <br>
                        확인해볼까요?
                     </p>
					</div>
					<ul class="contact-info">
						<li>서울특별시 강남구 테해란로14길 6</li>
						<li>남도빌딩 3F H반 T:1544-9970</li><br>
						<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
					</ul>
                    

					<!-- <a href="index.html" class="site-logo">
						<h2>Nissa</h2>
						<p>Photography Studio</p>
					</a>
					<div class="about-info">
						<h2>My name is Michael Smith.</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus libero mauris, bibendum eget sapien ac, ultrices rhoncus ipsum. Donec nec sapien in urna fermentum ornare. Morbi vel ultrices leo. Sed eu turpis eu arcu vehicula fringilla ut vitae orci. Suspendisse maximus malesuada  </p>
					</div>
					<ul class="contact-info">
						<li>1525  Boring Lane, Los Angeles, CA</li>
						<li>+34 56672 9984 22</li>
						<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
					</ul>
					<a href="#" class="site-btn">see my portfolio <img src="img/arrow-right.png" alt=""></a>
				 --></div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section portfolio-page">
				<div class="portfolio-section">
					<div class="row">
						<!-- <div class="col-xl-4">
							<div class="portfolio-item">
								<img src="img/portfolio/1.jpg" alt="#">
								<div class="pi-info">
									<h5>Ice Cold Love</h5>
									<p>Nature Photoagraphy</p>
									<a href="#"><img src="img/arrow-right.png" alt=""></a>
								</div>
							</div>
							<div class="portfolio-item">
								<img src="img/portfolio/4.jpg" alt="#">
								<div class="pi-info">
									<h5>Ice Cold Love</h5>
									<p>Nature Photoagraphy</p>
									<a href="#"><img src="img/arrow-right.png" alt=""></a>
								</div>
							</div>
						</div> -->
						<!-- <div class="col-xl-8">
							<div class="row">
								<div class="col-md-6">
									<div class="portfolio-item">
										<img src="img/portfolio/2.jpg" alt="#">
										<div class="pi-info">
											<h5>Ice Cold Love</h5>
											<p>Nature Photoagraphy</p>
											<a href="#"><img src="img/arrow-right.png" alt=""></a>
										</div>
									</div>
								</div>
								<div class="col-lg-6">
									<div class="portfolio-item">
										<img src="img/portfolio/3.jpg" alt="#">
										<div class="pi-info">
											<h5>Ice Cold Love</h5>
											<p>Nature Photoagraphy</p>
											<a href="#"><img src="img/arrow-right.png" alt=""></a>
										</div>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="portfolio-item">
										<img src="img/portfolio/5.jpg" alt="#">
										<div class="pi-info">
											<h5>Ice Cold Love</h5>
											<p>Nature Photoagraphy</p>
											<a href="#"><img src="img/arrow-right.png" alt=""></a>
										</div>
									</div>
								</div>
							</div>
                        </div>	 -->
                        
                        <!-- 팔로우 영역 -->

                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <a href="mypageProfile.html">
                                    <div class="followButton">
                                        프로필 가기
                                    </div>
                                </a>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>

                        <!-- 나중에 지울거 -->
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>
                        <div class="follow">
                            <div class="followArea">
                                <div class="followUserInfo">
                                    <img src="resources/images/fid/2.png" alt="">
                                    &nbsp;&nbsp; 현스델리
                                </div>
                                <div class="followButton">
                                    팔로잉
                                </div>
                            </div>

                        </div>

                        <!-- 지울거 끝 -->

                       


					</div>
				</div>
			</div>
			<!-- Page end -->
		</div>
		<div class="copyright"><p>Copyright &copy;<script>document.write(new Date().getFullYear());</script> 
            All rights reserved </p></div>
        </div>
	<!-- Main section end -->
	
	<!--====== Javascripts & Jquery ======-->
	<script src="resources/js/jquery-3.2.1.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/owl.carousel.min.js"></script>
	<script src="resources/js/jquery.nicescroll.min.js"></script>
	<script src="resources/js/circle-progress.min.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/main.js"></script>

	</body>
</html>