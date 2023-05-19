<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>
</head>
<body>
	<%@ include file="./header.jsp"%>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">회원가입</h4>
				<form class="validation-form" id="join_form" novalidate><!-- https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css -->
					<div class="mb-3">
						<label for="userId">아이디</label> <input type="text" class="form-control" id="id" name="userId" placeholder=""value="" required>
						<div class="valid-feedback">사용가능한 닉네임 입니다.</div>
         				<div class="invalid-feedback">5글자 이상 10글자 이하로 작성해 주세요.</div>
					</div>
					<div class="mb-3">
						<label for="name">이름</label> <input type="text" class="form-control" id="name" name="userName" placeholder="" value="" required>
						<div class="invalid-feedback">이름을 입력해주세요.</div>
					</div>

					<div class="mb-3">
						<label for="password">비밀번호</label> <input type="password"	class="form-control" id="password" name="userPw" required>
						<div class="valid-feedback">사용가능한 비밀번호 입니다.</div>
						<div class="invalid-feedback">5글자 이상 10글자 이하로 작성해 주세요.</div>
					</div>
					
					<div class="mb-3">
						<label for="passwordChk">비밀번호 확인</label> <input type="password" class="form-control" id="passwordChk" name="userPwChk" required>
						<div class="valid-feedback"> 일치합니다.</div>
						<div class="invalid-feedback">일치하지 않습니다.</div>
					</div>

					<div class="mb-3">
						<label for="phone">전화번호</label> <input type="tel"	class="form-control" id="phone" name="userPhone"
							placeholder="010-0000-0000" required>
						<div class="invalid-feedback">전화번호를 입력해주세요.</div>
					</div>

					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="aggrement"
							required> <label class="custom-control-label"
							for="aggrement">개인정보 수집 및 이용에 동의합니다.</label>
					</div>
					<div class="mb-4"></div><button class="btn btn-primary btn-lg btn-block" type="submit">회원 가입 하기</button>
				</form>
				
			</div>

			
		</div>
	</div>
	<footer class="my-3 text-center text-small">
		<p class="mb-1">&copy; 2021 YD</p>
	</footer>
	</div>
	
	<script>
		let isIdValid = false;
	    let isPwValid = false;
	    let isSamePw = false;
	    
		let isName = false;
		let isPhone = false;
		let isAgree = false;
       
        let inputPw = ""
        
        document.querySelector("#id").addEventListener("input", function(){
            //1. 입력한 value 값을 읽어온다.
            let inputId=this.value;
            //2. 유효성(5글자이상 10글자 이하)을 검증한다.
            isIdValid = inputId.length >= 5 && inputId.length <= 10;
            //3. 유효하다면 input 요소에 is-valid 클래스 추가, 아니라면 is-invalid 클래스 추가
            if(isIdValid){
               this.classList.remove("is-invalid");
               this.classList.add("is-valid");
            }else{
               this.classList.remove("is-valid");
               this.classList.add("is-invalid");
            }
         }); 
        
        document.querySelector("#password").addEventListener("input", function(){
            //1. 입력한 value 값을 읽어온다.
            inputPw=this.value;
            //2. 유효성(5글자이상 10글자 이하)을 검증한다.
            isPwValid = inputPw.length >= 5 && inputPw.length <= 10;
            //3. 유효하다면 input 요소에 is-valid 클래스 추가, 아니라면 is-invalid 클래스 추가
            if(isPwValid){
               this.classList.remove("is-invalid");
               this.classList.add("is-valid");
            }else{
               this.classList.remove("is-valid");
               this.classList.add("is-invalid");
            }
         });
        
        document.querySelector("#passwordChk").addEventListener("input", function(){
            //1. 입력한 value 값을 읽어온다.
            let inputPwChk=this.value;
            //2. 유효성(5글자이상 10글자 이하)을 검증한다.
           	isSamePw = inputPw === inputPwChk;
            //3. 유효하다면 input 요소에 is-valid 클래스 추가, 아니라면 is-invalid 클래스 추가
            if(isSamePw){
               this.classList.remove("is-invalid");
               this.classList.add("is-valid");
            }else{
               this.classList.remove("is-valid");
               this.classList.add("is-invalid");
            }
         });
        
        document.querySelector("#name").addEventListener("input", function(){
            //1. 입력한 value 값을 읽어온다.
            let inputName=this.value;
            if(inputName){
       			isName = true;
               this.classList.remove("is-invalid");
               this.classList.add("is-valid");
            }else{
               this.classList.remove("is-valid");
               this.classList.add("is-invalid");
            }
         });
        
        document.querySelector("#phone").addEventListener("input", function(){
            //1. 입력한 value 값을 읽어온다.
            let inputPhone=this.value;
            if(inputPhone){
            	isPhone = true;
               this.classList.remove("is-invalid");
               this.classList.add("is-valid");
            }else{
               this.classList.remove("is-valid");
               this.classList.add("is-invalid");
            }
         });
        
        document.querySelector('#agreement').addEventListener("click",function(){
    		isAgree = $('#agreement').is(':checked');
    	});
        
       const form = document.getElementById('join_form');
        
        form.addEventListener('submit', e => {
        	
        	if(!isIdValid || !isPwValid || !isSamePw || !isName || !isPhone || !isAgree){
                //이벤트 객체의 함수를 이용해서 폼 전송 막아주기 
                e.preventDefault();
             }

            const data = new FormData(form);
            const param = JSON.stringify(Object.fromEntries(data));

            fetch('/user/new', {
                method: "POST",
                body: param,
                headers: {
                	"Content-Type": "application/json",
                }
            })
            .then(response => {
                if (response.status == 200) {
                    window.location.href = '/user/me';
                    alert("회원가입 성공")
                } else {
                	throw response
                }
            })
            .catch(error => {
            	error.text().then(msg => alert("회원가입 실패 "+msg))
            })        
    </script>


</body>
</html>