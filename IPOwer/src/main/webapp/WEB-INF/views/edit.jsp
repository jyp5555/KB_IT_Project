<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
window.onload = function() {

	document.getElementById("btnUpdate").onclick = function() {
		
		if(confirm("정말수정할까요")) {
	
			frm.action="/board/updatereviewcommit";
			frm.submit();
		}
	}
}
</script>

</head>
<body>
** 수정하기 **
<br>
<form name="frm" method="post">
<table border="2">
	<tr>
		<td>번호</td>
		<td>${up.articlePk}</td>
		<input value="${up.articlePk}" name="ARTICLE_PK">
	</tr>
	<tr>
		<td>작성자</td>
		<td>${up.USER_PK}</td>
		<input value="${up.userPk}" name="USER_PK" type="hidden">	
	</tr>
		<tr>
		<td>제목</td>
		<td><input type="text" value="${up.articleTitle}" name="ARTICLE_TITLE"></td>
	</tr>
		<tr>
		<td>글내용</td>
		<td><textarea rows="5" cols="50" name="ARTICLE_CONTENT">${up.articleContent}</textarea></td>
	</tr>
	</tr>
	<tr>
		<td>작성일</td>
		<td>${up.articleRegdate}</td>
	</tr>
	<tr>
		<td>조회수</td>
		<td>${up.articleView}</td>
	</tr>
		<tr colspan="3">
		<td colspan="3">
		<input type="button" value="수정" id="btnUpdate" style="margin: auto; width: 100%;">
		</td>
		</tr>
</table>
</form>
</body>
</html>