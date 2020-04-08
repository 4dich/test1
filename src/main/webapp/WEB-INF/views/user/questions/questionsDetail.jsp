<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>NISSA - PHOTOGRAPHY STUDIO HTML TEMPLATE</title>
	<meta charset="UTF-8">
	<meta name="description" content="Nissa Photography studio html template">
	<meta name="keywords" content="industry, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Favicon -->
	<link href="resources/img/favicon.ico" rel="shortcut icon"/>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,900&display=swap" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
	<link rel="stylesheet" href="resources/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="resources/css/magnific-popup.css"/>
	<link rel="stylesheet" href="resources/css/owl.carousel.min.css"/>

	<!-- Main Stylesheets -->
	<link rel="stylesheet" href="resources/css/qnaDetail.css"/>
	<!-- <link rel="stylesheet" href="resources/css/left_section.css"/> -->
	<link rel="stylesheet" href="resources/css/style.css"/>

	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
		
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

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
			<div class="header-social">
				<!-- <a href=""><i class="fa fa-pinterest"></i></a>
				<a href=""><i class="fa fa-facebook"></i></a>
				<a href=""><i class="fa fa-twitter"></i></a>
				<a href=""><i class="fa fa-dribbble"></i></a>
                <a href=""><i class="fa fa-behance"></i></a> -->
                <a href="notice.html">��������</a>
                <a href="qna.html" style="color: red;">���ǻ���</a>
			</div>
		
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
			<!-- �ΰ� ���� -->
			<div class="mb-warp">
				<a href="index.html" class="site-logo">
					<h2 style="margin-left: 6px;">������ �Ѱ���</h2>
					<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
				</a>
			<!-- ����޴� -->
			<div class="about-info">
				<h2>���ǻ���</h2>
				<!-- ������ �ۼ� -->
				<p>������ �Ѱ����� �ñ����� ����Ŵٸ� <br>
				�������� �������ּ���! </p>
			</div>
			<ul class="contact-info">
				<li>����Ư���� ������ ���ض���14�� 6</li>
				<li>�������� 3F H�� T:1544-9970</li><br>
				<li><a href="mailto:contactme@myemail.com">contactme@myemail.com</a></li>
			</ul>
					
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<div class="page-section blog-page">
				<div class="blog-posts">
					<div class="arrowBack">
						<a href="noticeList.do">
							<img src="resources/images/arrow-righ-3.png" alt="">
						</a>
					</div>
					<br>
					<div class="blog-post-item">

						<div class="qnaInfo">
							<div class="qnaInfoArea">

								<table class="detailArea">
									<tr class="qnaNumber">
										<td>��ȣ</td>
										<td>${n.nId}</td>
									</tr>
									<tr class="qnaTitleArea">
										<td class="qnaTitle1">����</td>
										<td class="qnaTitle2">${n.nTitle}</td>
									</tr>
									<tr class="qnaUserNameArea">
										<td class="qnaUserName1">�ۼ��ڸ�</td>
										<td class="qnaUserName2">${n.nWriter}</td>
									</tr>
									<tr class="qnaDateArea">
										<td class="qnaDate1">��ϳ�¥</td>
										<td class="qnaDate2">${n.nDate}</td>
									</tr>
									<tr class="qnaTextBox">
										<td class="qnaTextArea"  colspan="2"> 
										${n.nContent}
										</td>
									</tr>							
									
								</table>								
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
	</div>
	<!-- Main section end -->

	<!-- ����Ʈ ¦�� ���� ���� -->
	<script>
		$(document).ready(function(){
		  $('.qnaTable tr:even').css("backgroundColor","rgb(247, 247, 247)");   // even ¦��
		});
	</script>
	
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
