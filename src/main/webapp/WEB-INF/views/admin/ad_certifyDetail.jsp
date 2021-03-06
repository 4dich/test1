<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<link rel="stylesheet" href="resources/css/bootstrap.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/style.css"/>
	<link rel="stylesheet" href="resources/css/padding.css"/>
	<!-- 
	<link rel="stylesheet" href="resources/css/admin_qna.css"/> -->
	

	<!-- 피드 상세보기 CSS -->
	<link rel="stylesheet" href="resources/css/fidDetail-sr.css"/>
	<link rel="stylesheet" href="resources/css/font.css"/>
	<link rel="stylesheet" href="resources/css/adminmargin.css"/>
	<!-- 회원전용 사이드바 CSS -->
	<!-- <link rel="stylesheet" href="resources/css/main.css"/> -->
	
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
	<style>
	.infoMenu{
		list-style: none;
		color: black;
	}
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
		
		<%@ include file="/WEB-INF/views/common/menuBar.jsp" %>

		
		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>		
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
                    <!-- 로고 구역 -->
				<div class="mb-warp">
					<a href="indexView.do" class="site-logo">
						<h2 style="margin-left: 6px;">위대한 한걸음</h2>
						<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
					</a>
                    <!-- 서브메뉴 -->
					<div class="about-info">
						<h2>인증글 정보</h2>
						<a href="ad_noticeList.do" id="ad_notice" class="infoMenu">공지사항</a><br><br>
						<a href="qnaListView.do" id="qnaList" class="infoMenu">문의사항</a><br><br>
						<a href="mlist.do" id="mlist" class="infoMenu">회원정보</a><br><br>
						<a href="paylist.do" id="ad_pay" class="infoMenu">결제정보</a><br><br>
						<a href="ad_challengeListView.do" id="ad_challenge" class="infoMenu">챌린지 정보</a><br><br>
						<a href="blackList.do" id="ad_blackList" class="infoMenu">블랙리스트</a><br><br>
					</div>
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section elements-page">
				<div class="elements-section">
					<div class="col-md-12"> 
						<div class="col-md-10"> 
							<div class="card">								
								<!-- 피드 사용자 정보창 -->								
								<div class="card-header">										
									<ul class="chat-list">
										<li class="in">
											<div class="chat-img" style="width: 70px;">
												<img alt="Avtar" src="resources/images/user/01.jpg">
											</div>
											<div class="chat-body">
												<div style="margin-top: 15px;">
													<h4 style="color: white;">
														${ c.ceContent }
														<a href="mypageProfile.html" style="color:white" class="fa fa-home"></a>
													</h4>
													<br>
													<h6 style="color: white;">
														주 3회 팩하기
														<span class="unread">자기개발</span>
													</h6>
													<p style="color: white;">${ c.ceDate }</p>
													<p style="color: white;">비공개여부 : ${ c.ceDel }</p>
												</div>
											</div>
										</li>
									</ul>
								</div>
								
								<!-- 사진 나오는 곳 -->
								<div class="card-body profile-userpic" style="text-align: center;">
									<img src="resources/images/certify/${c.cePicture}" class="img-responsive" alt=""> 
								</div>

								<!-- 본문 나오는 곳 -->
								<div class="card-body">
									<span>
									
									</span>
								</div>																	
							</div>
						</div> 
						
						<!-- 댓글 -->
						<div class="col-md-10"> 
							<div class="portlet light bordered">
								<div class="portlet-title tabbable-line"></div>
								<div class="portlet-body">
									<div>									
										<!-- 댓글 쓰기 -->
										<div class="tab-content">
											<div role="tabpanel" class="tab-pane active" id="home" align="center">
												<!-- <form> -->
													<div class="form-group" style="text-align: right;">														
														
														<button id="btnNotOpen" class="site-btn sb-dark" style="padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px; margin-top:10px;">
															비공개 여부
														</button>
														<button id="btnList" class="site-btn sb-dark" type="button" onclick="location.href='ad_certifyView.do'" style="padding-left:15px; padding-right: 15px; min-width:120px; padding-top:10px; padding-bottom: 10px; margin-top:10px;">
															목록가기
														</button>
													</div>
												<!-- </form> -->
											</div>
										</div>

										<!-- 댓글 읽기 -->
										<div class="card" style="margin-bottom: 20px;">
											<div class="card-body">
											
												<div class="row">		
													<div class="be-comment-block">
														<h1 class="comments-title"></h1>
														
													</div>	
													
																					
													<div id="commentbody" class="media g-mb-30 media-comment" style="display: inline-block;">
														
													</div>
													
													
												</div>
												
											</div>
										</div>
										
										
										
									</div>
								</div>
							</div>
						</div>
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
	
	<script>
	$(function(){
		$("#btnNotOpen").on("click",function(){
			alert("해당 인증사진을 비공개 처리하시겠습니까?");
			location.href="ad_certifyDetailUpdate.do?ceId="+ ${c.ceId};
		});
		$("#btnList").on("click",function(){
			location.href="ad_certifyView.do?currentPage="+${currentPage};
		});
		
		var ceId = ${c.ceId};
		console.log("anj");
		
		$.ajax({
			url : "replyList.do",
			data : {ceId:ceId},
			//  	속성명 : 위에 선언된 변수명
			dataType: "json",
			success : function(data){
				$divBody = $("#commentbody");
				$divBody.html("");
				
				var $img;
				var $mediaBody;
				var $gmb;
				var $h5;
				var $span;
				var $p;
				var $rdiv;
				
				$(".comments-title").text("댓글("+ data.length +")");
				console.log(data);
				if(data.length > 0){
					for(var i in data){
						console.log(data[i]);
  						$img = $("<img class='d-flex g-width-50 g-height-50 rounded-circle g-mt-3 g-mr-15' alt='Image Description'>");
 						$img.attr('src','resources/images/user/'+ data[i].picture);
 						$mediaBody = $("<div class='media-body u-shadow-v18 g-bg-secondary g-pa-30'>");
						$gmb = $("<div class='g-mb-15'>");
						$h5 = $("<h5 class='h5 g-color-gray-dark-v1 mb-0'>").text(data[i].userId);
						$span = $("<span class='g-color-gray-dark-v4 g-font-size-12'>").text(data[i].ccDate);
						$p = $("<p>").text(data[i].ccContent);
						$rdiv = $("<div style='width: 100%; display: inline-flex;margin-bottom: 10px;'>");
						
						$gmb.append($h5);
						$gmb.append($span);
						$mediaBody.append($gmb);
						$mediaBody.append($p);
						
						$rdiv.append($img);
						$rdiv.append($mediaBody);	
						$divBody.append($rdiv);
					}
				}else{
					$div = $("<div>");
					$content = $("<p>").text("등록된 댓글이 없습니다.")
					
					$div.append($content);
					$divBody.append($div);
				}
				
			},error:function(){
				console.log("전송실패");
			}
		});
	});
	
	
	</script>

	</body>
</html>
