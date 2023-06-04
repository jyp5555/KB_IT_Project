<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>

<!-- <link rel='stylesheet'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'> -->

<script
	src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>

<script>
var cnt = 1;
var existingFilesCount=${selectAllFilesByNewsPkSize};
var deleteExistFileDivCount = 0;
var addAndRemoveZeroSumCount = 0;
console.log("존재하는 파일의 수:"+existingFilesCount);

function file_add() {
	//$("#add_file").append("<br><input type='file' name='file'/>");
	$("#add_file").append("<br><input type='file' accept='image/*' name='file" + cnt + "'/>");
	console.log("add버튼 실행됨")
	addAndRemoveZeroSumCount = addAndRemoveZeroSumCount+1;
	console.log(addAndRemoveZeroSumCount)
	cnt++;
}

function file_remove() {
	if (cnt > 1) {
		cnt--; // Decrement the cnt variable if there are file inputs to remove
		$("#add_file").find("input[name='file" + cnt + "']").last().remove();
		$("#add_file").find("br").last().remove(); // Remove the last line break tag
	console.log("remove버튼 실행됨")
	addAndRemoveZeroSumCount = addAndRemoveZeroSumCount-1;
	console.log(addAndRemoveZeroSumCount)
	}
}

var deletedFilePkList = []; // 파일 삭제 시 filePk를 저장할 배열
function removeFileDiv(index) {
  var fileDiv = $("#file_" + index);
  if (fileDiv.length > 0) {
    var filePk = fileDiv.attr("data-filepk");
    var newsPk = ${newsPk};

    // filePk를 배열에 저장
    deletedFilePkList.push(filePk);

    // 파일 삭제 후의 추가적인 로직 수행
    // ...

    fileDiv.remove(); // Remove the div element from the DOM
	existingFilesCount = existingFilesCount - 1;
	deleteExistFileDivCount = deleteExistFileDivCount + 1;
	console.log("존재하는 파일의 수:"+existingFilesCount);
  }
}
function deleteExistFile() {
	  var newsPk = ${newsPk};
	  var deletedFilePks = deletedFilePkList.length > 0 ? deletedFilePkList : [null];
	  
	  if (deletedFilePks.length > 0) {
		  return false;
	  }
	  console.log("hello")
	  console.log(deletedFilePks)
	  
	  /* $.ajax({
	    url: "deleteExistFile",
	    type: "POST",
	    data: {
	      "newsPk1": newsPk,
	      //deletedFilePkList: deletedFilePkList
	      "deletedFilePkList": deletedFilePks
	    },
	    dataType:"json",
	    success: function(response) {
	      // ...
	      
	      console.log(response)
	      
	    },
	    done: function(response){
	    	console.log(response)
	    }
	  }); */
	}

 	function updateNewsTitle() {
		  var newsPk = ${newsPk}; // Get the newsPk value from the JSP variable
		  var newsTitle = $("input[name='newsTitle']").val(); // Get the news_title value from the input field

 		  if (newsTitle === "") {
		    return false; // Prevent form submission
		  } 
		  
		  /* $.ajax({
		    url: "updateNewsTitle", // Controller URL for updating nickname
		    type: "POST",
		    data: {
		      newsPk: newsPk,
		      newsTitle: newsTitle
		    },
            success: function(response) {
                // Show pop-up window with the modification confirmation
                console.log(response)
                //location.reload();
                //alert("닉네임 수정이 완료되었습니다!");

                // Perform any other necessary actions after the modification
                // ...
            }
		}); */
	} 
 	
 	$("#frm").submit(function(e){
 		
 		let returnResult = validateForm();
 		
 		updateNewsTitle();
 		deleteExistFile();
 		
 		
 		return returnResult;
 	})

 		function validateForm() {
 			  var fileInputs = $("input[type='file']");
 			  var filesSelected = false;
 			  var newsTitle = $("input[name='newsTitle']").val();
 			  var existingFilesCount = ${selectAllFilesByNewsPkSize}; // 기존 파일의 개수를 변수에 할당
				//alert("validateForm부분에서 존재하는 파일 수와 deleteExistFileDivCount의 파일 수:"+existingFilesCount+","+deleteExistFileDivCount);
 			  if (newsTitle === "") {
 			    alert("뉴스 제목을 입력해주세요.");
 			    return false; // Form submission prevented
 			  }

 			  // Check if at least one file is selected
			  for (var i = 0; i < fileInputs.length; i++) {
			    if (fileInputs[i].files.length === 0) {
			      alert("파일을 선택해주시기 바랍니다.");
			      return false; // Prevent form submission
			    } else {
			      filesSelected = true;
			    }
			  }
 			  
 			  //alert("validateForm부분에서 filesSelected의 참/거짓:"+filesSelected);
 			  // Add the count of existing files to the selected files count
 			  var totalFilesSelected = fileInputs.length + existingFilesCount;

 			  //if (!filesSelected && totalFilesSelected === deleteExistFileDivCount) {
 			  if (addAndRemoveZeroSumCount===0 && totalFilesSelected === deleteExistFileDivCount) {
 			    alert("파일은 하나 이상 첨부해야 합니다.");
 			    return false; // Form submission prevented
 			  }
 			  
 			  return true; // Allow form submission
 			}
</script>
<head>
<title>adminCardNewsUpdate</title>
</head>
<%-- <body>
<%@ include file="./adminHeader.jsp"%>
	<div class="container" style="padding-top: 7%; padding-left: 20%;padding-right: 20%">
		<!-- <h2>게시물 등록</h2> -->
		<div class="panel panel-default"">
			<div class="panel-heading" style="font-size: 16px;color:#ffffff;background-color:#79dddb;font-weight: 1000 ;">Card News Update</div>
			<div class="panel-body">
				<!-- <form class="form-horizontal" action="newsUpdate" method="post"> -->
				
				<form class="form-horizontal" action="newsUpdate" enctype="multipart/form-data" method="post" onsubmit="return validateForm();">
					<div class="form-group">
						<label class="control-label col-sm-2" for="newsTitle" style="font-size: 16px;font-weight: 1000 ;">뉴스 제목:</label>
						<div class="col-sm-10">
							<!-- <input type="text" class="form-control" name="news_title" value="${news_title}" placeholder="수정할 제목을 입력하세요." style="width: 30%;"> -->
							<input type="text" class="form-control" name="newsTitle" value="${newsTitle}" style="width: 80%; font-size: 16px;">
							<!-- <input type="button" value="뉴스 제목 수정" onclick="updateNewsTitle()" /> -->
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-sm-2" style="font-size: 16px;font-weight: 1000 ;">파일추가:</label>
						<div class="col-sm-10">
							<input type="button" value="파일추가" onClick="file_add()" />
							<input type="button" value="파일삭제" onClick="file_remove()" /><br>
							<c:if test="${selectAllFilesByNewsPkSize > 0}">
							  <c:forEach var="i" begin="0" end="${selectAllFilesByNewsPkSize-1}">
							    <div class="col-sm-10" id="file_${i}" data-filepk="${selectAllFilesByNewsPk[i].filePk}">
							      기존 파일: ${selectAllFilesByNewsPk[i].fileName}.${selectAllFilesByNewsPk[i].fileContenttype}
							      <input type="hidden" name="filePk" value="${selectAllFilesByNewsPk[i].filePk}">
							      <input type="button" value="등록삭제" onclick="removeFileDiv(${i})"/>
							    </div>
							  </c:forEach>
							</c:if>
							<div id="add_file"></div>
						</div>
					</div>
					<input type="hidden" name="newsPk" value="${newsPk}">
					<button type="submit" value="파일수정" onclick="updateNewsTitle(),deleteExistFile()">수정</button>
				</form>
				<form action="newsDelete" method="POST">
					<input type="hidden" name="newsPk" value="${newsPk}">
					<input type="hidden" name="selectAllFilesBynewsPk" value="${selectAllFilesBynewsPk}">
					<button type="submit" class="form-group">삭제</button>					
				</form>
			</div>
			<div class="panel-footer" style="color:#ffffff;background-color:#79dddb;font-weight: 1000 ;">
				수정페이지JSP
			</div>
		</div>
	</div>
</body> --%>
<body>
  <%@ include file="./adminHeader.jsp"%>
  <div class="container" style="padding-top: 5%;padding-left: 20%;padding-right: 20%">
    <div class="panel panel-default">
      <div class="panel-heading" style="font-size: 16px;color:#ffffff;background-color:#79dddb;font-weight: 1000 ;">Card News 업데이트</div>
      <div class="panel-body">
        <form id="frm" class="form-horizontal" action="newsUpdate" enctype="multipart/form-data" method="post" >
          <div class="form-group">
            <label class="control-label col-sm-2" for="newsTitle" style="font-size: 16px;font-weight: 1000 ;">뉴스 제목:</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" name="newsTitle" value="${newsTitle}" style="width: 80%; font-size: 16px;">
            </div>
          </div>
          <div class="form-group">
            <label class="control-label col-sm-2" style="font-size: 16px;font-weight: 1000 ;">파일추가:</label>
            <div class="col-sm-10">
              <input type="button" value="파일추가" onClick="file_add()" />
              <input type="button" value="파일삭제" onClick="file_remove()" /><br>
              <c:if test="${selectAllFilesByNewsPkSize > 0}">
                <c:forEach var="i" begin="0" end="${selectAllFilesByNewsPkSize-1}">
                  <div class="col-sm-10" id="file_${i}" data-filepk="${selectAllFilesByNewsPk[i].filePk}">
                    기존 파일: ${selectAllFilesByNewsPk[i].fileName}.${selectAllFilesByNewsPk[i].fileContenttype}
                    <input type="hidden" name="filePk" value="${selectAllFilesByNewsPk[i].filePk}">
                    <input type="button" value="등록삭제" onclick="removeFileDiv(${i})"/>
                  </div>
                </c:forEach>
              </c:if>
              <div id="add_file"></div>
            </div>
          </div>
          <input type="hidden" name="newsPk" value="${newsPk}">
          <button id="btnTitleFileUpdate" type="submit" value="파일수정" class="btn btn-default">수정</button>
        </form>
        <form action="newsDelete" method="POST">
          <input type="hidden" name="newsPk" value="${newsPk}">
          <input type="hidden" name="selectAllFilesBynewsPk" value="${selectAllFilesBynewsPk}">
          <button type="submit" class="form-group btn btn-default">삭제</button>
        </form>
      </div>
      <div class="panel-footer" style="color:#ffffff;background-color:#79dddb;font-weight: 1000 ;">
        수정페이지JSP
      </div>
    </div>
  </div>
</body>

</html>