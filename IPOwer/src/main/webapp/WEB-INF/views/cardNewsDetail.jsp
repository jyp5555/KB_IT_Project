<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<style>
      table, th, td{
        border:1px solid black;
        border-collapse:collapse;
        padding:20px;
      }
      td{
      border:1px solid black;
        text-align:center;
      }
      h4{
      margin:0;
      padding:20px;
      line-height:24px;color:#333;
      font-size:18px;
      color: white;
      text-align:center;
      border-top:2px solid #004489;
      background:#;}
      
    </style>
<meta charset="utf-8">
    <title>${dto.newsTitle }</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&family=Rubik:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/resources/lib/animate/animate.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/resources/css/style.css" rel="stylesheet">
    
    <link href="/resources/css/card_detail.css" rel="stylesheet" type="text/css">
</head>

<body>

<%@ include file="./header.jsp"%>
 

    <!-- Navbar Start -->
    <div class="container-fluid  position-relative p-0">
       
<!-- bg-header에 사진 들어가있음  -->
        <div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 90px;">
            <div class="row py-5" >
                <div class="col-12 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-4 text-white animated zoomIn">Card News</h1>
                   <!--  <a href="/news" class="h5 text-white">목록</a> -->
                    <i class="far fa-user text-white me-2"></i>
                    <a href="" class="h5 text-white ">${dto.newsView }</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Navbar End -->
<div class="container" style="padding-left:13%;padding-right:13%;">

<h4 style="text-align:center;">[카드뉴스] ${dto.newsTitle }</h4>
	<table style="width:100%; text-align:center; border-left: none;border-right: none;" class="container-sm">
     <%--  <tr>
        <th colspan="3">${dto.newsTitle }</th>
      </tr> --%>
      <tr>
        <td>등록일: ${date }</td>
        <td>작성자: ${dto.newsWriter }</td>
        <td>조회수: ${dto.newsView }</td>
        
      </tr>
    </table>
</div>


    <!-- Full Screen Search Start -->
    <div class="modal fade" id="searchModal" tabindex="-1">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content" style="background: rgba(9, 30, 62, .7);">
                <div class="modal-header border-0">
                    <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body d-flex align-items-center justify-content-center">
                    <div class="input-group" style="max-width: 600px;">
                        <input type="text" class="form-control bg-transparent border-primary p-3" placeholder="Type search keyword">
                        <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Full Screen Search End -->

    <!-- Testimonial Start -->
    
    <div  class="carousel-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5">
			<div id="carouselExampleControls" class="carousel slide"
				data-bs-ride="carousel" data-interval="false">
				<div class="carousel-inner"></div>

				<button class="carousel-control-prev" type="button"
					data-bs-target="#carouselExampleControls" data-bs-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<!-- <span class="visually-hidden">Previous</span> -->
				</button>
				<button class="carousel-control-next" type="button"
					data-bs-target="#carouselExampleControls" data-bs-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<!-- <span class="visually-hidden">Next</span> -->
				</button>
			</div>

		</div>
    </div>
    <!-- Testimonial End -->
	
	
	
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
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/lib/wow/wow.min.js"></script>
    <script src="/resources/lib/easing/easing.min.js"></script>
    <script src="/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="/resources/lib/counterup/counterup.min.js"></script>
    <script src="/resources/lib/owlcarousel/owl.carousel.min.js"></script>

   <script type="text/javascript">	
		var path = ${path}
		var file_name = ${file_name}
		var type = ${type}
		
		var carouselInner = document.querySelector('.carousel-inner');
		
		for (var i = 0; i < path.length; i++) {
			var item = document.createElement('div');
			item.classList.add('carousel-item');
			if (i === 0) {
				item.classList.add('active');
			}
			/* console.log(files[i]) */
			var img = document.createElement('img');
			img.src = '/' + path[i] + '/' + file_name[i] + '.' + type[i];
			img.style='border-radius:7px'
			img.alt = 'Image ' + (i + 1);

			item.appendChild(img);
			carouselInner.appendChild(item);
		}
	</script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
   
</body>

</html>