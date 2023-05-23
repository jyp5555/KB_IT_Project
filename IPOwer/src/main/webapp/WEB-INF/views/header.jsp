<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous" />
<style>

 .navbar-nav > li

 {
  padding-left:20px;
  padding-right:20px;
 }

</style>
</head>
<sec:authentication property="principal" var="prc"/>
<nav class="navbar navbar-expand-md navbar-dark bg-dark main-nav">
    <div class="collapse navbar-collapse flex-1 nav navbar-nav justify-content-center">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="navbar-toggler-icon"></span>
        </button>
		<div class="col-md-4 nav navbar-nav justify-content-center">
			<ul
				class="nav navbar-nav justify-content-center nav navbar-nav justify-content-center">
				<li class="nav-item active"><a class="nav-link" href="/home">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="/community">Community</a></li>
				<li class="nav-item"><a class="nav-link" href="/cards">Contents</a></li>
				<li class="nav-item"><sec:authorize access="isAuthenticated()"><a class="nav-link" href="/mypage">My Page</a></sec:authorize></li>
				<li class="nav-item"><sec:authorize access="isAnonymous()" ><a class="nav-link" href="/user/me">로그인</a></sec:authorize></li>
				<li class="nav-item"><sec:authorize access="isAuthenticated()"><a class="nav-link" href="/home">로그아웃</a></sec:authorize></li>
			</ul>
		</div>
	</div>
</nav>
</body>
</html>