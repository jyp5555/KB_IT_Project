<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!-- <html> -->
<html xmlns:th="http://www.thymeleaf.org">

<head>

<link href="/resources/css/card.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Card News</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>


</head>
<body>
	<%@ include file="./header.jsp"%>
	<br>
	<h1>카드 뉴스</h1>
	<div class="container mt-2 border border-dark rounded">
		<form id="search_form">
			<br>
			<p style="display: inline">
				<input type="date" id="start" name="start_date" onchange="check(start.value,'start')"> - </p>
			<p style="display: inline"><input type="date" id="end" name="end_date" onchange="check(end.value,'end')"></p>
			<!-- onchange="check(end.value)" -->
			<br> <br>
			<div class="input-group mb-3">
				<!-- <label for="basic-url" class="form-label">Your vanity URL</label> -->
				<div class="input-group mb-3">
					<span class="input-group-text" id="basic-addon3">제목</span> <input
						type="text" class="form-control" name="search_word"
						aria-describedby="basic-addon3">
				</div>

			</div>
			<p><input type="submit" value="검색"></p>
			<!-- <button type="button" class="btn btn-sm btn-success" id="search_btn">검색</button> -->
		</form>
	</div>
	<p class="container mt-2" id="count">전체 ${count+1}건</p>

	<hr>
	<div class="container mt-2">

		<div id="card_news" class="row">
			<c:forEach var="i" begin="0" end="${count}">
				<div class="col-md-3 col-sm-6">
					<div id="card" class="card card-block"
						onclick="location.href='http://localhost:8080/news/${all[i].news_pk}'">

						<img src="/${all[i].file_path}/${all[i].file_name}.${all[i].file_contenttype}" alt="img">
						<h5 class="card-title  mt-3 mb-3">${all[i].news_title }</h5>
						<%-- <p class="card-text">${all[i].news_regdate }</p> --%>
						<fmt:formatDate value="${all[i].news_regdate}" pattern="yyyy-MM-dd" type="date" />
						
						<div>조회수 : ${all[i].news_view }</div>
					</div>
				</div>

			</c:forEach>

		</div>

	</div>
	

	<script type="text/javascript"> 
		is_getDate = false
		function getDateStr(myDate){
			var year = myDate.getFullYear();
			var month = myDate.getMonth()+1;
			var day = myDate.getDate();
			return year+"-"+(("00"+month.toString()).slice(-2))+"-"+(("00"+day.toString()).slice(-2));
		}
		
		function today_date(){
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
			start = test[0].value
			end = test[1].value
		}
		
		function check(date,se){
			if(se==="start"){
				start = date
				document.querySelector("#start").setAttribute("value",start)
				if(start > end){
					end = start
					console.log("end"+end)
					document.querySelector("#end").setAttribute("value",end)
					
					
				}
				console.log(document.getElementById("end"))
				console.log(document.getElementById("start"))
			}
			else if(se==="end"){
				end = date	
				document.querySelector("#end").setAttribute("value",end)
				if(start > end){
					start = end
					document.querySelector("#start").setAttribute("value",start)
				}
					console.log(document.getElementById("end"))
					console.log(document.getElementById("start"))
			}
			
			console.log(start,end)
		}
		
	
		$(document).ready(function() {
			console.log(is_getDate)
			if(!is_getDate){
				today_date();
				is_getDate = true;
			}/* 시작 날짜, 종료 날짜 기본값 한번만 설정 */
			
			$('#search_form').on('submit', function(event) {
				// 폼의 기본 동작인 페이지 이동을 막기 위해 preventDefault()를 호출합니다.

	
			    // 폼 데이터를 가져옵니다.
			    var params = {
	            	search_word      : $('input[name=search_word]').val(),
	            	start_date      : $('input[name=start_date]').val(),
	            	end_date      : $('input[name=end_date]').val()
	  			}
			    
			   console.log(params)
				console.log(params.start_date+''+params.end_date)
				$.ajax({
	        		type : "POST",            // HTTP method type(GET, POST) 형식이다.
	        		url : "/news",      // 컨트롤러에서 대기중인 URL 주소이다.
	        		data : params,
	        		//contentType:"application/json", 	// Json 형식의 데이터이다.
	        		success : function(res){ // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
	        			var count = $('#count')
	        			var card_news = $('#card_news')
	        			var start = $('#start')
	        			var end =  $('#end')
	        			count.html('')
	        			card_news.html('')
	        			
						if(params.start_date!=""){	
							console.log("start_date: "+params.start_date+" "+params.end_date)
		        			start.html('')
		        			start.append('<input type="date" id="start" name="start_date" value='+params.start_date +' onchange="check(start.value,"start")">')
						}
	        			if(params.end_date!=""){
	        				console.log("end_date: "+params.start_date+" "+params.end_date)
	        				end.html('')
	        				end.append('<input type="date" id="end" name="end_date" value='+params.end_date +' onchange="check(end.value,"end")">')
	        			}
	        			count.append('<p class="container mt-2">전체 '+ res.count +'건</p>')
	        			$.each(res.list_news, function(index, item) {
	        				card_news.append('<div class="col-md-3 col-sm-6"><div class="card card-block" onclick="location.href=\'http://localhost:8080/news/' 
	        						+ item.news_pk + '\'"><img src="/' + item.file_path + '/' + item.file_name + '.' + item.file_contenttype + '" alt="img"><h5 class="card-title  mt-3 mb-3">'
	        						+ item.news_title + '</h5></div></div>')
	        			})
        				/* $("#test").html(res);  */
	        		},
	        		error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
						alert("통신 실패")
	        		}
	        	});
			    return false
			})
		})
    </script>


</body>
</html>