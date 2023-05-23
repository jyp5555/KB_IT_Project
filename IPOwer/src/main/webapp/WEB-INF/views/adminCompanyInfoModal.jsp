<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<!-- exampleModalLongTitle -->
		<!-- Modal -->
		<div class="modal fade" id="exampleModalLong" tabindex="-1"
			role="dialog" aria-labelledby="myExtraLargeModalLabel"
			aria-hidden="true">
			<div class="modal-dialog modal-xl" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLongTitle"> Modal title </h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form id="">
							<div class="form-row">
								<div class="form-group col-md-4">
									<label for="companyTicker" class="col-form-label">기업 코드 *</label>
									<input type="number" class="form-control" id="companyTicker" required="required">
								</div>
								<div class="form-group col-md-4">
									<label for="companyName" class="col-form-label">기업명 *</label> 
									<input type="text" class="form-control" id="companyName" required="required">
								</div>
								<div class="form-group col-md-4">
									<label for="companySite" class="col-form-label">기업 사이트</label>
									<input type="text" class="form-control" id="companySite">
								</div>
							</div>
							
							<div class="form-row">
								<div class="form-group col-md-3">
									<label for="companyFaceprice" class="col-form-label">액면가 *</label>
									<input type="number" class="form-control" id="companyFaceprice" required="required">
								</div>
								<div class="form-group col-md-3">
									<label for="companyTopprice" class="col-form-label">희망 공모가액 상단 *</label> 
									<input type="number" class="form-control" id="companyTopprice">
								</div>
								<div class="form-group col-md-3">
									<label for="companyBottomprice" class="col-form-label">희망공모가액 하단 *</label> 
									<input type="number" class="form-control" id="companyBottomprice">
								</div>
								<div class="form-group col-md-3">
									<label for="companyFixedprice" class="col-form-label">확정 공모가액</label> 
									<input type="number" class="form-control" id="companyFixedprice">
								</div>								
							</div>
							<div class="form-row">
								<div class="form-group col-md-3">
									<label for="companyManager" class="col-form-label">주간사 *</label>
									<input type="text" class="form-control" id="companyManager" required="required">
								</div>
								<div class="form-group col-md-3">
									<label for="companyOfferingdate" class="col-form-label">청약일 *</label>
									<input type="date" class="form-control" id="companyOfferingdate" required="required">
								</div>
								<div class="form-group col-md-3">
									<label for="companyRefundingdate" class="col-form-label">환불일</label>
									<input type="date" class="form-control" id="companyRefundingdate">
								</div>
								<div class="form-group col-md-3">
									<label for="companyListingdate" class="col-form-label">상장일</label>
									<input type="date" class="form-control" id="companyListingdate">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="companyMinimumcount" class="col-form-label">최소청약주수</label> 
									<input type="number" class="form-control" id="companyMinimumcount" required="required">
								</div>
								<div class="form-group col-md-6">
									<label for="companyCompetitiveratio" class="col-form-label">청약경쟁률</label>
									<input type="number" class="form-control" id="companyCompetitiveratio">
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">취소</button>
						<button type="button" class="btn btn-primary">저장</button>
					</div>
				</div>
			</div>
		</div>

</body>
</html>