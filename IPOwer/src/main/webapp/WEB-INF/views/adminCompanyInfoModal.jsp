<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1"	role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-xl" role="dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLongTitle">Modal title
				</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<!-- <form id="frm" onsubmit="return false">
					<div class="form-row">
						<div class="form-group col-md-4">
							<label for="companyTicker" class="col-form-label">기업 코드 *</label>
							<input type="number" class="form-control" id="companyTicker"
								name="companyTicker" required="required">
						</div>
						<div class="form-group col-md-4">
							<label for="companyName" class="col-form-label">기업명 *</label> <input
								type="text" class="form-control" id="companyName"
								name="companyName" required="required">
						</div>
						<div class="form-group col-md-4">
							<label for="companySite" class="col-form-label">기업 사이트</label> <input
								type="text" class="form-control" id="companySite"
								name="companySite">
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-3">
							<label for="companyFaceprice" class="col-form-label">액면가
								*</label> <input type="number" class="form-control"
								id="companyFaceprice" name="companyFaceprice"
								required="required">
						</div>
						<div class="form-group col-md-3">
							<label for="companyTopprice" class="col-form-label">희망
								공모가액 상단 *</label> <input type="number" class="form-control"
								id="companyTopprice" name="companyTopprice">
						</div>
						<div class="form-group col-md-3">
							<label for="companyBottomprice" class="col-form-label">희망공모가액
								하단 *</label> <input type="number" class="form-control"
								id="companyBottomprice" name="companyBottomprice">
						</div>
						<div class="form-group col-md-3">
							<label for="companyFixedprice" class="col-form-label">확정
								공모가액</label> <input type="number" class="form-control"
								id="companyFixedprice" name="companyFixedprice">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-3">
							<label for="companyManager" class="col-form-label">주간사 *</label>
							<input type="text" class="form-control" id="companyManager"
								name="companyManager" required="required">
						</div>
						<div class="form-group col-md-3">
							<label for="companyOfferingdate" class="col-form-label">청약일
								*</label> <input type="date" class="form-control"
								id="companyOfferingdate" name="companyOfferingdate"
								required="required">
						</div>
						<div class="form-group col-md-3">
							<label for="companyRefundingdate" class="col-form-label">환불일</label>
							<input type="date" class="form-control" id="companyRefundingdate"
								name="companyRefundingdate">
						</div>
						<div class="form-group col-md-3">
							<label for="companyListingdate" class="col-form-label">상장일</label>
							<input type="date" class="form-control" id="companyListingdate"
								name="companyListingdate">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="companyMinimumcount" class="col-form-label">최소청약주수
								*</label> <input type="number" class="form-control"
								id="companyMinimumcount" name="companyMinimumcount"
								required="required">
						</div>
						<div class="form-group col-md-6">
							<label for="companyCompetitiveratio" class="col-form-label">청약경쟁률</label>
							<input type="number" class="form-control"
								id="companyCompetitiveratio" name="companyCompetitiveratio">
						</div>
					</div>
					<hr>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="demandRatio" class="col-form-label">수요 예측
								기관경쟁률</label> <input type="number" class="form-control" id="demandRatio"
								name="demandRatio">
						</div>
						<div class="form-group col-md-6">
							<label for="demandLockup" class="col-form-label">의무 보유
								확약비율 </label> <input type="number" class="form-control"
								id="demandLockup" name="demandLockup">
						</div>
					</div>

					<div class="form-row">
						<div class="form-group col-md-2">
							<label for="demandNoprice" class="col-form-label">가격미제시</label> <input
								type="number" class="form-control" id="demandNoprice"
								name="demandNoprice">
						</div>
						<div class="form-group col-md-2">
							<label for="demandUnderbottom" class="col-form-label">밴드
								하단 미만</label> <input type="number" class="form-control"
								id="demandUnderbottom" name="companyTicker">
						</div>
						<div class="form-group col-md-2">
							<label for="demandBottom" class="col-form-label">밴드 하단</label> <input
								type="number" class="form-control" id="demandBottom"
								name="companyTicker">
						</div>
						<div class="form-group col-md-2">
							<label for="demandBand" class="col-form-label">밴드</label> <input
								type="number" class="form-control" id="demandBand"
								name="companyTicker">
						</div>
						<div class="form-group col-md-2">
							<label for="demandTop" class="col-form-label">밴드 상단</label> <input
								type="number" class="form-control" id="demandTop"
								name="companyTicker">
						</div>
						<div class="form-group col-md-2">
							<label for="demandOvertop" class="col-form-label">밴드 상단
								초과</label> <input type="number" class="form-control" id="demandOvertop"
								name="companyTicker">
						</div>
					</div>
				</form>-->
				<form id="frm" method="post" onsubmit="return validationForm()">
					<input id="test" name="test" required="required">
				</form>
			</div>
			<div class="modal-footer">
				<button type="submit" class="btn btn-primary" form="frm" id="btnSave" data-dismiss="modal">저장</button>
			</div>
		</div>
	</div>
</div>
