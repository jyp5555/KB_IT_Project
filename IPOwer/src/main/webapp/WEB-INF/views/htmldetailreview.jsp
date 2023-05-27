<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>게시글보기</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
<link href="/resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">

<link href="//t1.daumcdn.net/cafe_cj/mobileweb/css/89/mobile_cafe.css"
	rel="stylesheet" type="text/css">
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
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">

<!--board css-->
<link rel="icon" href="/resources/css/favicon.ico" />

<link rel="stylesheet" href="/resources/css/bootstrap.min.css">

<link rel="stylesheet" href="/resources/css/font-awesome.min.css">

<link rel="stylesheet" href="/resources/css/animate.css">

<link rel="stylesheet" href="/resources/css/select2.css">

<link rel="stylesheet" href="/resources/css/perfect-scrollbar.css">

<link rel="stylesheet" href="/resources/css/util.css">
<link rel="stylesheet" href="/resources/css/main.css">
<meta name="robots" content="noindex, follow">
<script type="text/javascript">
	window.onload = function() {
		document.getElementById("btnList").onclick = function() {
			location.href = "/";
		}
		document.getElementById("btnUpdate").onclick = function(e) {

			if (confirm("정말수정할까요")) {

				frm.action = "/board/edit?ARTICLE_PK=" + e.target.name;
				frm.submit();
			}
		}

		document.getElementById("btnDelete").onclick = function(e) {
			if (confirm("정말 삭제할까요?")) {
				frm.action = "/board/deleteBoard?ARTICLE_PK=" + e.target.name;
				frm.submit();
			}
			/* 		 if (confirm("정말 삭제할까요?")) {
			 var articlePk = ${detail1.articlePk};
			 location.href = "/board/deleteBoard?ARTICLE_PK=" + articlePk;
			
			 } */
		}
		/*  function deleteBoard() {
		        if (confirm("정말 삭제할까요?")) {
		            var articlePk = ${detail1.articlePk};
		            location.href = "/board/deleteBoard?ARTICLE_PK=" + articlePk;
		        } */
	}
</script>

</head>

<body>



	<!-- Navbar Start -->
	<div class="container-fluid position-relative p-0">


		<%@ include file="./header.jsp"%>

		<div class="container-fluid bg-primary py-5 bg-header"
			style="margin-bottom: 90px;">
			<div class="row py-5">
				<div class="col-12 pt-lg-5 mt-lg-5 text-center">
					<h1 class="display-4 text-white animated zoomIn"></h1>

				</div>
			</div>
		</div>
	</div>
	<!-- Navbar End -->


	<!-- Full Screen Search Start -->
	<div class="modal fade" id="searchModal" tabindex="-1">
		<div class="modal-dialog modal-fullscreen">
			<div class="modal-content" style="background: rgba(9, 30, 62, .7);">
				<div class="modal-header border-0">
					<button type="button" class="btn bg-white btn-close"
						data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div
					class="modal-body d-flex align-items-center justify-content-center">
					<div class="input-group" style="max-width: 600px;">
						<input type="text"
							class="form-control bg-transparent border-primary p-3"
							placeholder="Type search keyword">
						<button class="btn btn-primary px-4">
							<i class="bi bi-search"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Full Screen Search End -->
	<!-- Blog Start -->


		<div class="container">
			<div class="blog-left">
				<div class="blog-profile">

					<div class="blog-profile_text">
					
						<h4>${detail1.articleRegdate}</h4>
						<p></p>
					</div>
				</div>
				<br>
				<div class="blog-title">
					<h2>${detail1.articleTitle}</h2>
				</div>
				<br>
				<div class="blog-content">
					<p>${detail1.articleContent}</p>
				</div>
				<br>
				<div class="blog-share">
					<span>조최수 ${detail1.articleView}</span> <span>댓글 1</span>
				</div>
			</div>
			<div class="blog-right"></div>
		</div>

		<h1></h1>
		<!-- Blog Detail Start -->
<br>
<br>
		<div class="mt-5">
			<div
				class="section-title section-title-sm position-relative pb-4 ml-4">
				<h3 class="ml-5" > 
				<center>Comments</center></h3>
			</div>
			<div class="d-flex mb-4">

				<div class="ps-3 ml-5">
					<h6>
						<a href="">임현지</a> <small><i>05 24 2023</i></small>
					</h6>
					<p>김송류 짱!</p>
					<button class="btn btn-sm btn-light">Reply</button>
				</div>
			</div>
			<div class="d-flex mb-4">

				<div class="ps-3">
					<h6>
						<a href="">한재철</a> <small><i>01 23 2023</i></small>
					</h6>
					<p>김송류 최고</p>
					<button class="btn btn-sm btn-light">Reply</button>
				</div>
			</div>

		</div>
		<!-- Comment List End -->

		<!-- Comment Form Start -->
		<div class="bg-light rounded p-5">
			<div
				class="section-title section-title-sm position-relative pb-3 mb-4">
				<h3 class="mb-0">Leave A Comment</h3>
			</div>
			<form>
				<div class="row g-3">
					<div class="col-12 col-sm-6">
						<input type="text" class="form-control bg-white border-0"
							placeholder="Name" style="height: 55px;">
					</div>


					<div class="col-12">
						<textarea class="form-control bg-white border-0" rows="5"
							placeholder="Comment"></textarea>
					</div>
					<div class="col-12">
						<button class="btn btn-primary w-100 py-3" type="submit">Leave
							Your Comment</button>
					</div>
				</div>
			</form>
		</div>
		<!-- Comment Form End -->
	
	<!-- Sidebar Start -->
	<div class="col-lg-4">
		<!-- Search Form Start -->
		<div class="mb-5 wow slideInUp" data-wow-delay="0.1s"
			style="visibility: visible; animation-delay: 0.1s; animation-name: slideInUp;">
			<div class="input-group">
				<input type="text" class="form-control p-3" placeholder="Keyword">
				<button class="btn btn-primary px-4">
					<i class="bi bi-search"></i>
				</button>
			</div>
		</div>
		<!-- Search Form End -->

		<!-- Category Start -->

		<!-- Category End -->

		

		<!-- Image Start -->
		<div class="mb-5 wow slideInUp" data-wow-delay="0.1s"
			style="visibility: hidden; animation-delay: 0.1s; animation-name: none;">
			<img src="img/blog-1.jpg" alt="" class="img-fluid rounded">
		</div>
		<!-- Image End -->

		<!-- Tags Start -->

		<!-- Tags End -->

		<!-- Plain Text Start -->

		<!-- Plain Text End -->
	</div>
	<!-- Sidebar End -->
	

<%@ include file="./footer.jsp" %>

	<!-- Blog Detail End -->
</body>
</html>