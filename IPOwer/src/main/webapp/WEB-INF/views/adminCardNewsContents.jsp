<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

<!-- <div class="container"> -->
<div style="padding-top: 3%;
			padding-left: 25%;
			padding-right: 25%;
			padding-bottom: 3%">
	<table class="table" style="text-align: center;">
		<thead style="background-color: #79dddb;">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${count>0}">		
			  <c:forEach var="i" begin="0" end="${count-1}">
			    <tr>
			      <td>${i+1}</td>
			      <%-- <td>${all[i].newsPk}</td> --%>
			      <td><a id="newsTitle" href="#" onclick="sendDataToController('${all[i].newsPk}')">${all[i].newsTitle}</a></td>
			      <td>
					<fmt:formatDate value="${all[i].newsRegdate}" pattern="yyyy-MM-dd" type="date" />
                  </td>
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