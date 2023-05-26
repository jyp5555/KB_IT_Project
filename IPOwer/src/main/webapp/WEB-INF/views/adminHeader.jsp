<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="/js/modalCRUD.js"></script>
</head>
<nav class="navbar navbar-expand-md navbar-dark bg-dark main-nav">
    <div class="collapse navbar-collapse flex-1 nav navbar-nav justify-content-center">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="col-md-4 nav navbar-nav justify-content-center">
            <ul class="nav navbar-nav justify-content-center nav navbar-nav justify-content-center">
                
                <li class="nav-item">
                    <a class="nav-link" href="/admin/company">회사 정보 관리</a>
                </li>
                <li class="nav-item">
					<a class="nav-link" href="/admin/newsContents">콘텐츠 관리</a>
                </li>
                <form method="post" action="/logout">
        			<button class="btn btn-sm btn-danger btn-block" type="submit">로그아웃</button>
    			</form>
            </ul>
		</div>
    </div>
</nav>
</body>
</html>