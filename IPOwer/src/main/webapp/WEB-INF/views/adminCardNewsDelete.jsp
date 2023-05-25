<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminCardNewsUpdate</title>
</head>
<body>
	<h3>여기는 업데이트 페이지</h3>
	<table>	
		<tr>
			<td>뉴스_PK</td>
			<td>뉴스 제목</td>
			<td>파일_이름</td>
			<td>파일_타입</td>
			<td>파일_경로</td>
		</tr>
		<tr>
			<form action="newsContents" method="POST">
				<td>${selectByPk.news_pk}</td>
				<td><input name="news_title" placeholder="${selectByPk.news_title}"></td>
				<td><input name="file_title" placeholder="${selectByPk.file_title}"></td>
				<td>${selectByPk.file_type}</td>
				<td>${selectByPk.file_path}</td>
			</form>
		</tr>
	</table>
	<button type="submit">완료</button>
</body>
</html>