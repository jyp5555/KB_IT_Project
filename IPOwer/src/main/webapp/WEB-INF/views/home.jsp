<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8' />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.7/index.global.min.js'></script>
    <script src='fullcalendar/core/locales/ko.js'></script>

  </head>
  <body>
  	<%@ include file="./header.jsp" %>
	<!-- <h3 class="overview-normalize">이</h3>
    <p>
        <button onclick="location.href='/admin'" class="btn btn-sm btn-success">ê´ë¦¬ì ì¤ì  íì´ì§(ê´ë¦¬ìë§)</button>
        <button onclick="location.href='/home'" class="btn btn-sm btn-info">ì ì  ì¤ì  íì´ì§(ì ì ë§)</button>
    </p>
  
    <hr/>
    <form method="post" action="/logout">
        <button class="btn btn-sm btn-danger btn-block" type="submit">ë¡ê·¸ìì</button>
    </form> -->
    <div id='calendar' class='container-md' style="padding:15px"></div>
    
	<%@ include file="./companyInfoModal.jsp"%>
  </body>
      <script>
    var data1= []
    	document.addEventListener('DOMContentLoaded', function() {
        	var calendarEl = document.getElementById('calendar');
        	var c_name = ${c_name}
        	var c_offering = ${c_offering}
        	var c_listing = ${c_listing}
        	var result = []
        	let backgroundColor = (c_offering) ? '#FF6666' : '#99CCFF';
       
        	 for(var i = 0 ; i < c_name.length ; i++){
        		result.push({
        			title: c_name[i], 
        			start: c_offering[i],
        			backgroundColor : backgroundColor,
        			borderColor :backgroundColor
        		})
        		result.push({title: c_name[i], start: c_listing[i]})
        	}
        	 console.log(result)
            var calendar = new FullCalendar.Calendar(calendarEl, {
                // Tool Bar ëª©ë¡ document : https://fullcalendar.io/docs/toolbar
                headerToolbar: {
                    left: 'prevYear,prev,next,nextYear today',
                    center: 'title',
                    right: 'dayGridMonth,dayGridWeek,dayGridDay'
                },

                selectable: true,
                selectMirror: true,

                navLinks: true, // can click day/week names to navigate views
                editable: false,
                eventClick: function(info){
                	console.log(info.event.title)
                	data1=[]
                	$.ajax({
                		url:"/company/detail",
                		type:"GET",
                		data:{
                			name: info.event.title
                		},
                		dataType: "json",
                		contentType:"application/json",
                		success:function(result){
                			$("#companyTicker").html(result.companyTicker);
            				$("#companyName").html(result.companyName);
            				$("#companySite").html("<a href="+result.companySite+" target='_blank'>"+result.companySite+"</a>");
            				$("#companyFaceprice").html(result.companyFaceprice+" 원");
            				$("#companyFixedprice").html(result.companyFixedprice+" 원");
            				$("#companyTopprice").html(result.companyTopprice+" 원");
            				$("#companyBottomprice").html(result.companyBottomprice+" 원");
            				$("#companyManager").html(result.companyManager);
            				$("#companyOfferingdate").html(new Date(result.companyOfferingdate).toISOString().slice(0, 10));
            				$("#companyRefundingdate").html(new Date(result.companyRefundingdate).toISOString().slice(0, 10));
            				$("#companyListingdate").html(new Date(result.companyListingdate).toISOString().slice(0, 10));
            				$("#companyMinimumcount").html(result.companyMinimumcount);
            				$("#demandRatio").html(result.demandRatio+":1");
            				$("#demandLockup").html(result.demandLockup+"%");
            				
            				
            				$("#exampleModalLongTitle").text(info.event.title);
            				$("#exampleModalLong").modal('toggle');
            				
            				data1.push(result.demandNoprice)
            				data1.push(result.demandUnderbottom)
            				data1.push(result.demandBottom)
            				data1.push(result.demandBand)
            				data1.push(result.demandTop)
            				data1.push(result.demandOvertop)
            				
            				const ctx = document.getElementById('myChart');

            				  new Chart(ctx, {
            				    type: 'doughnut',
            				    data: {
            				      labels: ['가격 미제시', '밴드 하단 미만', '밴드 하단', '밴드 내', '밴드 상단', '밴드 상단 초과'],
            				      datasets: [{
            				        label: '# of Votes',
            				        data:data1,
            				        backgroundColor: [
            				            '#c0cffa',
            				            '#9daddf',
            				            '#7d8ec4',
            				            '#6171a9',
            				            '#4857be',
            				            '#334173'
            				          ],
            				        borderWidth: 1
            				      }]
            				    },
            				    options: {
            				    	maintainAspectRatio: false,
            				    	plugins: {
            				    		legend:{
            				    			position:'right'
            				    		}
            				    	}
            				    }
            				  });
                		},
                		error:function(result){
                			console.log(result)
                			alert("error!")
                		}
                	})
                	$("#exampleModalLongTitle").text(info.event.title)
                	$("#exampleModalLong").modal(); 
                	
                },
                dayMaxEvents: true,
                events: result,
                locale: 'ko'
            });

            calendar.render();
        });

    </script>
</html>