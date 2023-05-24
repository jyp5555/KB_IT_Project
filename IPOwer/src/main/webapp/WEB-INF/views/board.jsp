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
<h1> USER Community </h1>
<div></div>
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
<tr>
<td class="col1">${contactBoard.articlePk}</td>
<td><a class="col2" href="board/detailreview?ARTICLE_PK=${contactBoard.articlePk}">${contactBoard.articleTitle}</a></td>
<td class="col3">${contactBoard.userName}</td>
<td class="col4">${contactBoard.articleContent}</td>
<td class="col4">${contactBoard.articleView}</td>
</tr>
</c:forEach>
</tbody>
</table>
<div>
<a href="${contextPath }/board/write">
<input type="button" value="글쓰기" class="btn btn-xs pull-right"  style= "font-size: 17px; ">
</a>
<!-- search{s} -->
		<div class="form-group row justify-content-center">
			<div class="w100" style="padding-right:10px">
				<select class="form-control form-control-sm" name="searchType" id="searchType">
					<option value="ARTICLE_TITLE">제목</option>
					<option value="ARTICLE_CONTENT">본문</option>
				</select>
			</div>
			<div class="w300" style="padding-right:10px">
				<input type="text" class="form-control form-control-sm" name="keyword" id="keyword">
			</div>
			<div>
				<button class="btn btn-sm btn-primary" name="btnSearch" id="btnSearch">검색</button>
			</div>
		</div>
		<!-- search{e} -->
</div>

<c:url var="getBoardListURL" value="/board/getBoardList"></c:url>
<script>
$(function(){ //아이디가 btnWrite인 버튼을 누르게 되면 write.do 컨트롤러로 맵핑
    $("#btnWrite").click(function(){
        location.href="${path}/board/write.do";
    });
});

	$(document).on('click', '#btnSearch', function(e){
		e.preventDefault();
        var searchType = $('#searchType').val();
        var keyword = $('#keyword').val();
        var url = "${contextPath}/board/search?searchType=" + searchType + "&keyword=" + keyword;
        location.href = url;
    });
</script>
</body>
</html>