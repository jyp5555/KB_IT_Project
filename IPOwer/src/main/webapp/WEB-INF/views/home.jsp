<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8' />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.7/index.global.min.js'></script>
    <script src='fullcalendar/core/locales/ko.js'></script>
	<style>
	td>div>div>a{
	    color:gray;
	}
	.fc-event-title-container{
		cursor:pointer;
	}
	
	</style>
  </head>
  <body>
  	<%@ include file="./header.jsp" %>
    <div id='calendar' class='container-md' style="padding:15px"></div>
    
	<%@ include file="./companyInfoModal.jsp"%>
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
      <script>
    	var data1= []
    	var myChart = null
    	document.addEventListener('DOMContentLoaded', function() {
        	var calendarEl = document.getElementById('calendar');
        	var c_name = ${c_name}
        	var c_offering = ${c_offering}
        	var c_listing = ${c_listing}
        	var result = []
       
        	 for(var i = 0 ; i < c_name.length ; i++){
        		 
        		result.push({
        			title: c_name[i], 
        			start: c_offering[i],
        			backgroundColor: "#FF6666",
        			borderColor :"#FF6666"
        		})
        		
        		if(c_listing[i]!=''){
        			result.push({
        				title: c_name[i], 
        				start: c_listing[i],
        				backgroundColor: '#99CCFF',
            			borderColor :'#99CCFF'
        			})
        		}        		
        		/* result.push({title: c_name[i], start: c_listing[i]}) */
        	}
        	 console.log(result)
            var calendar = new FullCalendar.Calendar(calendarEl, {
                // Tool Bar ëª©ë¡ document : https://fullcalendar.io/docs/toolbar
                headerToolbar: {
                    left: 'prevYear,prev,next,nextYear today',
                    center: 'title',
                    right: 'dayGridMonth,dayGridWeek,dayGridDay'
                },

                selectable: true,
                selectMirror: true,

                navLinks: true, // can click day/week names to navigate views
                editable: false,
                eventClick: function(info){
                	$.ajax({
                		url:"/company/detail/"+info.event.title,
                		type:"GET",
                		dataType:"json",
                		contentType:"application/json",
                		success:function(result){
                			console.log('hi')
                			console.log(result.companyTicker)
                			$("#companyTicker").text(result.companyTicker);
            				$("#companyName").html(result.companyName);
            				$("#companySite").html("<a href="+result.companySite+" target='_blank'>"+result.companySite+"</a>");
            				$("#companyFaceprice").html(result.companyFaceprice+" 원");
            				$("#companyFixedprice").html(result.companyFixedprice+" 원");
            				$("#companyTopprice").html(result.companyTopprice+" 원");
            				$("#companyBottomprice").html(result.companyBottomprice+" 원");
            				$("#companyManager").html(result.companyManager);
            				$("#companyOfferingdate").html(new Date(result.companyOfferingdate).toISOString().slice(0, 10));
            				$("#companyRefundingdate").html(new Date(result.companyRefundingdate).toISOString().slice(0, 10));
            				$("#companyListingdate").html(new Date(result.companyListingdate).toISOString().slice(0, 10));
            				$("#companyMinimumcount").html(result.companyMinimumcount);
            				$("#demandRatio").html(result.demandRatio+":1");
            				$("#demandLockup").html(result.demandLockup+"%");
            				
            				
            				$("#exampleModalLongTitle").text(info.event.title);
            				var rating=""
            				if (result.demandRatio >= 1000 & result.demandLockup >= 15){
            					rating = " ☀️ ";
            				}else if( result.demandRatio >=1000 & result.demandLockup <15){
            					rating = " 🌤️ ";
            				}else if(result.demandRatio < 1000 & result.demandLockup >= 15){
            					rating = " ☁️ ";
            				}else{
            					rating = " 🌧️ ";
            				}
            				$("#rating").html(rating)
            				$("#exampleModalLong").modal('toggle');
            				data1=[]
            				data1.push(result.demandNoprice)
            				data1.push(result.demandUnderbottom)
            				data1.push(result.demandBottom)
            				data1.push(result.demandBand)
            				data1.push(result.demandTop)
            				data1.push(result.demandOvertop)
            				
            				const ctx = document.getElementById('myChart');

            				myChart = new Chart(ctx, {
            				    type: 'doughnut',
            				    data: {
            				      labels: ['가격 미제시', '밴드 하단 미만', '밴드 하단', '밴드 내', '밴드 상단', '밴드 상단 초과'],
            				      datasets: [{
            				        label: '# of Votes',
            				        data:data1,
            				        backgroundColor: [
            				            '#c0cffa',
            				            '#9daddf',
            				            '#7d8ec4',
            				            '#6171a9',
            				            '#4857be',
            				            '#334173'
            				          ],
            				        borderWidth: 1
            				      }]
            				    },
            				    options: {
            				    	maintainAspectRatio: false,
            				    	plugins: {
            				    		legend:{
            				    			position:'right'
            				    		}
            				    	}
            				    }
            				  });
/*             				myChart.update();
 */                		},
                		error:function(result){
                			console.log(result)
                			alert("error!")
                		}
                	})                	
                },
                dayMaxEvents: true,
                events: result,
                locale: 'ko'
            });

            calendar.render();
        });

    </script>
</html>