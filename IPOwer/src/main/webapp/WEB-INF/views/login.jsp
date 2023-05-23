<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<%@ include file="./header.jsp" %>
<form action="/login-process" method="post">
	<table>
		<tr>
			<td>아이디</td><td><input type="text" required="required" name="userId"></td>
		</tr>
		<tr>
			<td>비밀번호</td><td><input type="password" required="required" name="userPw"></td>
		</tr>
	</table>
	<button class="btn btn-lg btn-primary btn-block" type="submit" id="login_btn">로그인</button>
</form>

<form class="form-signin" method="get" action="/user/new">
        <button class="btn btn-lg btn-warning btn-block" type="submit">회원가입</button>
</form>

<script>
	const errorMsg = <%=request.getAttribute("errorMsg")%>
	if (errorMsg.length>0){
		alert(errorMsg)
	}
</script>
</body>
</html>