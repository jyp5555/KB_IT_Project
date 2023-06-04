<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<style>
td > a, #companySite{
	color:#6B6A75;
}
</style>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="exampleModalLongTitle">Modal title</h5><h3 id="rating"></h3>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="card" style="padding:10px; margin:5px">
  					<!-- 기업 정보 -->
  					<h5>기업 개요</h5>
  					<table class="table" class="align-middle">
  						<tr>
  							<th>종목코드</th><td id="companyTicker" class="align-middle"></td>
  						<tr>
  						<tr>
  							<th>회사명</th><td id="companyName" class="align-middle"></td>
  						<tr>
  						<tr>
  							<th>사이트</th><td id="companySite" class="align-middle""></td>
  						<tr>
  					</table>
				</div>
				<div class="card" style="padding:10px; margin:5px">
					<!-- 청약정보 -->
					<h5>청약 정보</h5>
  					<table class="table">
  						<tr>
  							<th>최소 청약 주수</th><td id="companyMinimumcount"></td><th>주간사</th><td id="companyManager"></td>
  						<tr>
  						<tr>
  							<th>청약일</th><td id="companyOfferingdate"></td><th>상장일</th><td id="companyListingdate"></td>
  						<tr>
  					</table>
				</div>
				<div class="card" style="padding:10px; margin:5px">
					<h5>수요 예측 결과</h5>
					<table class="table">
  						<tr>
  							<th>수요 예측 기관 참여 경쟁률</th><td id="demandRatio"></td><th>의무 보유 확약 비율</th><td id="demandLockup"></td>
  						<tr>
  						<tr>
  							<td colspan=4>
  								<div style=" height:30vh; width:30vw">
									<canvas id="myChart"></canvas>
								</div>
  							</td>
  						<tr>
  					</table>
					
					
					
				</div>
				<div class="container">
					<sec:authorize access="isAuthenticated()"><button class="btn btn-sm btn-info"name="btnLikeCompany">관심 주식 담기</button></sec:authorize>
				</div>
			</div>
			<div class="modal-footer">

			</div>
		</div>
	</div>
</div>
<script>
	$(".close").click(function(e){
		$("#exampleModalLong").modal("hide");
		myChart.destroy();
	})
	
	$("button[name=btnLikeCompany]").click(function(e){
		let likeCompany = $("#exampleModalLongTitle").text();
		console.log(likeCompany)
		$.ajax({
			url:"/company/like",
			type:"GET",
			data:{
				"name":likeCompany
			},
			dataType:"json",
			contentType:"application/json",
			success:function(data){
				$('#exampleModalLong').modal('hide');
			},
			complete:function(e){
				console.log(e)
				$('#exampleModalLong').modal('hide');
			}
		})
	})
</script>