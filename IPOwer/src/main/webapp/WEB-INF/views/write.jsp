<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
$(function(){ //id가 btnSave인 버튼을 클릭하면 실행되는 구문. 
              //post 방식으로 자료를 insert.do (컨트롤러)로 보낸다. 
    $("#btnSave").click(function(){
        document.form1.submit();
    });
});
</script>

</head>
<body>

</body>
</html>