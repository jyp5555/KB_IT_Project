<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<!-- <html> -->
<html xmlns:th="http://www.thymeleaf.org">

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
 	<form method="post" id="search_form"><br>
      <p style="display: inline"><input type="date" id="start" name="start_date" onchange="check(start.value,'start')"> - </p>
      <p style="display: inline"><input type="date" id="end" name="end_date" onchange="check(end.value,'end')"></p>
  <!-- onchange="check(end.value)" -->
	<br><br>	  
	  <div class="input-group mb-3">
        <!-- <label for="basic-url" class="form-label">Your vanity URL</label> -->
		<div class="input-group mb-3">
  		<span class="input-group-text" id="basic-addon3">제목</span>
 	 	<input type="text" class="form-control" name="search_word" aria-describedby="basic-addon3">
		</div>
		
	  </div>
	  <p><input type="submit" value="검색"></p>
	 <!-- <button type="button" class="btn btn-sm btn-success" type="submit">검색</button> -->
	</form>
</div>  
<p class="container mt-2">전체 ${count+1 }건</p>

<hr>
<div class="container mt-2">

  <div class="row">
  	<c:forEach var="i" begin="0" end="${count}">
    <div class="col-md-3 col-sm-6">
      <div  id="card" class="card card-block" onclick="location.href='http://localhost:8080/news/${all[i].news_pk}'">
     
      <img src="/${all[i].file_path}/${all[i].file_name}.${all[i].file_contenttype}" alt="img">
      <h5 class="card-title  mt-3 mb-3">${all[i].news_title }</h5>
      <%-- <p class="card-text">${all[i].news_regdate }</p> --%>
      <fmt:formatDate value="${all[i].news_regdate}" pattern="yyyy-MM-dd" type="date"/>
      
      </div>
    </div>
    
   </c:forEach>
    
  </div> 
  
</div>


<script type="text/javascript"> 
	function getDateStr(myDate){
		var year = myDate.getFullYear();
		var month = myDate.getMonth()+1;
		var day = myDate.getDate();
		return year+"-"+(("00"+month.toString()).slice(-2))+"-"+(("00"+day.toString()).slice(-2));
	}
	
	var today = new Date();
	var before = new Date();
	var seven_day = before.getDate();
	before.setDate(seven_day-7);
	console.log(getDateStr(today)+","+getDateStr(before))
	
	
	document.getElementById("start").setAttribute("max", getDateStr(today));
	document.getElementById("start").setAttribute("value", getDateStr(before));
	document.getElementById("end").setAttribute("max", getDateStr(today));
	document.getElementById("end").setAttribute("value", getDateStr(today));
        
	test = document.querySelectorAll("#start,#end")
	start_date = test[0].value
	end_date = test[1].value
	
	function check(date,se){
		if(se=="start"){
			start_date = date
			console.log(date,end_date)
			if(date > end_date){
				console.log("yes")
				document.getElementById("start").setAttribute("value",end_date)
			}
		}
		else{
			end_date = date
		}
	}
	
    </script>


</body>
</html>