<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<style>
  .panel-group {
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    padding: 10px;
  }

  .panel-group .panel {
    margin-bottom: 0;
    border-radius: 4px;
    box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
  }

  .panel-group .panel-heading {
    padding: 5px 15px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 3px;
    border-top-right-radius: 3px;
    background-color: #f5f5f5;
    color: #333;
  }

  .panel-group .panel-body {
    padding: 5px 15px;
    font-size: 14px;
  }

  .panel-group .panel-footer {
    padding: 5px 15px;
    border-top: 1px solid transparent;
    border-bottom-right-radius: 3px;
    border-bottom-left-radius: 3px;
    background-color: #f5f5f5;
    color: #333;
  }

  
</style>

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
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
	function validateForm() {
		  var fileInputs = $("input[type='file']");
		  var filesSelected = false;
		  var newsTitle = $("input[name='newsTitle']").val();


		  if (newsTitle === "") {
		    alert("뉴스 제목을 입력해주세요.");
		    return false; // Prevent form submission
		  }
		  
		  for (var i = 0; i < fileInputs.length; i++) {
		    if (fileInputs[i].files.length === 0) {
		      alert("파일을 추가해주시기 바랍니다.");
		      return false; // Prevent form submission
		    } else {
		      filesSelected = true;
		    }
		  }

		  if (!filesSelected) {
		    alert("파일은 하나 이상 첨부해야 합니다.");
		    return false; // Prevent form submission
		  }
		  return true; // Allow form submission
		}
</script>
</head>
<body>
<%@ include file="./adminHeader.jsp"%>


<div class="container" style="margin-top:2em;">
	<div class="panel-group">
		<h2>다중파일 업로드</h2>
		<div class="panel panel-default">
			<div class="panel-heading">파일 업로드</div>
			<div class="panel-body">
				<form class="form-horizontal" action="newsCreate" enctype="multipart/form-data" method="post" onsubmit="return validateForm();">
					<div class="form-group">
						<label class="control-label col-sm-2" for="newsTitle">뉴스 제목:</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="newsTitle" placeholder="뉴스 제목을 입력하세요." style="width: 30%;">
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
					<div class="form-group;">
						<div class="col-sm-offset-2 col-sm-10">
							<button type="submit" class="btn btn-default">업로드</button>
						</div>
					</div>
				</form>
			</div>
			<div class="panel-footer">다중파일 등록</div>
		</div>
	</div>
</div>



</body>
</html>