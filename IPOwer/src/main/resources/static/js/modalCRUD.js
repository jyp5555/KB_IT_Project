var action = '';
var url = '';
var type = '';
var bno = 0;

$(document).ready(function(){

	// 새 글 쓰기 버튼 클릭
	$("#createBtn").click(function(){
		action='create';
		type = 'POST'
		$("#exampleModalLongTitle").text("회사 정보 입력");
		$("#exampleModalLong").modal();
	});
	
//	// 수정하기 버튼 클릭
//	$("button[name='modify']").click(function(){
//		action='modify';
//		type = 'PUT';
//		bno = this.value;
//
//		// content 담기
//		var row = $(this).parent().parent().parent();
//		var tr = row.children();
//		
//		var userName = tr.eq(2).text();
//		var contents = tr.eq(1).text();
//
//		$("#modal-title").text("수정하기");
//
//		$("#userName").val(userName);
//		$("#contents").val(contents);
//		
//		$("#myModal").modal();
//	});
//	
//	// 삭제하기 버튼 클릭
//	$("button[name='delete']").click(function(){
//		bno = this.value;
//		$.ajax({
//			url : '/board/' + bno,
//			type : 'DELETE',
//		});
//		location.reload();
//	})
	
	
	// Modal의 Submit 버튼 클릭
	$("#btnSave").click(function(){
		
		if(action=='create')
		{
			url = '/test'
		}
//		if(action == 'create'){
//			bno = 0;
//			url = '/admin/new/company';
//		}else if(action == 'modify'){
//			url = '/admin/company';
//		}
//
//		var data = {
//			companyTicker      : $('input[name=companyTicker]').val(),
//			companyName      : $('input[name=companyName]').val(),
//			companySite      : $('input[name=companySite]').val(),
//			companyFaceprice      : $('input[name=companyFaceprice]').val(),
//			companyFixedprice      : $('input[name=companyFixedprice]').val(),
//			companyTopprice      : $('input[name=companyTopprice]').val(),
//			companyBottomprice      : $('input[name=companyBottomprice]').val(),
//			companyManager      : $('input[name=companyManager]').val(),
//			companyOfferingdate      : $('input[name=companyOfferingdate]').val(),
//			companyRefundingdate      : $('input[name=companyRefundingdate]').val(),
//			companyListingdate      : $('input[name=companyListingdate]').val(),
//			companyMinimumcount      : $('input[name=companyMinimumcount]').val(),
//			companyCompetitiveratio      : $('input[name=companyCompetitiveratio]').val(),
//			demandRatio      : $('input[name=demandRatio]').val(),
//			demandLockup      : $('input[name=demandLockup]').val(),
//			demandNoprice      : $('input[name=demandNoprice]').val(),
//			demandUnderbottom      : $('input[name=demandUnderbottom]').val(), 
//			demandBottom      : $('input[name=demandBottom]').val(),
//			demandBand      : $('input[name=demandBand]').val(),
//			demandTop      : $('input[name=demandTop]').val(),
//			demandOvertop      : $('input[name=demandOvertop]').val()
//		};
//		
		var data = {
			test : $('input[name=test]').val()
		}
		$.ajax({
			url : url,
			type : type,
			data : data,
			success: function(data){$("#exampleModalLong").modal('toggle');},
			complete: function(data){location.reload();}
		})
		
		location.reload();
	});
	

});