<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="multicampus.kb03.IPOwer.dao.BoardDao" %>
<%@ page import="multicampus.kb03.IPOwer.dto.BoardDto" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="board" class="multicampus.kb03.IPOwer.dto.BoardDto" scope="page"/>
<jsp:setProperty name="board" property="boardTitle"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//user_id 바꾸기 
String userID=null;
if (session.getAttribute("userID")!=null)
{
	userID=(String)
			session.getAttribute("userID");
}
if (userID==null){
	PrintWriter script=response.getWriter();
	script.println("<script>");
	script.println("alert('로그인 이후 이용가능한 서비스입니다.')");
	script.println("location.href='login.jsp'");
	script.println("</script>");}
else{
	if (board.getArticleTitle()==null||board.getArticleContent()==null){
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('모든 칸을 입력해주십시오.')");
		script.println("history.back())");
		script.println("</script>");
	}
	else{
		BoardDao dao;
		/* int result=dao.insert(board.getArticlePk(),board.getArticleTitle(),board.board.getArticleContent(),board.getArticleView(),userID); */
		
	}
}
%>

</body>
</html>