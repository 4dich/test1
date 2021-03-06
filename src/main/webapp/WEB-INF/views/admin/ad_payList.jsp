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
		
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

	<style>
		.about-info{margin:0;}
		.infoMenu{font-size: 16px;}
		button{font-size:14px;}
		#searchArea{width: 316px; margin-top: 0px; }
		tr{height: 58px;}
		.blog-posts{height: 840px;}
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
		
	<c:import url="/WEB-INF/views/common/ad_menuBar.jsp" />

		<header class="header-section">
			<div class="nav-switch">
				<i class="fa fa-bars"></i>
			</div>
		
		</header>
		<div class="site-content-warp">
			<!-- Left Side section -->
			<div class="main-sidebar">
			
				<div class="mb-warp">
					<a href="indexView.do" class="site-logo">
						<h2 style="margin-left: 6px;">위대한 한걸음</h2>
						<p style="padding-top: 15px;">THE GREAT ONE STEP</p>
					</a>

					<div class="about-info">
						<h2>결제정보</h2>
						<a href="ad_noticeList.do" id="ad_notice" class="infoMenu">공지사항</a><br><br>
						<a href="qnaListView.do" id="qnaList" class="infoMenu">문의사항</a><br><br>
						<a href="mlist.do" id="mlist" class="infoMenu">회원정보</a><br><br>
						<a href="ad_challengeListView.do" id="ad_challenge" class="infoMenu">챌린지 정보</a><br><br>
						<a href="ad_certifyView.do" id="ad_certify" class="infoMenu">인증글 정보</a><br><br>
						<a href="blackList.do" id="ad_blackList" class="infoMenu">블랙리스트</a><br><br>
					</div>
					
					
				</div>
			</div>
			<!-- Left Side section end -->
			<!-- Page start -->
			<!-- Page start -->
			
			<input type="hidden" id="test" value="1">
			<input type="hidden" id="test3" value="2">
			
			<div class="page-section blog-page">
				<div class="blog-posts">
					
				<div class="blog-post-item">
						<button style="margin-top: 12px;" onclick="refundSelect();">환불하기</button>
					
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
					
					<div id="paylist">
						<!-- 문의사항 테이블 -->
						<table class="qnaTable">
							
							<tr class="thArea">
								<th>Check</th>
								<th>결제 번호</th>
								<th>챌린지명</th>
								<th>유저ID</th>
								<th>마감기한</th>
								<th>챌린지번호</th>
								<th>결제정보</th>
								<th style="cursor:pointer;">환급여부</th>
							</tr>
						
							
							<c:forEach var="l" items="${ list }">
							 <c:forEach var="p" items="${ l.chList }">
							<!-- 반복문 예정 -->
							<tr class="noticeList">
								<td><input type="checkbox" name="refund"></td>
								<td>${ l.pId }</td>
								<td>${ p.chName }</td>
								<td>${ l.userId }</td>
								<td>${ l.pDate }</td>
								<td>${ p.chId }</td>
								<td><button onclick="location.href='paydetail.do?pId=${ l.pId }'">정보</button></td>
								<td>${ l.refund_yn }</td>
							</tr>
							</c:forEach>
							</c:forEach>
							<!-- 삭제 끝 -->
						</table>
		
				<div class="qnaPaging">
						<!-- [이전] -->
				<c:if test="${ pi.currentPage eq 1 }">
				</c:if>
				<c:if test="${ pi.currentPage ne 1 }">
					<c:url var="before" value="paylist.do">
						<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
					</c:url>
					<a onclick="refundYn(0,${ pi.currentPage - 1 });"><</a>
				</c:if>
				
				<!-- 페이지 -->
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
						<div style="width:24px; height:24px; background:#242424; color:white; display:inline-block; border-radius:70%">${ p }</div>
					</c:if>
					
					<c:if test="${ p ne pi.currentPage }">
						
						<a onclick="refundYn(0,${p});">${ p }</a>
					</c:if>
				</c:forEach>
				
				<!-- [다음] -->
				<c:if test="${ pi.currentPage eq pi.maxPage }">
				</c:if>
				<c:if test="${ pi.currentPage ne pi.maxPage }">
					<c:url var="after" value="paylist.do">
						<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
					</c:url> 
					<a onclick="refundYn(0,${ pi.currentPage + 1 });">></a>
				</c:if>
						</div>
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
	
		$('.thArea').children().eq(7).click(function(){
			var reIdx = $('#test').val(); // 기본값 1
			$('#test').val(1 - $('#test').val()); // 클릭 시 값이 1 -> 0 - > 1순으로 순환함
			var currentPage = 1;
			refundYn(reIdx,currentPage);
		});
		
		$('#search').click(function(){
			var reIdx = $('#test3').val();
			var currentPage = 1;
			refundYn(reIdx,currentPage);
		});
		
		function refundYn(reIdx,currentPage){
			var searchValue = $('.searchBox').val();
			var selecter = $('#selecter').val();
			console.log(reIdx);
			console.log(currentPage);
			console.log(searchValue);
			console.log(selecter);
			$.ajax({
				url:"refundYn.do",
				type:"POST",
				data:{reIdx:reIdx,
					currentPage:currentPage,
					searchValue:searchValue,
					selecter:selecter
					  },success:function(result){
					console.log(result);
					$('.noticeList').remove();
					$('.qnaPaging').remove();
					$('.searchArea').remove();
									
					var listText = "";
					listText += "<table class='qnaTable'>";
					listText += "<tr class='thArea'>";
					listText += "<th>"+"Check"+"</th>";
					listText += "<th>"+"결제 번호"+"</th>";
					listText +=	"<th>"+"챌린지명"+"</th>";
					listText +=	"<th>"+"유저ID"+"</th>";
					listText +=	"<th>"+"마감기한"+"</th>";
					listText += "<th>"+"챌린지번호"+"</th>";
					listText +=	"<th>"+"결제정보"+"</th>";
					listText +=	"<th style='cursor:pointer;'>"+"환급여부"+"</th>";
					listText += "</tr>"
					var list = result["list"];
					console.log(list);
					for(var i = 0;  i <list.length; i++){
						listText += "<tr class='noticeList'>"
						listText += "<td><input type='checkbox' name='refund'></td>";
						listText += "<td>"+list[i].pId+"</td>";
						listText += "<td>"+list[i].chList[0].chName+"</td>";
						listText += "<td>"+list[i].userId+"</td>";
						listText += "<td>"+list[i].pDate+"</td>";
						listText += "<td>"+list[i].chList[0].chId+"</td>";
						listText += "<td><button onclick='location.href="+'"'+"paydetail.do?pId="+list[i].pId+'"'+"'>"+"정보"+"</button></td>";
						listText += "<td>"+list[i].refund_yn+"</td>";
						listText += "</tr>";
					} 
					listText += "</table>"
					// 페이징 처리
					   // [이전]
					 listText += "<div class='qnaPaging'>";
					   if(currentPage == 1){    
						   listText +=	"";
					   }else{
						   listText += "<a onclick='refundYn("+reIdx+","+ (currentPage - 1) +")'><</a> &nbsp;";
					   }
						// 페이지 
						for(var p= result.pi.startPage; p<= result.pi.endPage; p++){
							if(p == result.pi.currentPage){
								/* listText += "<font color='red' size='4'><b>["+ p +"]  </b></font>" +"&nbsp;" ; */
								listText += '<div style="width:24px; height:24px; background:#242424; color:white; display:inline-block; border-radius:70%">'+p+'</div>'
							}else{
								listText +=  "<a  onclick='refundYn("+reIdx+","+ p +")'>" + p + "</a> &nbsp;";
							}						
						}
						// [다음]
						if(currentPage == result.pi.maxPage){
							listText += "";
						}else{
							listText += "<a onclick='refundYn("+reIdx+","+ (currentPage + 1) +")'>></a>";
						}
						listText += "</div>";
						$('#paylist').html(listText);
						$('.qnaTable tr:even').css("backgroundColor","rgb(247, 247, 247"); //even 짝수
						$('.thArea').children().eq(7).click(function(){
							var reIdx = $('#test').val();
							$('#test').val(1 - $('#test').val());
							console.log(reIdx);
							var currentPage = 1;
							refundYn(reIdx,currentPage);
						});
				},error:function(){
					console.log("전송실패");
			}
			});
		}
		$(function(){
			$('.qnaTable tr:even').css("backgroundColor","rgb(247, 247, 247"); //even 짝수
		});
		
		var checkbox = $("input:checkbox[name=refund]:checked");	
		var nameList = "";
		
		function refundSelect(){
			
			var result = [];
			$('input:checkbox[name=refund]:checked').each(function(i){
				
			 
			var	td = $(this).parents().parents().children().eq(1).text();
			 
				result.push(td);
			 
			 });
			 $.ajax({
				 url:"refund.do",
				 type:"POST",
				 traditional : true,
				 data:{"result" : result },
				 success:function(result){
						alert('환불완료');
						location.reload();
		        	},error : function(request,errorcode,error){
		        		alert('환불실패');
					}
		        	
		        });
			
			 
			 console.log(result);
			 
		
			
		}
			
		
		
			
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
