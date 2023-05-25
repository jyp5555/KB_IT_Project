<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset='utf-8' />
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.7/index.global.min.js'></script>
    <script>
    	document.addEventListener('DOMContentLoaded', function() {
        	var calendarEl = document.getElementById('calendar');
        	var c_name = ${c_name}
        	var c_offering = ${c_offering}
        	var c_listing = ${c_listing}
        	var result = []
       
        	 for(var i = 0 ; i < c_name.length ; i++){
        		 
        		result.push({title: c_name[i], start: c_offering[i]})
        		if(c_listing[i]!='')
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
                // Create new event
               /*  select: function (arg) {
                    Swal.fire({
                        html: "<div class='mb-7'>Create new event?</div><div class='fw-bold mb-5'>Event Name:</div><input type='text' class='form-control' name='event_name' />",
                        icon: "info",
                        showCancelButton: true,
                        buttonsStyling: false,
                        confirmButtonText: "Yes, create it!",
                        cancelButtonText: "No, return",
                        customClass: {
                            confirmButton: "btn btn-primary",
                            cancelButton: "btn btn-active-light"
                        }
                    }).then(function (result) {
                        if (result.value) {
                            var title = document.querySelector("input[name=;']").value;
                            if (title) {
                                calendar.addEvent({
                                    title: title,
                                    start: arg.start,
                                    end: arg.end,
                                    allDay: arg.allDay
                                })
                            }
                            calendar.unselect()
                        } else if (result.dismiss === "cancel") {
                            Swal.fire({
                                text: "Event creation was declined!.",
                                icon: "error",
                                buttonsStyling: false,
                                confirmButtonText: "Ok, got it!",
                                customClass: {
                                    confirmButton: "btn btn-primary",
                                }
                            });
                        }
                    });
                }, */

                /* // Delete event
                eventClick: function (arg) {
                    Swal.fire({
                        text: "Are you sure you want to delete this event?",
                        icon: "warning",
                        showCancelButton: true,
                        buttonsStyling: false,
                        confirmButtonText: "Yes, delete it!",
                        cancelButtonText: "No, return",
                        customClass: {
                            confirmButton: "btn btn-primary",
                            cancelButton: "btn btn-active-light"
                        }
                    }).then(function (result) {
                        if (result.value) {
                            arg.event.remove()
                        } else if (result.dismiss === "cancel") {
                            Swal.fire({
                                text: "Event was not deleted!.",
                                icon: "error",
                                buttonsStyling: false,
                                confirmButtonText: "Ok, got it!",
                                customClass: {
                                    confirmButton: "btn btn-primary",
                                }
                            });
                        }
                    });
                }, */
                dayMaxEvents: true, // allow "more" link when too many events
                // ì´ë²¤í¸ ê°ì²´ íë document : https://fullcalendar.io/docs/event-object
                
                events: result
            });

            calendar.render();
        });

    </script>
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
    <div id='calendar'></div>
  </body>
</html>