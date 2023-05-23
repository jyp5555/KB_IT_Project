<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 작성하고 목록 </title>
<script type="text/javascript">
    var result ='${msg}';
    
    if(result == '성공'){
        alert(result+'입니다.');
    }else{
        alert(result+'게시판등록 실패입니다.');
    }
    
</script>
 
 
</head>
<body>
 
    <table class="table table-board" border="1px" width="80%" align="center">
        <tr>
            <th style="width:10%" >글 번호</th>
            <th style="width:30%">제목</th>
            <th style="width:20%">작성자</th>
            <th style="width:20%">날짜</th>
            <th style="width:20%">조회수</th>
        </tr>
 
 
    <c:forEach items="${boardList }" var="boardVO">
        <tr>
            <td>${boardVO.ARTICLE_PK }</td>
            <td><a href="/board/detail?b_no=${boardVO.ARTICLE_PK}">${boardVO.ARTICLE_TITLE }</a></td>
            <td>${boardVO.ARTICLE_USER_NAME }</td>
            <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.ARTICLE_REGDATE }" /> </td>
            <td><span> ${boardVO.ARTICLE_VIEW }</span> </td>
        </tr>
    </c:forEach>
    </table>
</body>
</html>
