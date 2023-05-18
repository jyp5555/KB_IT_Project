<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판임</title>
</head>
<body>
<p>
${articles}</p>
<table>
<thead>
<th>no</th>
<th>title</th>
<th>writer</th>
<th>data</th>
<th>count</th>
</thead>
<tbody>
<c:forEach var="contactBoard" items="${articles}">
<tr class="row body">
<td class="col1">${contactBoard.ARTICLE_PK}</td>
<td class="col2">${contactBoard.ARTICLE_TITLE}</td>
<td class="col3">${contactBoard.USER_NAME}</td>
<td class="col4">${contactBoard.ARTICLE_CONTENT}</td>
<td class="col4">${contactBoard.ARTICLE_CONTENT}</td>
</tr>
</c:forEach>
</table>
</tbody>
</body>
</html>