<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Startup - Startup Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <link href="/resources/css/style.css" rel="stylesheet" type="text/css">
<link href="/resources/css/bootstrap.min.css" rel="stylesheet"
   type="text/css">


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
    
    <style type="text/css">
    body{
        line-height:5em;        
        font-family:"맑은 고딕";
}
    ul, li{ 
        list-style:none;
        text-align:center;
        padding:0;
        margin:10;
}

    #mainWrapper{
        width: 1000px;
        margin: auto; /*가운데 정렬*/
    }

    #mainWrapper > ul > li:first-child {
        text-align: center;
<<<<<<< HEAD
        font-size:30pt;
        height:50px;
        vertical-align:middle;
        line-height:30px;
}

    #ulTable {margin-top:20px;}
=======
        font-size:13pt;
        height:50px;
        vertical-align:middle;
        line-height:30px;
}

    #ulTable {margin-top:40px;}
>>>>>>> branch 'ksr' of https://github.com/jyp5555/KB_IT_Project.git
    

    #ulTable > li:first-child > ul > li {
        background-color:#79dddb;
        font-weight:bold;
        text-align:center;
        height:40px;
       line-height:40px;
       font-size:13pt;
       color:white;
       font-family:"맑은 고딕";
}

    #ulTable > li > ul {
        clear:both;
        padding:auto;
        position:relative;
        min-width:40px;
        font-size:12pt;
}
    #ulTable > li > ul > li { 
        float:left;
        font-size:12pt;
        border-bottom:1px solid silver;
        vertical-align:middle;
        
}    

    #ulTable > li > ul > li:first-child               {width:10%;} /*No 열 크기*/
    #ulTable > li > ul > li:first-child +li           {width:45%;} /*제목 열 크기*/
    #ulTable > li > ul > li:first-child +li+li        {width:20%;} /*작성일 열 크기*/
    #ulTable > li > ul > li:first-child +li+li+li     {width:15%;} /*작성자 열 크기*/
    #ulTable > li > ul > li:first-child +li+li+li+li{width:10%;} /*조회수 열 크기*/

    #divPaging {
          clear:both; 
        margin:0 auto; 
        width:220px; 
        height:50px;
}

    #divPaging > div {
        float:left;
        width: 30px;
        margin:0 auto;
        text-align:center;
}

    #liSearchOption {clear:both;}
    #liSearchOption > div {
        margin:0 auto; 
        margin-top: 30px; 
        width:auto; 
        height:100px;
        float:left;

}

    .left {
        text-align : left;
}


</style>
</head>

<body>
   


   

    <!-- Navbar Start -->
    <div class="container-fluid position-relative p-0">
       
       
        <%@ include file="./header.jsp" %>

        <div class="container-fluid bg-primary py-5 bg-header" style="margin-bottom: 90px;">
            <div class="row py-5">
                <div class="col-12 pt-lg-5 mt-lg-5 text-center">
                    <h1 class="display-4 text-white animated zoomIn">게시판</h1>


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



                <div id="mainWrapper">
                  <ul>
            <!-- 게시판 제목 -->
            <li> Community </li>
<!-- 검색 폼 영역 -->
            <li id='liSearchOption'>
                <div>
                    <select id='selSearchOption' >
                        <option value='T'>제목</option>
                        <option value='C'>내용</option>
                    </select>
                    
                   <fieldset class="field-container">
  <input type="text" placeholder="Search..." class="field" />
  <div class="icons-container">
    <div class="icon-search"></div>
    <div class="icon-close">
      <div class="x-up"></div>
      <div class="x-down"></div>
    </div>
  </div>
</fieldset>
                    
                    <input type='button' value='검색'/>
                </div>
                </li>
                
                <!-- search{s} -->
		<div class="form-group row justify-content-center">
			<div class="w100" style="padding-right:10px">
				<select class="form-control form-control-sm" name="searchType" id="searchType">
					<option value="ARTICLE_TITLE">제목</option>
					<option value="ARTICLE_CONTENT">본문</option>
				</select>
			</div>
			<div class="w300" style="padding-right:10px">
				<input type="text" class="form-control form-control-sm" name="keyword" id="keyword">
			</div>
			<div>
				<button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>
			</div>
		</div>
		
		<div class="box">
  <div class="container-4">
    <input type="search" id="search" placeholder="Search...">
    <button class="icon" name="btnSearch" id="btnSearch"><i class="fa fa-search"></i></button>
  </div>
</div>
		<!-- search{e} -->  
            <!-- 게시판 목록  -->
            <li>
              
                <ul id ="ulTable">
                    <li>
                        <ul>
                            <li>No</li>
                            <li>제목</li>
                            <li>작성자</li>
                            <li>작성일</li>
                            <li>조회수</li>
                        </ul>
                    </li>
                    
                    <c:forEach var="contactBoard" items="${articles}">
                   <li>
                        <ul>
                  
                <!-- <tr class="row100 body"> -->
              
                
                            <li>${contactBoard.articlePk}</li>
                            <li class="left"><a href="board/detailreview?ARTICLE_PK=${contactBoard.articlePk}">${contactBoard.articleTitle}</a></li>
                            <li>${contactBoard.userName}</li>
                            <li>${contactBoard.articleRegdate}</li>
                            <li>${contactBoard.articleView}</li>
                        </ul>
                    </li>
                    </c:forEach>
                    
                  </ul>
              </li>
              </ul>
              </div>
                  <!-- 게시판 페이징 영역 -->

            <li>
                <div id="divPaging">
                    <div>◀</div>
                       <div><b>1</b></div>
                    <div>2</div>
                    <div>3</div>
                    <div>4</div>
                    <div>5</div>
                    <div>▶</div>
                </div>
            </li>

            
                 
<a href="${contextPath }/board/write">
<input type="button" value="글쓰기" class="btn btn-xs pull-right"  style= "font-size: 17px; ">
</a>
             <!-- Blog Detail End -->
    
                 
           
    <!-- Blog End -->


    <!-- Vendor Start -->
    <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container py-5 mb-5">
            <div class="bg-white">
                <div class="owl-carousel vendor-carousel">
                    <img src="img/vendor-1.jpg" alt="">
                    <img src="img/vendor-2.jpg" alt="">
                    <img src="img/vendor-3.jpg" alt="">
                    <img src="img/vendor-4.jpg" alt="">
                    <img src="img/vendor-5.jpg" alt="">
                    <img src="img/vendor-6.jpg" alt="">
                    <img src="img/vendor-7.jpg" alt="">
                    <img src="img/vendor-8.jpg" alt="">
                    <img src="img/vendor-9.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Vendor End -->
    
<%@ include file="./footer.jsp" %>
  
    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="lib/wow/wow.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/waypoints/waypoints.min.js"></script>
<script src="lib/counterup/counterup.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>

<script src="vendor/bootstrap/js/popper.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<script src="vendor/select2/select2.min.js"></script>

<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script>
      $('.js-pscroll').each(function(){
         var ps = new PerfectScrollbar(this);

         $(window).on('resize', function(){
            ps.update();
         })
      });


   </script>

<script async
   src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

<script src="js/main.js"></script>
<script defer
   src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816"
   integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw=="
   data-cf-beacon='{"rayId":"7ccb23f2eb0b19e6","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.4.0","si":100}'
   crossorigin="anonymous"></script>
<!-- Template Javascript -->
<script src="js/main.js"></script>

<script>
$(function(){ //아이디가 btnWrite인 버튼을 누르게 되면 write.do 컨트롤러로 맵핑
    $("#btnWrite").click(function(){
        location.href="${path}/board/write.do";
    });
});

	$(document).on('click', '#btnSearch', function(e){
		e.preventDefault();
        var searchType = $('#searchType').val();
        var keyword = $('#keyword').val();
        var url = "${contextPath}/board/search?searchType=" + searchType + "&keyword=" + keyword;
        location.href = url;
    });
</script>
</body>

</html>
