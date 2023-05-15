<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<link href="/resources/css/card.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Card News</title>

</head>
<body>
<%@ include file="./header.jsp" %>
<br>
<h1>카드 뉴스</h1>
<div class="container mt-2 border border-dark rounded">
 	<form>
      <p><input type="date"></p>
      <p><input type="date"></p>
  

	  <div class="input-group mb-3">
  
        <select class="form-select form-select-sm" aria-label=".form-select-sm example">
 
		  <option value="title" selected>title</option>
		  <option value="content">content</option>
		  <option value="both">title+content</option>
		</select>
		
 		<input type="text" class="form-control" aria-label="Text input with dropdown button">
	  </div>
	  
<p><input type="submit" value="Submit"></p>
</form>
</div>  
<p class="container mt-2">전체 26건</p>
<hr>
<div class="container mt-2">

  <div class="row">
  	<c:forEach var="i" begin="1" end="8">
    <div class="col-md-3 col-sm-6">
      <div class="card card-block">
      <h4 class="card-title text-right"><i class="material-icons">settings</i></h4>
      <img src="https://static.pexels.com/photos/326424/pexels-photo-326424.jpeg" alt="Photo of sunset">
      <h5 class="card-title  mt-3 mb-3">ProVyuh</h5>
      <p class="card-text">This is a company that builds websites, web apps and e-commerce solutions.</p> 
      </div>
    </div>
    
   </c:forEach>
    
  </div> 
  
</div>


</body>
</html>