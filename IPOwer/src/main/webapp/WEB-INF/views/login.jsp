<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<%@ include file="./header.jsp" %>
<div id="container ">
<form id="login_form" action="/login-process" method="post" class="align-items-center">
	<div class="row mb-3">
    	<label for="inputEmail3" class="col-sm-2 col-form-label col-form-label-lg">아이디</label>
    	<div class="col-sm col-md-3">
      		<input type="text" class="form-control form-control-lg" required="required" name="userId">
    	</div>
  	</div>
  	<div class="row mb-3">
    	<label for="inputEmail3" class="col-sm-2 col-form-label col-form-label-lg">비밀번호</label>
    	<div class="col-sm col-md-3">
      		<input type="password" class="form-control form-control-lg" required="required" name="userPw" autocomplete="off">
    	</div>
  	</div>
</form>
	<div class="container-md">
		<button form="login_form" class="btn btn-primary btn-lg" type="submit" id="login_btn">로그인</button>
		<a href="/user/new" class="btn btn-lg btn-warning" role="button">회원가입</a>
	</div>
</div>
<script>
	const errorMsg = <%=request.getAttribute("errorMsg")%>
	/* if (errorMsg.length>0){
		alert(errorMsg)
	} */
</script>
</body>
</html>