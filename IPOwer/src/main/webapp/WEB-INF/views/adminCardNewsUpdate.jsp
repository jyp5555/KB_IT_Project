<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel='stylesheet'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'>
<script
	src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script
	src='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js'></script>
<script>
	var cnt = 1;

	function file_add() {
		$("#add_file").append("<br><input type='file' name='file" + cnt + "'/>");
		cnt++;
	}

	function file_remove() {
		if (cnt > 1) {
			cnt--; // Decrement the cnt variable if there are file inputs to remove
			$("#add_file").find("input[name='file" + cnt + "']").last().remove();
			$("#add_file").find("br").last().remove(); // Remove the last line break tag
		}
	}
	
		function fileDelete(index) {
			  var news_pk = "${news_pk}";

			  $.ajax({
			    url: "deleteSaveFile",
			    type: "POST",
			    data: {
			      index: index,
			      news_pk: news_pk
			    }
			  });
			}

		function removeFileDiv(index) {
			  var fileDiv = $("#file_" + index);
			  if (fileDiv.length > 0) {
			    fileDiv.remove();
			  }
			}
		  
	function updateNicknameButton() {
		  var news_pk = "${news_pk}"; // Get the news_pk value from the JSP variable
		  var news_title = $("input[name='news_title']").val(); // Get the news_title value from the input field
		
		  $.ajax({
		    url: "updateNickname", // Controller URL for updating nickname
		    type: "POST",
		    data: {
		      news_pk: news_pk,
		      news_title: news_title
		    },
            success: function(response) {
                // Show pop-up window with the modification confirmation
                alert("닉네임 수정이 완료되었습니다!");

                // Perform any other necessary actions after the modification
                // ...
            }
		});
	}
	
</script>
<head>
<title>adminCardNewsUpdate</title>
</head>
<body>
	<h3>업데이트 페이지</h3>
	
		<div class="container">
		<h2>다중파일 업로드</h2>
		<div class="panel panel-default">
			<div class="panel-heading">스프링을 이용한 다중 파일 업로드 구현</div>
			<div class="panel-body">
				<form class="form-horizontal" action="newsUpdate" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="news_title">뉴스 제목:</label>
						<div class="col-sm-10">
							<!-- <input type="text" class="form-control" name="news_title" value="${news_title}" placeholder="수정할 제목을 입력하세요." style="width: 30%;"> -->
							<input type="text" class="form-control" name="news_title" value="${news_title}" style="width: 30%;">
							<input type="button" value="닉네임 수정" onclick="updateNicknameButton()"/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">파일추가:</label>
						<div class="col-sm-10">
							<input type="button" value="파일추가" onClick="file_add()" /><br>
							<input type="button" value="파일삭제" onClick="file_remove()" /><br>
							<c:if test="${selectAllFilesByNewsPkSize > 0}">
								<c:forEach var="i" begin="0" end="${selectAllFilesByNewsPkSize-1}">
									<div class="col-sm-10" id="file_${i}">
									<%-- 제목 : ${selectAllFilesByNewsPk[i].file_name}
									,타입 : ${selectAllFilesByNewsPk[i].file_contenttype}
									,사이즈 : ${selectAllFilesByNewsPk[i].file_size}
									,경로 : ${selectAllFilesByNewsPk[i].file_path} --%>
										기존 파일: ${selectAllFilesByNewsPk[i].file_name}.${selectAllFilesByNewsPk[i].file_contenttype}
										<%-- <input type="button" value="등록삭제" onClick="fileDelete(${i}, ${selectAllFilesByNewsPk[i].news_pk})" /> --%>
										<%-- <input type="button" value="등록삭제" onclick=" fileDelete(${i}),removeFileDiv(${i})"/> --%>
										<input type="button" value="등록삭제" onclick="removeFileDiv(${i})"/>
									</div>
								</c:forEach>
							</c:if>
							<div id="add_file"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">수정</button>
						</div>
					</div>
					<input type="hidden" name="news_pk" value="${news_pk}">
				</form>
				<form action="newsDelete" method="GET">
					<input type="hidden" name="news_pk" value="${news_pk}">
					<input type="hidden" name="selectAllFilesByNewsPk" value="${selectAllFilesByNewsPk}">
					<!-- <button type="submit" class="btn btn-default">삭제</button> -->					
				</form>
					<input type="button" value="파일 수정" onclick=" fileDelete(${i})"/>
					<button type="submit" class="btn btn-default">삭제</button>
			</div>
			<div class="panel-footer">
				수정페이지JSP
			</div>
		</div>
	</div>
</body>
</html>