<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminCardNewsContents</title>
</head>
<body>

	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
			</tr>
		</thead>
		<tbody>
<%-- 			<c:forEach var="i" begin="0" end="${count}">
				<tr>
					<td>${all[i].news_pk}</td>
					<td><a href="#" onclick="sendDataToController('${all[i].news_pk}')">${all[i].news_title}</a></td>
				</tr>
			</c:forEach> --%>
			<c:if test="${count > 0}">
			  <c:forEach var="i" begin="0" end="${count}">
			    <tr>
			      <td>${all[i].news_pk}</td>
			      <td><a href="#" onclick="sendDataToController('${all[i].news_pk}')">${all[i].news_title}</a></td>
			    </tr>
			  </c:forEach>
			</c:if>
		</tbody>
	</table>
	<hr>
	<form action="newsCreate" method="GET">
		<button type="submit">Create</button>
	</form>

	<script>
	function sendDataToController(data) {
	  var form = document.createElement('form');
	  form.method = 'GET';
	  form.action = 'newsUpdate';
	
	  var input = document.createElement('input');
	  input.type = 'hidden';
	  input.name = 'news_pk';
	  input.value = data;
	
	  form.appendChild(input);
	  document.body.appendChild(form);
	
	  form.submit();
	}
	</script>

</body>
</html>