<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous" />
</head>
<hr>

<nav class="navbar navbar-expand-md navbar-dark bg-dark main-nav">
    <div class="collapse navbar-collapse flex-1 nav navbar-nav justify-content-center">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="col-md-4 nav navbar-nav justify-content-center">
            <ul class="nav navbar-nav justify-content-center nav navbar-nav justify-content-center">
                <li class="nav-item">
                    <a class="nav-link" href="home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="community">Community</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contents">Contents</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="mypage">
						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-square" viewBox="0 0 16 16">
							<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
							<path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm12 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1v-1c0-1-1-4-6-4s-6 3-6 4v1a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12z"/>
						</svg>
					</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="home"><button>logout</button></a>
                </li>
            </ul>
		</div>
    </div>
</nav>


<nav class="navbar navbar-expand-md navbar-dark main-nav">
    <div class="collapse navbar-collapse flex-1 nav navbar-nav justify-content-center">
    	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="navbar-toggler-icon"></span>
        </button>
            <div class="col-md-4 nav navbar-nav justify-content-end" > <!-- justify-content -->
            	<svg xmlns="http://www.w3.org/2000/svg" width="125" height="125" fill="currentColor" class="bi bi-person-square" viewBox="0 0 16 16">
					<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
					<path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2zm12 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1v-1c0-1-1-4-6-4s-6 3-6 4v1a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12z"/>
				</svg>
            </div>
            <div class="col-md-4 nav navbar-nav justify-content-right""> <!-- style="background:rgb(235, 235, 235) -->
            	<dl>
            		<dt>아이디 : $"{여기에 값 넣어서 받아오기}"</dt>
            		<br>
            		<dt>이름 : $"{여기에 값 넣어서 받아오기}"</dt>
            		<br>
            		<dt>회원등급 : $"{여기에 값 넣어서 받아오기}"</dt>
            	</dl>
            </div>
    </div>
</nav>
<nav class="navbar navbar-expand-md main-nav" style="background:rgb(235, 235, 235);padding: 150px; margin-left:100px; margin-right:100px">
    <div class="collapse navbar-collapse flex-1 nav navbar-nav justify-content-center">
    	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="navbar-toggler-icon"></span>
        </button>
            <div> <!-- style="background:rgb(235, 235, 235)" -->
				<table>
					<a>실제로는 for:each써서 내가 찜한 정보회사 모두 가져와서 버튼 생성</a>
            		<td>상장회사A</td><td>상장회사B</td><td>상장회사C</td><td>...</td>
            	</table>
            </div>
    </div>
</nav>

<nav class="navbar navbar-expand-md navbar-dark main-nav">
    <div class="collapse navbar-collapse flex-1 nav navbar-nav justify-content-center">
    	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="navbar-toggler-icon"></span>
        </button>
            <table class="justify-content-center" style="border: 1px solid black" > <!-- justify-content -->
				<tr style="border: 1px solid black"><th>내가 쓴글</th></tr>
				<tr style="border: 1px solid black"><td>여기도 for:each로 받아오기</td></tr>
            </table>
            <table class="justify-content-center" style="border: 1px solid black" > <!-- justify-content -->
				<tr style="border: 1px solid black"><th>내가 쓴 댓글</th></tr>
				<tr style="border: 1px solid black"><td>여기도 for:each로 받아오기</td></tr>
            </table>
    </div>
</nav>
</body>
</html>