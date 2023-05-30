<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>

<script>
	$(function() { //id가 btnSave인 버튼을 클릭하면 실행되는 구문. 
		//post 방식으로 자료를 insert.do (컨트롤러)로 보낸다. 
		$("#btnSave").click(function() {
			document.form1.submit();
		});
	});
</script>
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
</head>
<body>

	<!-- 글쓰기 폼 작성 -->
	<div class="container">
		<h2>글 작성</h2>
		<!-- <form method="post" action="insert"> -->
		<form method="post" action="/board/post">
			<div class="input-group input-group-sm" role="group"
				style="text-align: left">
				<table class="table table-striped table-bordered">
					<thead>
					<tr>
					<input type="hidden" name="userId" value="${user.username}">
					</tr>
						<tr>
							<td><sec:authentication var="user" property="principal"/>
							<input type="text" name="userId" class="form-control"
                        id="inputAuthor" value="${user.username}"/>
                        </td>
							<%-- <th width=20% class="text-center warning"> 작성자 | ${principal.userPk} 
				<input type="text" name="userPk" placeholder="이름"
				value="${principal.userPk}" required="required"/>
				</th> --%>
				<%-- value="${up.articlePk}" --%>
						</tr>
						<tr>
							<td><input name="articleTitle" id="inputTitle" size="80"
								placeholder="제목을 입력하세요" class="form-control"
								aria-describedby="basic-addon1"></td>
						</tr>
						<br>
						<br>
						<tr>
							<div style="width: 1000px;">
								<td><textarea class="form-control" id="inputContent"
										name="articleContent" rows="6" cols="100"
										style="height: 500px" placeholder="내용을 입력하세요">
</textarea></td>
							</div>
						</tr>

					</thead>
				</table>
			</div>
	</div>

	<center>
		<div class="btn-group btn-group-sm" role="group" aria-label="...">
			<div style="text-align: center;">
				<button type="submit" name="submit" class="btn btn-sm btn-primary"
					style="font-size: 17px; color: white; background-color: #79dddb;">확인</button>
			</div>
		</div>
	</center>
	</form>
	</div>
	<!-- Vendor Start -->
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
	<!-- Vendor End -->

	<%@ include file="./footer.jsp"%>

</body>
</html>