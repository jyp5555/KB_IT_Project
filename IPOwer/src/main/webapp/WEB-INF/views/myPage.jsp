<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<title>Insert title here</title>
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

<!-- Customized Bootstrap Stylesheet -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="/resources/css/style.css" rel="stylesheet">
</head>
<body>
	<%@ include file="./header.jsp"%>


	<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
		<div class="container py-5">
			<div
				class="section-title text-center position-relative pb-3 mb-5 mx-auto"
				style="max-width: 600px;">
				<h5 class="fw-bold text-primary text-uppercase">User Info</h5>
				<h1 class="mb-0">회원 정보</h1>
			</div>
			<%-- p>
				사용자이름:
				<sec:authentication var="user" property="principal" />
			</p>
			<p>${user.username}</p>
			${user.userRealname} --%>
			
			<table class="type02">
			  <tr>
			    <th scope="row">이름</th>
			    <td>${user.userName}</td>
			  </tr>
			  <tr>
			    <th scope="row">아이디</th>
			    <td>${user.userId}</td>
			  </tr>
			  <tr>
			    <th scope="row">전화번호</th>
			    <td>${user.userPhone}</td>
			  </tr>
			 
			</table>
		</div>
	</div>
	
	<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
		<div class="container py-5">
			<div
				class="section-title text-center position-relative pb-3 mb-5 mx-auto"
				style="max-width: 600px;">
				<h5 class="fw-bold text-primary text-uppercase">Watchlist</h5>
				<h1 class="mb-0">관심 기업</h1>
			</div>
			<div class="row g-5">
				<c:forEach var="item" items="${all }">
					<div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.3s">
						<div
							class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
							<div class="service-icon">
								<i class="fa fa-shield-alt text-white"></i>
							</div>
							<h4 class="mb-3">${item.companyName }</h4>

							<a class="btn btn-lg btn-primary rounded" href=""
								value="${item.companyPk }"> <i class="bi bi-arrow-right"></i>
							</a>
						</div>
					</div>
				</c:forEach>
				<div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.9s">
					<div
						class="position-relative bg-primary rounded h-100 d-flex flex-column align-items-center justify-content-center text-center p-5">
						<h3 class="text-white mb-3">Call Us For Quote</h3>
						<p class="text-white mb-3">Clita ipsum magna kasd rebum at
							ipsum amet dolor justo dolor est magna stet eirmod</p>
						<h2 class="text-white mb-0">+012 345 6789</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Service End -->
<%@ include file="./footer.jsp"%>
</body>
</html>