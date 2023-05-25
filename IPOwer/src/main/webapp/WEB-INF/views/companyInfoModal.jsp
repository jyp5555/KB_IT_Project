<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog modal-dialog-centered modal-dialog-scrollable" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="container">
  					<!-- 기업 정보 -->
  					<h5>기업 개요</h5>
  					<table class="table">
  						<tr>
  							<th>종목코드</th><td id="companyTicker"></td>
  						<tr>
  						<tr>
  							<th>회사명</th><td id="companyName"></td>
  						<tr>
  						<tr>
  							<th>사이트</th><td id="companySite"></td>
  						<tr>
  					</table>
				</div>
				<div class="container">
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
				<div class="container">
					<h5>수요 예측 결과</h5>
					<table class="table">
  						<tr>
  							<th>수요 예측 기관 참여 경쟁률</th><td id="demandRatio"></td><th>의무 보유 확약 비율</th><td id="demandLockup"></td>
  						<tr>
  						<tr>
  							<td colspan=4>
  								<div class="chart-container" style="position: relative; height:30vh; width:30vw">
									<canvas id="myChart"></canvas>
								</div>
  							</td>
  						<tr>
  					</table>
					
					
					<!-- 차트 -->
				</div>
			</div>
			<div class="modal-footer">

			</div>
		</div>
	</div>
</div>
<script>
const ctx = document.getElementById('myChart');
$('#exampleModalLong').on('hidden.bs.modal', function (e) {
	data1=[]
});

var myChart = new Chart(context, {
	type: 'bar', // 차트의 형태
    data: { // 차트에 들어갈 데이터
        labels: [
            //x 축
            '가격 미제시', ''
        ],
        datasets: [
            { //데이터
                label: 'test1', //차트 제목
                data: data1
                backgroundColor: [
                    //색상
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    //경계선 색상
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1 //경계선 굵기
            }
        ],
    },
    options: {}
    
});
</script>