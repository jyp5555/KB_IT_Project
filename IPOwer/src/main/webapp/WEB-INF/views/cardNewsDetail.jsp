<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

<link href="/resources/css/card.css" rel="stylesheet" type="text/css">
<!-- CSS only -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Card News</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<body>
<%@ include file="./header.jsp" %>
<br>
<h1>${dto.news_title }</h1>
<p><fmt:formatDate value="${dto.news_regdate}" pattern="yyyy-MM-dd" type="date"/></p>
<hr>

<div id="carouselExampleIndicators" class="carousel slide" >
  <div class="carousel-inner">
    <c:forEach items="${files}" var="file" varStatus="loop">
      <div class="carousel-item${loop.index == 0 ? ' active' : ''}">
        <img src="/${file.file_path}/${file.file_name}.${file.file_contenttype}" class="d-block w-100" alt="Image ${loop.index + 1}">
      </div>
    </c:forEach>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>



<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<link href="/resources/css/card_detail.css" rel="stylesheet"
	type="text/css">
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Card News</title>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
	<%@ include file="./header.jsp"%>
	<br>
	<h1>${dto.newsTitle }</h1>
	<p>
		<fmt:formatDate value="${dto.newsRegdate}" pattern="yyyy-MM-dd" type="date" />
	</p>
	<p>${dto.newsView }</p>
	<hr>
	<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" data-interval="false">
		<div class="carousel-inner">
			
		</div>

		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleControls" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
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
			
			img.alt = 'Image ' + (i + 1);

			item.appendChild(img);
			carouselInner.appendChild(item);
		}
	</script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</body>
</html>