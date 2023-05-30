
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title href="/board">Community</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&family=Rubik:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="/resources/lib/animate/animate.min.css" rel="stylesheet">


<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
<link href="/resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
	
</head>
<body>


	<%@ include file="./header.jsp"%>



	<!-- Navbar Start -->
	<div class="container-fluid  position-relative p-0">


		<div class="container-fluid bg-primary py-5 bg-header"
			style="margin-bottom: 90px;">
			<div class="row py-5">
				<div class="col-12 pt-lg-5 mt-lg-5 text-center">
					<h1 class="display-2 text-white animated zoomIn">Community</h1>
					<!-- <a href="" class="h5 text-white">Home</a> -->
					<!--  <i class="far fa-circle text-white px-2"></i>
                    <a href="" class="h5 text-white ">카드 뉴스</a> -->
					<%-- <h2 class="display-6 text-white animated zoomIn">전체 ${count+1}건 </h2> --%>

				</div>
			</div>
		</div>
	</div>
	<!-- Navbar End -->
	
	
	<!-- start -->
	<div id="mainWrapper">
		<ul>
			<!-- 게시판 제목 -->
			<li>Community</li>
			<!-- 검색 폼 영역 -->
			<li id="liSearchOption">
    <div class="SearchDiv">
        <select id="selSearchOption">
            <option value="ARTICLE_TITLE">제목</option>
            <option value="ARTICLE_CONTENT">내용</option>
        </select>

        <fieldset class="field-container">
            <input type="text" placeholder="Search..." class="field">
            <div class="icons-container">
                <div class="icon-search"></div>
                <div class="icon-close">
                    <div class="x-up"></div>
                    <div class="x-down"></div>
                </div>
            </div>
        </fieldset>

        <button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>
    </div>
</li> 
				<table id="ulTable">
					<thead>
						<tr>
							<th>No</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="contactBoard" items="${articles}">
							<tr>
								<td>${contactBoard.articlePk}</td>
								<td><a
									href="/board/detailreview?ARTICLE_PK=${contactBoard.articlePk}">${contactBoard.articleTitle}</a>
								</td>
								<td>${contactBoard.userName}</td>

								<td><fmt:formatDate value="${contactBoard.articleRegdate}" pattern="yyyy-MM-dd" type="date" /></td>

								<td>${contactBoard.articleView}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
		</ul>
	</div>

<br>
	
	<div style="text-align: right; margin-right: 20%;">
		<sec:authorize access="isAuthenticated()">
		<a href="${contextPath}/board/write"> 
		<input type="button"
			value="글쓰기" class="btn btn-sm btn-primary"
			style="font-size: 17px; color: white; background-color: #79dddb;">
			</a>
			</sec:authorize>
<a href="/board">
          <input type="button" class="btn btn-sm btn-primary"  value="목록" style="font-size: 17px; color: white; background-color: #79dddb;" id="btnList">
		</a>
	</div>

	<!-- 게시판 페이징 영역 -->
	<br>
	<br>

	<div id="divPaging">
		<div>◀</div>
		<div>
			<b>1</b>
		</div>
		<div>2</div>
		<div>3</div>
		<div>4</div>
		<div>5</div>
		<div>▶</div>
	</div>




	<!-- Blog Detail End -->
	
	
<!-- Vendor Start -->
	<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
		<div class="container py-5 mb-5">
			<div class="bg-white">
				<div class="owl-carousel vendor-carousel">
					<img src="/resources/img/samsung.png" alt=""> <img
						src="/resources/img/naver.png" alt=""> <img src="/resources/img/apple.png"
						alt=""> <img src="/resources/img/kakaogames.png" alt=""> <img
						src="/resources/img/kbcard.png" alt=""> <img src="/resources/img/shinhan.png"
						alt=""> <img src="/resources/img/kb.png" alt=""> <img
						src="/resources/img/google.png" alt=""> <img src="/resources/img/baemin.png"
						alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Vendor End -->

	<%@ include file="./footer.jsp"%>

	<!-- Back to Top -->
	<a href="#"
		class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i
		class="bi bi-arrow-up"></i></a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="lib/wow/wow.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/counterup/counterup.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>

	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="vendor/select2/select2.min.js"></script>

	<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>


	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	

	<script src="js/main.js"></script>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816"
		integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw=="
		data-cf-beacon='{"rayId":"7ccb23f2eb0b19e6","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.4.0","si":100}'
		crossorigin="anonymous"></script>
	<!-- Template Javascript -->
	<script src="js/main.js"></script>

<script>
window.onload = function() {
	/* 	var frm = document.getElementById("myForm"); */

		document.getElementById("btnList").onclick = function() {
			location.href="/board";
		}
}
    $(function() {
        $(document).on('click', '#btnSearch', function(e) {
            e.preventDefault();
            var searchType = $('#selSearchOption').val();
            var keyword = $('.field').val();
            var url = "/board/search?searchType=" + searchType + "&keyword=" + keyword;
            location.href = url;
        });
    });
</script>
</body>

</html>
