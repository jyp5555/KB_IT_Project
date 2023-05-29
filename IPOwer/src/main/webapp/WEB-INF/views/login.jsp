<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
<link href="/resources/css/login.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="./header.jsp" %>

<div class="form">
  <div class="form__box">
    <div class="form__left">
      <div class="form__padding"><img class="form__image" src="/resources/img/character.png"/></div>
    </div>
    <div class="form__right">

      <div class="form__padding-right" style="line-height:70%;">
       	<form action="/login-process" method="post">
          <h1 class="form__title">Member Login</h1>
          <input class="form__email" type="text" required="required" name="userId" placeholder="id"/><br>
          <input class="form__password" type="password" required="required" name="userPw" placeholder="******"/><br>
          <input class="form__submit-btn" type="submit" value="Login" id="login_btn"/><br>
			</form>
        <form class="form-signin" method="get" action="/user/new">  
        <p> <a class="form__link" href="/user/new">Create your account</a></p>
        </form>
      </div>
    </div>
  </div>
</div>
<script>
	const errorMsg = <%=request.getAttribute("errorMsg")%>
	if (errorMsg.length>0){
		alert(errorMsg)
	}
</script>
</body>
</html>