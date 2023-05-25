<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>글쓰기 성공</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>글쓰기 성공</h1>
        <p>${result}</p><!-- message -->
        <a class="btn btn-primary" href="/board/write">글쓰기 페이지로 돌아가기</a>
    </div>
    <script src="http://code.jquery.com/jquery-3.1.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>