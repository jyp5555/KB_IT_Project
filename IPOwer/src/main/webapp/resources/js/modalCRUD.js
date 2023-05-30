var action = '';
var url = '';
var type = '';

var companyPk = 0;

$(document).ready(function(){
	
	$(".close").click(function(e){
		console.log(e)
		$("#exampleModalLong").modal("hide")
	})
// 새 글 쓰기 버튼 클릭
	$("#btnCreate").click(function(){
		action='create';
		type = 'POST'
		url="/admin/company"
		$("#exampleModalLongTitle").text("회사 정보 입력");
		$("#exampleModalLong").modal('show');
	});
	
	// 수정하기 버튼 클릭
	$("button[name='modify']").click(function(e){
		action='modify';
		type = 'PUT';
		companyPk = e.target.value;
		url = "/admin/company/"+companyPk
		console.log(e.target.value)
		
		$.ajax({
			url:url,
			type:"GET",
			dataType: "json",
			success:function(result){
				
				$("#exampleModalLongTitle").text("회사 정보 수정");
				$("#exampleModalLong").modal('toggle');
				
				$("#companyTicker").val(result.companyTicker);
				$("#companyName").val(result.companyName);
				$("#companySite").val(result.companySite);
				$("#companyFaceprice").val(result.companyFaceprice);
				$("#companyFixedprice").val(result.companyFixedprice);
				$("#companyTopprice").val(result.companyTopprice);
				$("#companyBottomprice").val(result.companyBottomprice);
				$("#companyManager").val(result.companyManager);
				$("#companyOfferingdate").val(new Date(result.companyOfferingdate).toISOString().slice(0, 10));
				$("#companyRefundingdate").val(new Date(result.companyRefundingdate).toISOString().slice(0, 10));
				$("#companyListingdate").val(new Date(result.companyListingdate).toISOString().slice(0, 10));
				$("#companyMinimumcount").val(result.companyMinimumcount);
				$("#companyCompetitiveratio").val(result.companyCompetitiveratio);
				$("#demandRatio").val(result.demandRatio);
				$("#demandLockup").val(result.demandLockup);
				$("#demandNoprice").val(result.demandNoprice);
				$("#demandUnderbottom").val(result.demandUnderbottom);
				$("#demandBottom").val(result.demandBottom);
				$("#demandBand").val(result.demandBand);
				$("#demandTop").val(result.demandTop);
				$("#demandOvertop").val(result.demandOvertop);
			}
		})
	});
	
	// 삭제하기 버튼 클릭
	$("button[name='delete']").click(function(e){
		$.ajax({
			url : '/admin/company/'+e.target.value,
			type : 'DELETE',
			complete:function(e){
				console.log(e)
				location.reload();
			}
		});
		
	})
	
	var formInputs = document.querySelectorAll("#frm input");
	formInputs.forEach(function(input) {
		input.addEventListener("keydown", function(event) {
			if (event.key === "Enter") {
				event.preventDefault(); // Prevent the default behavior of the Enter key
			}
		});
	});
	
	$("#frm").validate({		
			rules: {
				companyTicker:{
					required: true,
				},
				companyName:{
					required: true,
				},
				companyFaceprice:{
					required: true,
				},
				companyTopprice:{
					required: true,
				},
				companyBottomprice:{
					required: true,
				},
				companyManager:{
					required: true,
				},
				companyOfferingdate:{
					required: true,
				},
				companyMinimumcount:{
					required: true,
				}
			},
			messages: {
				companyTicker: {
					required: " 필수 값입니다."
				},
				companyName: {
					required: " 필수 값입니다."
				},
				companyFaceprice: {
					required: " 필수 값입니다."
				},
				companyTopprice: {
					required: " 필수 값입니다."
				},
				companyBottomprice: {
					required: " 필수 값입니다."
				},
				companyManager: {
					required: " 필수 값입니다."
				},
				companyOfferingdate: {
					required: " 필수 값입니다."
				},
				companyMinimumcount: {
					required: " 필수 값입니다."
				}		
			},
			submitHandler: function(form){
				var data = {
					"companyTicker"      : $('input[name=companyTicker]').val(),
					"companyName"     : $('input[name=companyName]').val(),
					"companySite"      : $('input[name=companySite]').val(),
					"companyFaceprice"      : $('input[name=companyFaceprice]').val(),
					"companyFixedprice"      : $('input[name=companyFixedprice]').val(),
					"companyTopprice"      : $('input[name=companyTopprice]').val(),
					"companyBottomprice"      : $('input[name=companyBottomprice]').val(),
					"companyManager"      : $('input[name=companyManager]').val(),
					"companyOfferingdate"      : $('input[name=companyOfferingdate]').val(),
					"companyRefundingdate"      : $('input[name=companyRefundingdate]').val(),
					"companyListingdate"      : $('input[name=companyListingdate]').val(),
					"companyMinimumcount"      : $('input[name=companyMinimumcount]').val(),
					"companyCompetitiveratio"      : $('input[name=companyCompetitiveratio]').val(),
					"demandRatio"      : $('input[name=demandRatio]').val(),
					"demandLockup"     : $('input[name=demandLockup]').val(),
					"demandNoprice"      : $('input[name=demandNoprice]').val(),
					"demandUnderbottom"      : $('input[name=demandUnderbottom]').val(), 
					"demandBottom"      : $('input[name=demandBottom]').val(),
					"demandBand"      : $('input[name=demandBand]').val(),
					"demandTop"      : $('input[name=demandTop]').val(),
					"demandOvertop"      : $('input[name=demandOvertop]').val()
				};
				console.log(data)
				
				if(action === 'create'){
					$.ajax({
						url:url,
						type:type,
						data:JSON.stringify(data),
						contentType : "application/json",
						success:function(data){
							$('#exampleModalLong').modal('toggle');
							location.reload();
						},
						complete:function(){
							location.reload();
						}
					})
				}else if(action === 'modify'){
					$.ajax({
						url:'/admin/company/'+companyPk,
						type:'PUT',
						data:JSON.stringify(data),
						contentType : "application/json",
						success:function(data){
							$('#exampleModalLong').modal('toggle');
							location.reload();
						},
						complete:function(){
							location.reload();
						}
					})
				}			
			}
		})
})