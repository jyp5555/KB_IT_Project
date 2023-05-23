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
		//$("#add_file").append("<br><input type='file' name='file'/>");
		$("#add_file").append("<br><input type='file' accept='image/*' name='file" + cnt + "'/>");
		cnt++;
	}

	function file_remove() {
/* 		var fileDiv = $("#add_file"); // Get the container div for file inputs
		var fileInputs = fileDiv.find("input[name='file']"); // Find all file inputs

		if (fileInputs.length > 0) {
			fileInputs.last().remove(); // Remove the last file input
		} */
		if (cnt > 1) {
			cnt--; // Decrement the cnt variable if there are file inputs to remove
			$("#add_file").find("input[name='file" + cnt + "']").last().remove();
			$("#add_file").find("br").last().remove(); // Remove the last line break tag
		}
	}
</script>
</head>
<body>
	<div class="container">
		<h2>다중파일 업로드</h2>
		<div class="panel panel-default">
			<div class="panel-heading">스프링을 이용한 다중 파일 업로드 구현</div>
			<div class="panel-body">
				<form class="form-horizontal" action="newsCreate" enctype="multipart/form-data" method="post">
					<div class="form-group">
						<label class="control-label col-sm-2" for="news_title">뉴스 제목:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="news_title" placeholder="뉴스 제목을 입력하세요." style="width: 30%;">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2">파일추가:</label>
						<div class="col-sm-10">
							<input type="button" value="파일추가" onClick="file_add()" /><br>
							<input type="button" value="파일삭제" onClick="file_remove()" /><br>
							<div id="add_file"></div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">업로드</button>
						</div>
					</div>
				</form>
			</div>
			<div class="panel-footer">다중파일 등록</div>
		</div>
	</div>
</body>
</html>