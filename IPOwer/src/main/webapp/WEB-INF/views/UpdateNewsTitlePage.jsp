<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Update News Title</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
  <h3>Update News Title</h3>
  
  <form id="updateNewsForm" action="/updateNewsTitle" method="POST">
    <div class="form-group">
      <label for="newsTitle">News Title:</label>
      <input type="text" id="newsTitle" name="newsTitle" value="${newsTitle}">
    </div>
  
    <input type="hidden" id="newsPk" name="newsPk" value="${newsPk}">
  
    <input type="submit" value="Update">
  </form>
  
  <script>
    // Intercept the form submission event
    $("#updateNewsForm").submit(function(event) {
      event.preventDefault(); // Prevent the form from being submitted
      
      var newsPk = window.opener.newsPk;
      var newsTitle = $("#newsTitle").val();
      
      // Create a data object to send via AJAX
      var data = {
        newsPk: newsPk,
        newsTitle: newsTitle
      };

      // Perform the news title update logic using AJAX
      $.ajax({
        type: "POST",
        url: "/admin/updateNewsTitle",
        data: data,
        success: function(response) {
          // Handle the success response
          console.log(response);
          alert("뉴스제목 수정에 성공하였습니다.");
          
          // Call the updateNewsTitleCallback function defined in the parent window (adminCardNewsUpdate.jsp)
          var parentNewsPk = window.opener.newsPk;
          window.opener.updateNewsTitleCallback(parentNewsPk, newsTitle);
          // Close the pop-up window after the update
          window.close();
        },
        error: function(xhr, status, error) {
          // Handle the error response
          alert("뉴스제목 수정에 실패하였습니다.");
        }
      });
    });
  </script>
</body>
</html>
