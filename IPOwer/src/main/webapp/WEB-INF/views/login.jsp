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
<!-- <form action="/login-process" method="post">
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
</form> -->

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




<!--	<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				<form class="validation-form" id="join_form" novalidate>
					https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css
					<div class="mb-3">
						<label for="userId">아이디</label> <input type="text"
							class="form-control" id="userId" name="userId" placeholder=""
							required>
						<div class="valid-feedback">사용가능한 닉네임 입니다.</div>
						<div class="invalid-feedback">5글자 이상 10글자 이하로 작성해 주세요.</div>
					</div>
					<div class="mb-3">
						<label for="name">이름</label> <input type="text"
							class="form-control" id="userName" name="userName" placeholder=""
							required>
						<div class="invalid-feedback">이름을 입력해주세요.</div>
					</div>

					<div class="mb-3">
						<label for="password">비밀번호</label> <input type="password"
							class="form-control" id="userPw" name="userPw" required>
						<div class="valid-feedback">사용가능한 비밀번호 입니다.</div>
						<div class="invalid-feedback">5글자 이상 10글자 이하로 작성해 주세요.</div>
					</div>
					<div class="mb-3">
						<label for="passwordChk">비밀번호 확인</label> <input type="password"
							class="form-control" id="userPwChk" name="userPwChk" required>
						<div class="valid-feedback">일치합니다.</div>
						<div class="invalid-feedback">일치하지 않습니다.</div>
					</div>
					<div class="mb-3">
						<label for="phone">전화번호</label> <input type="tel"
							class="form-control" id="userPhone" name="userPhone"
							placeholder="010-0000-0000" required>
						<div class="invalid-feedback">전화번호를 입력해주세요.</div>
					</div>

					<hr class="mb-4">

					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="agreement"
							required> <label class="custom-control-label"
							for="agreement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>
					<div class="mb-4"></div>
					<button class="btn btn-primary btn-lg btn-block" id="join_btn"
						type="submit">회원 가입 하기</button>
				</form>
			</div>
		</div>
	</div>
 -->