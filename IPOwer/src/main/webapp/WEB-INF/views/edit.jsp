<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sec:authorize access="isAuthenticated()">
	<sec:authentication var="user" property="principal" />
</sec:authorize>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
 <script type="text/javascript">
window.onload = function() {

	document.getElementById("btnUpdate").onclick = function() {
		
		if(confirm("정말수정할까요")) {
	
			frm.action="/board/updatereviewcommit";
			frm.submit();
		}
	}
}
</script>
</head>

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
<body>
	<!-- 게시글 수정 -->
	
	<div class="container">
		<h2>글 수정</h2>

	<!-- 	<form method="post" action="updatereviewcommit"> -->
<form name="frm" method="post">
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<td>번호 : ${up.articlePk}</td>
						<input value="${up.articlePk}" type="hidden" name="articlePk">
					</tr>
					<tr>
						<td>작성자 id : <sec:authentication var="user" property="principal"/>
						${user.username}
						<input value="${up.userPk}" name="userPk" type="hidden">
					</tr>
					<%-- <tr>
						<td>작성자 :</td>
								<td>${up.userPk}</td>
						<input value="${up.userPk}" type="hidden" name="userPk">

					</tr> --%>
					<tr>
						<td colspan=2><input type="text" value="${up.articleTitle}"
							name="articleTitle" id="inputTitle" size="30"
							class="form-control" aria-describedby="basic-addon1"></td>
					</tr>
					<br>
					<br>
					<tr>
						<div style="width: 1000px;">
							<td colspan=2><textarea class="form-control" id="inputContent"
									name="articleContent" cols="100" style="height: 500px;">
									${up.articleContent}</textarea></td>
						</div>
					</tr>

				</thead>
			</table>
			<div style="text-align: center;">

			<input type="button" value="수정" id="btnUpdate"
				class="btn btn-sm btn-primary"
				style="font-size: 17px; color: white; background-color: #79dddb;">

	</div>
			</form>
	</div>







	<!-- Vendor Start --><!-- 
	<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
		<div class="container py-5 mb-5">
			<div class="bg-white">
				<div class="owl-carousel vendor-carousel">
					<img src="img/vendor-1.jpg" alt=""> <img
						src="img/vendor-2.jpg" alt=""> <img src="img/vendor-3.jpg"
						alt=""> <img src="img/vendor-4.jpg" alt=""> <img
						src="img/vendor-5.jpg" alt=""> <img src="img/vendor-6.jpg"
						alt=""> <img src="img/vendor-7.jpg" alt=""> <img
						src="img/vendor-8.jpg" alt=""> <img src="img/vendor-9.jpg"
						alt="">
				</div>
			</div>
		</div>
	</div>
	</div> -->
	<!-- Vendor End -->

	<%@ include file="./footer.jsp"%>

</body>
</html>