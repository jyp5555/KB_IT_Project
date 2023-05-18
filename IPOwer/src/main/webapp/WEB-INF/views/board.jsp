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
<%@ include file="./header.jsp"%>
<h1>
USER Community
</h1>
<div>
</div>
<table class="table table-striped">
<thead>
<tr>
<th>no</th>
<th>title</th>
<th>writer</th>
<th>data</th>
<th>count</th>
</tr>
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
</tbody>

</table>
 
<div>
<a href="${contextPath }/board/write">
<input type="button" value="글쓰기" class="btn btn-xs pull-right"  style= "font-size: 17px; ">
</a>
</div>


<script>
$(function(){ //아이디가 btnWrite인 버튼을 누르게 되면 write.do 컨트롤러로 맵핑
    $("#btnWrite").click(function(){
        location.href="${path}/board/write.do";
    });
});
</script>


</body>
</html>