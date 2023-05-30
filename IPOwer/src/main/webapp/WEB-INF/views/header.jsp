<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>IPOwer</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous" />
	
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

    <link href="/resources/css/style.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>

<body>
  
<sec:authentication property="principal" var="prc"/>
    <!-- Topbar Start -->
    <div class="container-fluid bg-white px-5 d-none d-lg-block">
        <div class="row gx-0">
            <div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
                <div class="d-inline-flex align-items-center" style="height: 45px;">
                    <small class="me-3 text-dark"><i class="fa fa-map-marker-alt me-2"></i>서울 강남구 선릉로 428</small>
                    <small class="me-3 text-dark"><i class="fa fa-phone-alt me-2"></i>+012 345 6789</small>
                    <small class="text-dark"><i class="fa fa-envelope-open me-2"></i>IPOwer@naver.com</small>
                </div>
            </div>
            <div class="col-lg-4 text-center text-lg-end">
                <div class="d-inline-flex align-items-center" style="height: 45px;">
                    <a class="btn btn-sm btn-outline-dark btn-sm-square rounded-circle me-2" href=""><i class="fab fa-twitter fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-dark btn-sm-square rounded-circle me-2" href=""><i class="fab fa-facebook-f fw-normal"></i></a>
                    <a href="http://blog.naver.com/thdfb98" class="btn btn-sm btn-outline-dark btn-sm-square rounded-circle me-2" href=""><i class="fab fa-linkedin-in fw-normal"></i></a>
                    <a  class="btn btn-sm btn-outline-dark btn-sm-square rounded-circle me-2" href=""><i class="fab fa-instagram fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-dark btn-sm-square rounded-circle" href=""><i class="fab fa-youtube fw-normal"></i></a>
                
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->
    <!-- Navbar Start -->
    <div class="container-fluid position-relative p-0">
        <nav class="navbar navbar-expand-lg navbar-dark px-5 py-3 py-lg-0">
            <a href="/" class="navbar-brand p-0">
               <img src="/resources/img/character.png" width="40"><!-- <img src="/resources/img/icon.png" width="30"><img src="/resources/img/icon.png" width="20"> -->
               <h1 style="display: inline;color:white;" class="m-0"> IPOwer</h1>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="fa fa-bars"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto py-0" >
                	<li class="nav-item nav-link"><a href="/home">Home</a></li>
                	<li class="nav-item nav-link"><a href="/board">Community</a></li>
                	<li class="nav-item nav-link"><a href="/news">Contents</a></li>
                	<li class="nav-item nav-link"><sec:authorize access="isAuthenticated()"><a href="/myPage">My Page</a></sec:authorize></li>
					<li class="nav-item nav-link"><sec:authorize access="isAnonymous()" ><a href="/user/me">로그인</a></sec:authorize></li>
					<li class="nav-item nav-link"><sec:authorize access="isAuthenticated()"><a href="/logout">로그아웃</a></sec:authorize></li>
                   
                 
                </div>
                <!-- <butaton type="button" class="btn text-primary ms-3" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fa fa-search"></i></butaton> -->
            </div>
        </nav>
</div>
   
    
    
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="/resources/lib/wow/wow.min.js"></script>
    <script src="/resources/lib/easing/easing.min.js"></script>
    <script src="/resources/lib/waypoints/waypoints.min.js"></script>
    <script src="/resources/lib/counterup/counterup.min.js"></script>
    <script src="/resources/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="/resources/js/modalCRUD.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
    

    <!-- Template Javascript -->
  <script>
  (function ($) {
	    "use strict";
	    // Spinner
	    var spinner = function () {
	        setTimeout(function () {
	            if ($('#spinner').length > 0) {
	                $('#spinner').removeClass('show');
	            }
	        }, 1);
	    };
	    spinner();
	    
	    
	    // Initiate the wowjs
	    new WOW().init();
	    // Sticky Navbar
	    $(window).scroll(function () {
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
	    
	    $(window).on("load resize", function() {
	        if (this.matchMedia("(min-width: 992px)").matches) {
	            $dropdown.hover(
	            function() {
	                const $this = $(this);
	                $this.addClass(showClass);
	                $this.find($dropdownToggle).attr("aria-expanded", "true");
	                $this.find($dropdownMenu).addClass(showClass);
	            },
	            function() {
	                const $this = $(this);
	                $this.removeClass(showClass);
	                $this.find($dropdownToggle).attr("aria-expanded", "false");
	                $this.find($dropdownMenu).removeClass(showClass);
	            }
	            );
	        } else {
	            $dropdown.off("mouseenter mouseleave");
	        }
	    });
	    // Facts counter
	    $('[data-toggle="counter-up"]').counterUp({
	        delay: 10,
	        time: 2000
	    });
	    
	    
	    // Back to top button
	    $(window).scroll(function () {
	        if ($(this).scrollTop() > 100) {
	            $('.back-to-top').fadeIn('slow');
	        } else {
	            $('.back-to-top').fadeOut('slow');
	        }
	    });
	    $('.back-to-top').click(function () {
	        $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
	        return false;
	    });
	    // Testimonials carousel
	    $(".testimonial-carousel").owlCarousel({
	        autoplay: true,
	        smartSpeed: 1500,
	        dots: true,
	        loop: true,
	        center: true,
	        responsive: {
	            0:{
	                items:1
	            },
	            576:{
	                items:1
	            },
	            768:{
	                items:2
	            },
	            992:{
	                items:3
	            }
	        }
	    });
	    // Vendor carousel
	    $('.vendor-carousel').owlCarousel({
	        loop: true,
	        margin: 45,
	        dots: false,
	        loop: true,
	        autoplay: true,
	        smartSpeed: 1000,
	        responsive: {
	            0:{
	                items:2
	            },
	            576:{
	                items:4
	            },
	            768:{
	                items:6
	            },
	            992:{
	                items:8
	            }
	        }
	    });
	    
	})(jQuery);
  
  </script>
</body>
</html>