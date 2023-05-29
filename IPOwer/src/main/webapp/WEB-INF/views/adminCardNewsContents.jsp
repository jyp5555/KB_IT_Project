<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
body {
  font-family: "Helvetica Neue", Helvetica, Arial;
  font-size: 14px;
  line-height: 20px;
  font-weight: 400;
  color: #3b3b3b;
  -webkit-font-smoothing: antialiased;
  font-smoothing: antialiased;
  background: #2b2b2b;
}
@media screen and (max-width: 580px) {
  body {
    font-size: 16px;
    line-height: 22px;
  }
}

.wrapper {
  margin: 0 auto;
  padding: 40px;
  max-width: 800px;
}

.table {
  margin: 0 0 40px 0;
  width: 100%;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
  display: table;
}
@media screen and (max-width: 580px) {
  .table {
    display: block;
  }
}

.row {
  display: table-row;
  background: #f6f6f6;
}
.row:nth-of-type(odd) {
  background: #e9e9e9;
}
.row.header {
  font-weight: 900;
  color: #ffffff;
  background: #ea6153;
}
.row.green {
  background: #27ae60;
}
.row.blue {
  background: #2980b9;
}
@media screen and (max-width: 580px) {
  .row {
    padding: 14px 0 7px;
    display: block;
  }
  .row.header {
    padding: 0;
    height: 6px;
  }
  .row.header .cell {
    display: none;
  }
  .row .cell {
    margin-bottom: 10px;
  }
  .row .cell:before {
    margin-bottom: 3px;
    content: attr(data-title);
    min-width: 98px;
    font-size: 10px;
    line-height: 10px;
    font-weight: bold;
    text-transform: uppercase;
    color: #969696;
    display: block;
  }
}

.cell {
  padding: 6px 12px;
  display: table-cell;
}
@media screen and (max-width: 580px) {
  .cell {
    padding: 2px 16px;
    display: block;
  }
}

a, #newsTitle{
	color: #0582ae;
	font-weight: bolder;
	text-decoration: none
	
}

a, #newsTitle:hover {
	color: #035060;
	font-weight: bolder;
	text-decoration: none
	
}
</style>
<title>adminCardNewsContents</title>
</head>
	<script>
		console.log(${count})
		function sendDataToController(data) {
		  var form = document.createElement('form');
		  form.method = 'GET';
		  form.action = 'newsUpdate';
		
		  var input = document.createElement('input');
		  input.type = 'hidden';
		  input.name = 'newsPk';
		  input.value = data;
		
		  form.appendChild(input);
		  document.body.appendChild(form);
		
		  form.submit();
		}
	</script>
<body>

<%@ include file="./adminHeader.jsp"%>

<%-- <div class="container">
	<table class="table">
		<thead>
			<tr style="border:1px solid lightgray">
				<th style="background-color: #2980b9; color: white;">번호</th>
				<th style="background-color: #2980b9; color: white;">제목</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="i" begin="0" end="${count}">
				<tr>
					<td>${all[i].news_pk}</td>
					<td><a href="#" onclick="sendDataToController('${all[i].news_pk}')">${all[i].news_title}</a></td>
				</tr>
			</c:forEach>
			<c:if test="${count>0}">		
			  <c:forEach var="i" begin="0" end="${count-1}">
			    <tr style="border:1px solid lightgray">
			      <td style="background-color: white; color: #2980b9;">${i+1}</td>
			      <td>${all[i].newsPk}</td>
			      <td style="background-color: white; color: #2980b9;"><a style="background-color: white; color: #2980b9;" href="#" onclick="sendDataToController('${all[i].newsPk}')">${all[i].newsTitle}</a></td>
			    </tr>
			  </c:forEach>
			</c:if>
		</tbody>
	</table>

	<hr>
	<form action="newsCreate" method="GET">
		<button class="btn" style="padding-left: 95%" type="submit">Create</button>
	</form>
</div> --%>
<%-- <%@ include file="./adminFooter.jsp"%> --%>
<!-- <div class="container"> -->
<div>
	<table class="table">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${count>0}">		
			  <c:forEach var="i" begin="0" end="${count-1}">
			    <tr>
			      <td>${i+1}</td>
			      <%-- <td>${all[i].newsPk}</td> --%>
			      <td><a id="newsTitle" href="#" onclick="sendDataToController('${all[i].newsPk}')">${all[i].newsTitle}</a></td>
			    </tr>
			  </c:forEach>
			</c:if>
		</tbody>
	</table>

	<hr>
	<form action="newsCreate" method="GET">
		<button class="btn" style="padding-left: 95%" type="submit">Create</button>
	</form>
</div>
<%@ include file="./adminFooter.jsp"%>
</body>
</html>