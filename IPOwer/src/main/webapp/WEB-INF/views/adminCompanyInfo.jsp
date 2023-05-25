<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
	<%@ include file="./adminHeader.jsp"%>
	<div id="companyList">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">no</th>
					<th scope="col">회사명</th>
					<th scope="col">청약일</th>
					<th scope="col">수정/삭제</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="company" items="${companyList}" >
					<tr>
						<th scope="col">${company.companyPk }</th>
						<td>${company.companyName }</td>
						<td>${company.companyOfferingdate }</td>
						<td>
							
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<hr>
	<div>
		<!-- Button trigger modal -->
		<button id="createBtn" type="button" class="btn btn-primary" data-toggle="modal">회사 정보 입력</button>
		<%@ include file="./adminCompanyInfoModal.jsp"%>
	</div>
</body>
</html>