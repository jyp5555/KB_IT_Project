<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta charset='utf-8' />
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.7/index.global.min.js'></script>
    <script>
    	document.addEventListener('DOMContentLoaded', function() {
        	var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                // Tool Bar 목록 document : https://fullcalendar.io/docs/toolbar
                headerToolbar: {
                    left: 'prevYear,prev,next,nextYear today',
                    center: 'title',
                    right: 'dayGridMonth,dayGridWeek,dayGridDay'
                },

                selectable: true,
                selectMirror: true,

                navLinks: true, // can click day/week names to navigate views
                editable: true,
                // Create new event
                select: function (arg) {
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
                            var title = document.querySelector("input[name=;event_name']").value;
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
                },

                // Delete event
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
                },
                dayMaxEvents: true, // allow "more" link when too many events
                // 이벤트 객체 필드 document : https://fullcalendar.io/docs/event-object
                events: [
                    {
                    title: 'All Day Event',
                    start: '2023-05-01'
                    },
                    {
                    title: 'Long Event',
                    start: '2023-05-01',
                    end: '2023-05-03'
                    },
                    {
                    groupId: 999,
                    title: 'Repeating Event',
                    start: '2023-05-01T16:00:00'
                    },
                    {
                    groupId: 999,
                    title: 'Repeating Event',
                    start: '2023-05-01T16:00:00'
                    },
                    {
                    title: 'Conference',
                    start: '2023-05-01',
                    end: '2023-05-03'
                    },
                    {
                    title: 'Meeting',
                    start: '2023-05-01T10:30:00',
                    end: '2023-05-03T12:30:00'
                    },
                    {
                    title: 'Lunch',
                    start: '2023-05-01T12:00:00'
                    },
                    {
                    title: 'Meeting',
                    start: '2023-05-01T14:30:00'
                    },
                    {
                    title: 'Happy Hour',
                    start: '2023-05-01T17:30:00'
                    },
                    {
                    title: 'Dinner',
                    start: '2023-05-01T20:00:00'
                    },
                    {
                    title: 'Birthday Party',
                    start: '2023-05-01T07:00:00'
                    },
                    {
                    title: 'Click for Google',
                    url: 'http://google.com/',
                    start: '2023-05-01'
                    }
                ]
            });

            calendar.render();
        });

    </script>
  </head>
  <body>
  	<%@ include file="./header.jsp" %>
	
	<h3 class="overview-normalize">역할에 따른 페이지 이동 권한 확인</h3>
    <p>
        <button onclick="location.href='/admin'" class="btn btn-sm btn-success">관리자 설정 페이지(관리자만)</button>
        <button onclick="location.href='/home'" class="btn btn-sm btn-info">유저 설정 페이지(유저만)</button>
    </p>
    
    <hr/>
    <form method="post" action="/logout">
        <button class="btn btn-sm btn-danger btn-block" type="submit">로그아웃</button>
    </form>
    <div id='calendar'></div>
  </body>
</html>