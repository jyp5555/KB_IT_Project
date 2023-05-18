<!DOCTYPE html>
<html lang='en'>
  <head>
    <meta charset='utf-8' />
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.7/index.global.min.js'></script>
    <script>

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
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
         
            dayMaxEvents: true, // allow "more" link when too many events
            // 이벤트 객체 필드 document : https://fullcalendar.io/docs/event-object
            
            events: [
                {
                title: 'All Day Event',
                start: '2022-07-01'
                },
                {
                title: 'Long Event',
                start: '2022-07-07',
                end: '2022-07-10'
                },
                {
                groupId: 999,
                title: 'Repeating Event',
                start: '2022-07-09T16:00:00'
                },
                {
                groupId: 999,
                title: 'Repeating Event',
                start: '2022-07-16T16:00:00'
                },
                {
                title: 'Conference',
                start: '2022-07-11',
                end: '2022-07-13'
                },
                {
                title: 'Meeting',
                start: '2022-07-12T10:30:00',
                end: '2022-07-12T12:30:00'
                },
                {
                title: 'Lunch',
                start: '2023-05-12T12:00:00',
                	url: 'http://google.com/'
                },
                {
                title: 'Meeting',
                start: '2022-07-12T14:30:00'
                },
                {
                title: 'Happy Hour',
                start: '2022-07-12T17:30:00'
                },
                {
                title: 'Dinner',
                start: '2022-07-12T20:00:00'
                },
                {
                title: 'Birthday Party',
                start: '2022-07-13T07:00:00'
                },
                {
                title: 'Click for Google',
                url: 'http://google.com/',
                start: '2022-07-28'
                },
                {
                    title: 'A company',
                    url: 'http://naver.com/',
                    start: '2023-05-17'
                }
            ]
          
        });

        calendar.render();
    });


    </script>
  </head>
  <body>

    <div id='calendar'></div>
  </body>
</html>