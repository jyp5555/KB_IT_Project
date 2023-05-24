<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
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
<%
String userID=null;
if (session.getAttribute("userID")!=null)
{
	userID=(String)
			session.getAttribute("userID");
}
%>
<nav class="navbar navbar-default">
<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
<span class="icon-bar"> </span>
<span class="icon-bar"> </span>
<span class="icon-bar"> </span>
</button>
<a class="navbar-brand" href="main.jsp">메인</a>
</div>
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav">
<li><a href="main.jsp">main</a>
<li class="active">
<a href="board.jsp">게시판</a></ul>
<% if (userID==null){
	%>
	<ul class="nav navbar-nav navbar-right">
	<li class="dropdown">
	<a href="#" class="dropdown-toggle" data-toggle="dropdown"
	role="button" aria-haspopup="true" aria-expanded="false">접속하기 </a>
	<span class="caret"></span><ul class="dropdown-menu">
	<li><a href="login.jsp">로그인 </a></li>
	<li><a href="join.jsp">회원가입</a></li>
	</ul>
	</li>
	</ul>
	<%
	}else{//로그인이 안되어있을때 사용자가 보는 메뉴 
	%>
	<ul class="nav navbar-nav navbar-right">
	<li class="dropdown">
	<a href="#" class="dropdown-toggle" data-toggle="dropdown"
	role="button" aria-haspopup="true" aria-expanded="false">회원관리 </a> 
</li></ul>
</div>
</nav>

<%
} %>

<!-- <div class="container">
<div class="row">
<form method="post" action="insert">
<table class="table tavle-striped" style="text-align:center; border:1px solid #dddddd">
<thead>
<tr><th colspan="2" style="background-color=#eeeeee; text-align:center;">
**게시판 글쓰기** </th></tr></thead><tbody>
<tr>
<td>
<input type="text" class="form-control" placeholder="글제목" name="boardTitle" maxlength="50"></input></td>
</tr>
<tr>
<td><textarea class="form-control" placeholder="글 내용" name="boardContent" maxlength="3000" style="height:350px;">
</textarea></td></tr>
</tbody></table>
<input type="submit" class="btn btn-primary pull right" value="저장하기" ></input>
</form></div>
</div> -->

<div class="container">
      <form action="/board/post" method="post">
        <div class="form-group row">
          <label for="inputTitle" class="col-sm-2 col-form-label"><strong>제목</strong></label>
          <div class="col-sm-10">
            <input type="text" name="articleTitle" class="form-control" id="inputTitle" />
          </div>
        </div>
        <div class="form-group row">
          <label for="inputAuthor" class="col-sm-2 col-form-label"><strong>작성자</strong></label>
          <div class="col-sm-10">
            <input type="text" name="userPk" class="form-control" id="inputAuthor" />

          </div>
        </div>
        
        <div class="form-group row">
          <label for="inputContent" class="col-sm-2 col-form-label"><strong>내용</strong></label>
          <div class="col-sm-10">
            <textarea type="text" name="articleContent" class="form-control" id="inputContent"></textarea>
          </div>
        </div>
        <div class="row">
          <div class="col-auto mr-auto"></div>
          <div class="col-auto">
            <input class="btn btn-primary" type="submit" role="button" value="글쓰기" />
          </div>
        </div>
      </form>
    </div>

<script src="http://code.jquery.com/jquery-3.1.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>