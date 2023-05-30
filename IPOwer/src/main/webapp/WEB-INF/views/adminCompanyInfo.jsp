<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
	<%@ include file="./adminHeader.jsp"%>
	<div class="container-md">
		<div id="companyList">
			<table class="table">
				<thead>
					<tr>
						<th scope="col">no</th>
						<th scope="col">회사명</th>
						<th scope="col">청약일</th>
						<th scope="col">수정/삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="company" items="${companyList}" >
					<tr>
						<th scope="col">${company.companyPk }</th>
						<td>${company.companyName }</td>
						<td><fmt:formatDate value="${company.companyOfferingdate }" pattern="yyyy-MM-dd"/></td>
						<td>
							<div class="btn-group">
								<button name="modify" value="${company.companyPk }" class="btn btn-xs btn-warning">수정</button>
								<button name="delete" value="${company.companyPk }" class="btn btn-xs btn-danger">삭제</button>							
							</div>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<hr>
		<div>
			<!-- Button trigger modal -->
			<button type="button" id="btnCreate" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong" data-whatever="회사 정보 입력">회사 정보 입력</button>
			<%@ include file="./adminCompanyInfoModal.jsp"%>
		</div>

	</div>
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
  										card_news.append('<div class="col-md-6 wow slideInUp" data-wow-delay="0.1s"><div class="blog-item bg-light rounded overflow-hidden"><div class="blog-img position-relative overflow-hidden" onclick="location.href=\'http://localhost:8080/news/'
   					 				+ item.newsPk + '\'"><img class="img-fluid" src="/' + item.filePath + '/' + item.fileName + '.' + item.fileContenttype + '" alt="img"><div class="p-4"><div class="d-flex mb-3"><small class="me-3"><i class="far fa-user text-primary me-2" id="count"></i>'
									    + '조회수: ' + item.newsView + '</small><small><i class="far fa-calendar-alt text-primary me-2"></i>'
									    + item.newsRegdate + '</small></div><h4 class="mb-3">' + item.newsTitle + '</h4><a class="text-uppercase" href="">'
									    + 'Read More' + '<i class="bi bi-arrow-right"></i></a></div></div></div>');
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