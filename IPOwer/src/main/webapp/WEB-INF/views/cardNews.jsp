<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Card News</title>
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
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">



</head>

<body>

	
<%@ include file="./header.jsp"%>
 


    <!-- Navbar Start -->
    <div class="container-fluid  position-relative p-0">
       

        <div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 30px;">
            <div class="row py-5">
                <div class="col-12 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-2 text-white animated zoomIn">Card News</h1>
                    <!-- <a href="" class="h5 text-white">Home</a> -->
                   <!--  <i class="far fa-circle text-white px-2"></i>
                    <a href="" class="h5 text-white ">카드 뉴스</a> -->
                    <%-- <h2 class="display-6 text-white animated zoomIn">전체 ${count+1}건 </h2> --%>
       
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
	<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
		<%-- <h2>카드 뉴스</h2>
		<p class="container mt-2" id="count">전체 ${count+1}건</p> --%>
		<div class="container py-5">
			<h2 id="count" class="display-6 animated zoomIn mb-4">전체 ${count+1}건 </h2>
			<div class="row g-5">
				<!-- Blog list Start -->
				<div class="col-lg-8">
					<div id="card_news" class="row g-5">
						<c:forEach var="i" begin="0" end="${count}">
							<div class="col-md-4 wow slideInUp space-bottom" data-wow-delay="0.1s">
								<div class="blog-item bg-light rounded-3 overflow-hidden">
									<div class="blog-img position-relative overflow-hidden"
										onclick="location.href='http://localhost:8080/news/${all[i].newsPk}'">

										<img class="img-fluid"
											src="/${all[i].filePath}/${all[i].fileName}.${all[i].fileContenttype}"
											alt="img">
										

										<div class="p-3">
											<div class="d-block mb-3">
												<small class="me-3"><i
													class="far fa-user text-primary me-2" id="count"></i>조회수 : ${all[i].newsView }</small>
												<small><i
													class="far fa-calendar-alt text-primary me-2"></i>
												<fmt:formatDate value="${all[i].newsRegdate}"
														pattern="yyyy-MM-dd" type="date" /></small>
											</div>
											<h5 class="mb-3">${all[i].newsTitle }</h5>

										
										</div>
									</div>
								</div>
							</div>

						</c:forEach>

						<div class="col-12 wow slideInUp" data-wow-delay="0.1s">
							<nav aria-label="Page navigation" class="space-top">
								<ul class="pagination pagination-lg m-0">
									<li class="page-item disabled"><a
										class="page-link rounded-0" href="#" aria-label="Previous">
											<span aria-hidden="true"><i class="bi bi-arrow-left"></i></span>
									</a></li>
									<li class="page-item active"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link rounded-0"
										href="#" aria-label="Next"> <span aria-hidden="true"><i
												class="bi bi-arrow-right"></i></span>
									</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<!-- Blog list End -->

				<!-- Sidebar Start -->
				<div class="col-lg-4">
					<!-- Search Form Start -->
					<div class="mb-5 wow slideInUp" data-wow-delay="0.1s">
						<div class="input-group">
						<form id="search_form" >
						<table>
						<td>
							<input type="text"  class="form-control p-3" placeholder="검색" name="search_word" >
						</td>
						<td>
							<button type="submit" class="btn btn-primary px-4">
								<i class="bi bi-search"></i>
							</button> 
							</td>
						</table>
						</form>
						</div>
					</div>
					<!-- Search Form End -->


					<!-- Recent Post Start -->
					<div class="mb-5 wow slideInUp" data-wow-delay="0.1s">
						<div
							class="section-title section-title-sm position-relative pb-3 mb-4">
							<h3 class="mb-0">Recent Post</h3>
						</div>
						
						<c:forEach var="item" items="${all }" varStatus="status">
							<c:if test="${status.index<6}">
								<div class="d-flex rounded overflow-hidden mb-3">
								<img class="img-fluid" src="/${item.filePath}/${item.fileName}.${item.fileContenttype}"
									style="width: 70px; height: 70px; object-fit: cover;" alt="">
								<a href='http://localhost:8080/news/${item.newsPk}'
									class="h6 fw-semi-bold d-flex align-items-center bg-light px-3 mb-0" style="width:70%">${item.newsTitle }</a>
							</div> 
							
							</c:if>
						</c:forEach>
					</div>
					<!-- Recent Post End -->

				</div>
				<!-- Sidebar End -->
			</div>
		</div>
	</div>
	<!-- Blog End -->

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
	<script src="/resources/lib/wow/wow.min.js"></script>
	<script src="/resources/lib/easing/easing.min.js"></script>
	<script src="/resources/lib/waypoints/waypoints.min.js"></script>
	<script src="/resources/lib/counterup/counterup.min.js"></script>
	<script src="/resources/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script>
		
	
		(function($) {
			"use strict";

			// Spinner
			var spinner = function() {
				setTimeout(function() {
					if ($('#spinner').length > 0) {
						$('#spinner').removeClass('show');
					}
				}, 1);
			};
			spinner();

			// Initiate the wowjs
			new WOW().init();

			// Sticky Navbar
			$(window).scroll(function() {
				if ($(this).scrollTop() > 45) {
					$('.navbar').addClass('sticky-top shadow-sm');
				} else {
					$('.navbar').removeClass('sticky-top shadow-sm');
				}
			});

			// Dropdown on mouse hover
			const $dropdown = $(".dropdown");
			const $dropdownToggle = $(".dropdown-toggle");
			const $dropdownMenu = $(".dropdown-menu");
			const showClass = "show";

			$(window).on(
					"load resize",
					function() {
						if (this.matchMedia("(min-width: 992px)").matches) {
							$dropdown.hover(function() {
								const $this = $(this);
								$this.addClass(showClass);
								$this.find($dropdownToggle).attr(
										"aria-expanded", "true");
								$this.find($dropdownMenu).addClass(showClass);
							}, function() {
								const $this = $(this);
								$this.removeClass(showClass);
								$this.find($dropdownToggle).attr(
										"aria-expanded", "false");
								$this.find($dropdownMenu)
										.removeClass(showClass);
							});
						} else {
							$dropdown.off("mouseenter mouseleave");
						}
	
						
						
						$('#search_form').on('submit', function(event) {
							// 폼의 기본 동작인 페이지 이동을 막기 위해 preventDefault()를 호출합니다.

				
						    // 폼 데이터를 가져옵니다.
						    var params = {
				            	search_word      : $('input[name=search_word]').val()
				  			}
						    
						   console.log(params)
							$.ajax({
				        		type : "POST",            // HTTP method type(GET, POST) 형식이다.
				        		url : "/news",      // 컨트롤러에서 대기중인 URL 주소이다.
				        		data : params,
				        		//contentType:"application/json", 	// Json 형식의 데이터이다.
				        		success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
				        			var count = $('#count')
				        			var card_news = $('#card_news')
				        			console.log(card_news)
				        			count.html('')
				        			card_news.html('')
				        			
				        			count.append('<p class="container mt-2">전체 '+ res.count +'건</p>')
				        			$.each(res.list_news, function(index, item) {
				        				var d = (item.newsRegdate).substring(0,10)
  										card_news.append('<div class="col-md-4 wow slideInUp space-down" data-wow-delay="0.1s"><div class="blog-item bg-light rounded-3 overflow-hidden"><div class="blog-img position-relative overflow-hidden" onclick="location.href=\'http://localhost:8080/news/'
   					 				+ item.newsPk + '\'"><img class="img-fluid" src="/' + item.filePath + '/' + item.fileName + '.' + item.fileContenttype + '" alt="img"><div class="p-4"><div class="d-flex mb-3"><small class="me-3"><i class="far fa-user text-primary me-2" id="count"></i>'
									    + '조회수: ' + item.newsView + '</small><small><i class="far fa-calendar-alt text-primary me-2"></i>'
									    + d + '</small></div><h5 class="mb-3">' + item.newsTitle + '</h5><a class="text-uppercase" href="">');
									});
			        				/* $("#test").html(res);  */
				        		},
				        		error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
									alert("통신 실패")
				        		}
				        	});
						    return false
						})
						
					});

			// Facts counter
			$('[data-toggle="counter-up"]').counterUp({
				delay : 10,
				time : 2000
			});

			// Back to top button
			$(window).scroll(function() {
				if ($(this).scrollTop() > 100) {
					$('.back-to-top').fadeIn('slow');
				} else {
					$('.back-to-top').fadeOut('slow');
				}
			});
			$('.back-to-top').click(function() {
				$('html, body').animate({
					scrollTop : 0
				}, 1500, 'easeInOutExpo');
				return false;
			});

			// Testimonials carousel
			$(".testimonial-carousel").owlCarousel({
				autoplay : true,
				smartSpeed : 1500,
				dots : true,
				loop : true,
				center : true,
				responsive : {
					0 : {
						items : 1
					},
					576 : {
						items : 1
					},
					768 : {
						items : 2
					},
					992 : {
						items : 3
					}
				}
			});

			// Vendor carousel
			$('.vendor-carousel').owlCarousel({
				loop : true,
				margin : 45,
				dots : false,
				loop : true,
				autoplay : true,
				smartSpeed : 1000,
				responsive : {
					0 : {
						items : 2
					},
					576 : {
						items : 4
					},
					768 : {
						items : 6
					},
					992 : {
						items : 8
					}
				}
			});

		})(jQuery);
	</script>


</body>

</html>