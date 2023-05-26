<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style>
body {
	min-height: 100vh;
	background: linear-gradient(0deg, rgba(9,30,62,1) 0%, rgba(9,30,62,0.8) 25%, rgba(6,163,218,0.5) 60%, rgba(121,221,219,0.25) 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>
</head>
<body>
	<%@ include file="./header.jsp"%>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				<form class="validation-form" id="join_form" novalidate><!-- https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css -->
					<div class="mb-3">
						<label for="userId">아이디</label> 
						<input type="text" class="form-control" id="userId" name="userId" placeholder="" required="required">
						<div class="valid-feedback">사용가능한 닉네임 입니다.</div>
         				<div class="invalid-feedback">5글자 이상 10글자 이하로 작성해 주세요.</div>
					</div>
					<div class="mb-3">
						<label for="name">이름</label> 
						<input type="text" class="form-control" id="userName" name="userName" placeholder="" required="required">
						<div class="invalid-feedback">이름을 입력해주세요.</div>
					</div>

					<div class="mb-3">
						<label for="password">비밀번호</label> 
						<input type="password"	class="form-control" id="userPw" name="userPw" required="required">
						<div class="valid-feedback">사용가능한 비밀번호 입니다.</div>
						<div class="invalid-feedback">5글자 이상 10글자 이하로 작성해 주세요.</div>
					</div>					
					<div class="mb-3">
						<label for="passwordChk">비밀번호 확인</label> 
						<input type="password" class="form-control" id="userPwChk" name="userPwChk" required="required">
						<div class="valid-feedback"> 일치합니다.</div>
						<div class="invalid-feedback">일치하지 않습니다.</div>
					</div>
					<div class="mb-3">
						<label for="phone">전화번호</label> 
						<input type="tel"	class="form-control" id="userPhone" name="userPhone" placeholder="010-0000-0000" required="required">
						<div class="invalid-feedback">전화번호를 입력해주세요.</div>
					</div>
					
					<hr class="mb-4">
					
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="agreement" required> 
						<label class="custom-control-label"	for="agreement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>
					<div class="mb-4"></div><button class="btn btn-primary btn-lg btn-block" id="join_btn" type="submit">회원 가입 하기</button>
				</form>				
			</div>			
		</div>
	</div>
	<!-- Vendor Start -->
	<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
		<div class="container py-5 mb-5">
			<div class="bg-white">
				<div class="owl-carousel vendor-carousel">
					<img src="/resources/img/samsung.png" alt=""> <img
						src="/resources/img/2.png" alt=""> <img src="/resources/img/2.png"
						alt=""> <img src="/resources/img/2.png" alt=""> <img
						src="/resources/img/2.png" alt=""> <img src="/resources/img/2.png"
						alt=""> <img src="/resources/img/2.png" alt=""> <img
						src="/resources/img/2.png" alt=""> <img src="/resources/img/2.png"
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
	<script>
	
		let isIdValid = false;
		let isPwValid = false;
		let isSamePw = false;
		let isName = false;
		let isPhone = false;
		let isAgree = false;
		let inputPw = "";
		
		document.querySelector("#userId").addEventListener("input", function(){
			let inputId=this.value;
			isIdValid = inputId.length >= 5 && inputId.length <= 10;
			if(isIdValid){
				this.classList.remove("is-invalid");
				this.classList.add("is-valid");
			}else{
				this.classList.remove("is-valid");
				this.classList.add("is-invalid");
			}
		}); 
	    
	    document.querySelector("#userPw").addEventListener("input", function(){
	        //1. 입력한 value 값을 읽어온다.
	        inputPw=this.value;
	        //2. 유효성(5글자이상 10글자 이하)을 검증한다.
	        isPwValid = inputPw.length >= 5 && inputPw.length <= 10;
	        //3. 유효하다면 input 요소에 is-valid 클래스 추가, 아니라면 is-invalid 클래스 추가
	        if(isPwValid){
	           this.classList.remove("is-invalid");
	           this.classList.add("is-valid");
	        }else{
	           this.classList.remove("is-valid");
	           this.classList.add("is-invalid");
	        }
	     });
	    
	    document.querySelector("#userPwChk").addEventListener("input", function(){
	    	let inputPwChk=this.value;
	    	isSamePw = inputPw === inputPwChk;
	    	if(isSamePw){
	    		this.classList.remove("is-invalid");
	    		this.classList.add("is-valid");
	    	}else{
	    		this.classList.remove("is-valid");
	    		this.classList.add("is-invalid");
	    	}
	    });
	    
	    document.querySelector("#userName").addEventListener("input", function(){
	    	
	    	let inputName=this.value;
	    	
	    	if(inputName){
	    		isName = true;
	    		this.classList.remove("is-invalid");
	    		this.classList.add("is-valid");
	    	}else{
	    		this.classList.remove("is-valid");
	    		this.classList.add("is-invalid");
	    	}
	    });
	    
	    document.querySelector("#userPhone").addEventListener("input", function(){
	    	
	    	let inputPhone=this.value;
	    	
	    	if(inputPhone){
	    		isPhone = true;
	    		this.classList.remove("is-invalid");
	    		this.classList.add("is-valid");
	    	}else{
	    		this.classList.remove("is-valid");
	    		this.classList.add("is-invalid");
	    	}
	    });
	    
	    document.querySelector('#agreement').addEventListener("click",function(){
	    	isAgree = this.checked;
	    });
	    
	    const form = document.getElementById('join_form');
	    
	    form.addEventListener('submit', e => {
	    	if(!isIdValid || !isPwValid || !isSamePw || !isName || !isPhone || !isAgree){
	    		e.preventDefault();
	    	}
	    	
	    	const data = new FormData(form);
	    	const param = JSON.stringify(Object.fromEntries(data));
	    	console.log(param)
	    	
	    	fetch('/user/new',{
	    		method: "POST",
	    		body: param,
	    		headers: {
	    			"Content-Type": "application/json"
	    		},
	    		redirect: 'follow'
	    	})
	    	.then(response => {
	    	})
	    	.then(result=>{
	    		if (result.message === 'SUCCESS') {
	    			alert("회원가입 성공")
	    		}else{
	    			throw result
	    		}
	    	})
	    	.catch(error=>{
	    		console.log('회원 가입 실패')
	    		error.text().then(msg => alert("회원가입 실패"+ msg))
	    	})
    	})   
    	
    </script>

</html>
