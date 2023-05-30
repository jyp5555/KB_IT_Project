<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
<script type="text/javascript">
window.onload = function() {
/* 	var frm = document.getElementById("myForm"); */

	document.getElementById("btnList").onclick = function() {
		location.href="/board";
	}
	document.getElementById("btnUpdate").onclick = function(e) {
		
		if(confirm("정말수정할까요")) {
			
			frm.action="/board/edit?ARTICLE_PK="+e.target.name;
			frm.submit();
		}
	}
	
document.getElementById("btnDelete").onclick = function(e) {
		 if(confirm("정말 삭제할까요?")) {
			frm.action="/board/deleteBoard?ARTICLE_PK="+e.target.name;
			frm.submit();
		} 
	} 
}
/* 		 if (confirm("정말 삭제할까요?")) {
var articlePk = ${detail1.articlePk};
location.href = "/board/deleteBoard?ARTICLE_PK=" + articlePk;

} */
	/*  function deleteBoard() {
	        if (confirm("정말 삭제할까요?")) {
	            var articlePk = ${detail1.articlePk};
	            location.href = "/board/deleteBoard?ARTICLE_PK=" + articlePk;
	        } */

</script>
<style>
    #contentForm {
      width: 40%;
      margin: 0 auto;
      padding-top: 12%;
    }
 
    .table > thead > tr > th, .table > tbody > tr > th {
      background-color: #79dddb;
      text-align: center;
      color:white;
    }
  </style>
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
	<!-- Navbar End -->
	
	<div class="container">
     <h1>상세보기</h1>
     <div class="row row1">
     <form name="frm" method="get">
      <table class="table">
        <tr>
         <th width=20% class="text-center warning">번호</th>
         <td width=30% class="text-center">${detail1.articlePk}</td>
         <input type="hidden" value="${detail1.articlePk}" name="articlePk">	
         <th width=20% class="text-center warning">작성일</th>
         <td width=30% class="text-center">${detail1.articleRegdate}</td>
        </tr>
        <tr>
         <th width=20% class="text-center warning">이름</th>
         <td width=30% class="text-center">${detail1.userName}</td>
         <th width=20% class="text-center warning">조회수</th>
         <td width=30% class="text-center">${detail1.articleView}</td>
        </tr>
        <tr>
         <th width=20% class="text-center warning">제목</th>
         <td colspan="3">${detail1.articleTitle}</td>
        </tr>
        <tr>
          <td colspan="4" class="text-left" valign="top" height="200">
           <pre style="white-space: pre-wrap;border:none;background-color: white;">${detail1.articleContent}</pre>
          </td>
        </tr>
        <tr>
  <td colspan="4" class="text-right">
    <form id="myForm" method="post">
          <input type="button" class="btn btn-sm btn-primary"  value="목록" style="font-size: 17px; color: white; background-color: #79dddb;" id="btnList">
          <sec:authorize access="isAuthenticated()">
			<input type="button" class="btn btn-sm btn-primary"  value="수정" style="font-size: 17px; color: white; background-color: #79dddb;" id="btnUpdate" name="${detail1.articlePk}">
			<input type="button" class="btn btn-sm btn-primary"  value="삭제" style="font-size: 17px; color: white; background-color: #79dddb;" id="btnDelete" name="${detail1.articlePk}">
			</sec:authorize>
            <!-- <a href="#" class="btn btn-sm btn-primary" style="font-size: 17px; color: white; background-color: #79dddb;">수정</a>
            <a href="#" class="btn btn-sm btn-primary" style="font-size: 17px; color: white; background-color: #79dddb;">삭제</a>
            <a href="/board" id="btnList" class="btn btn-sm btn-primary" style="font-size: 17px; color: white; background-color: #79dddb;">목록</a> -->
          </form>
  </td>
</tr>
      </table>
      </form>
     </div>
   </div>
 
 
	<!--  start -->
	
<br>

<!-- 댓글작성  -->
<div class="container">
<div class="mb-5">
                        <div class="section-title section-title-sm position-relative pb-3 mb-4">
                            <h3 class="mb-0">
                            	<element>
                            		${fn:length(reply)} Comments
                            	</element></h3>
                        </div>
                        <c:forEach items="${reply}" var="r">
                        <div class="d-flex mb-4">
                          
                            <div class="ps-3" >
                                <h6>${r.userId}<small><i style="padding:20px"> ${r.commentRegdate}</i></small></h6>
                                <p>${r.commentContent}</p>
                                <button class="btn btn-sm btn-light">Reply</button>
                            </div>
                        </div>
                        </c:forEach>
                        </div>
                        
                        <div class="bg-light rounded p-5">
                        <div class="section-title section-title-sm position-relative pb-3 mb-4">
                            <h3 class="mb-0">Leave A Comment</h3>
                        </div>
                        <sec:authorize access="isAuthenticated()">
                        
                        <form id="commentForm1" name="${detail1.articlePk}">
                            <div class="row g-3">
                                <div class="col-12">
                                	<sec:authentication var="user" property="principal"/>
									<input type="text" class="form-control" id="inputAuthor" name="userId" value="${user.username}" readonly="readonly"/>
                                   <!--  <input type="text" class="form-control bg-white border-0" name="comment" placeholder="Your Name" style="height: 55px;"> -->
                                </div>
                                
                                <div class="col-12">
                                    <textarea name="commentContent" class="form-control bg-white border-0" rows="5" placeholder="Comment"></textarea>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-primary w-100 py-3" type="submit">Leave Your Comment</button>
                                </div>
                            </div>
                        </form>
                        </sec:authorize>
                        <sec:authorize access="isAnonymous()">
                        <p>회원만 댓글을 달 수 있습니다.</p>
                        </sec:authorize>
                    </div>
                    </div>
   
 

                 <!-- 댓글 끝  -->

<!-- Vendor Start -->
	<!-- <div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
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
	</div> -->
	<!-- Vendor End -->

	<%@ include file="./footer.jsp"%>

</body>
<script>
	$("#commentForm1").submit(function(e){
		e.preventDefault();
		commentData = JSON.stringify(Object.fromEntries(new FormData(this)))
		console.log(commentData)
		$.ajax({
			url:"/board/cmtpost/"+e.target.name,
			type:"POST",
			data:commentData,
			contentType:"application/json",
			success: function(result){
				location.reload()
			}
		})
		
	})
</script>
</html>