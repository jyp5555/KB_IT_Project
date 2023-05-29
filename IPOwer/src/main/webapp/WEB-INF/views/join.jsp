<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link href="/resources/css/login.css" rel="stylesheet" type="text/css">
<style>
body {
	min-height: 100vh;
	/* background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
} */ . input-form { max-width : 680px;
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
		
		<div class="sign_form">
			<div class="form__box">
				<div class="form__left">
					<div class="form__padding">
						<img class="form__image" src="/resources/img/character2.png" />
					</div>
				</div>
				<div class="form__right">

					<div class="form__padding-right" style="line-height: 70%;">
							<h1 class="form__title">Sign In</h1>
						<form class="validation-form" id="join_form" novalidate>
							<div class="mb-3">
								<input class="form__email" type="text" required="required"
									id="userId" name="userId" placeholder="아이디" />
								<div class="valid-feedback">사용가능한 닉네임 입니다.</div>
								<div class="invalid-feedback">5글자 이상 10글자 이하로 작성해 주세요.</div>
							</div>
							<div class="mb-3">
								<input class="form__email" type="text" required="required"
									id="userName" name="userName" placeholder="이름" />
								<div class="invalid-feedback">이름을 입력해주세요.</div>
							</div>

							<div class="mb-3">
								<input class="form__password" type="password"
									required="required" id="userPw" name="userPw"
									placeholder="비밀번호" />
								<div class="valid-feedback">사용가능한 비밀번호 입니다.</div>
								<div class="invalid-feedback">5글자 이상 10글자 이하로 작성해 주세요.</div>

							</div>

							<div class="mb-3">
								<input class="form__password" type="password"
									required="required" id="userPwChk" name="userPwChk"
									placeholder="비밀번호" />
								<div class="valid-feedback">일치합니다.</div>
								<div class="invalid-feedback">일치하지 않습니다.</div>
							</div>


							<div class="mb-3">
								<input class="form__phone" type="tel" id="userPhone"
									name="userPhone" required="required"
									placeholder="010-0000-0000" />
								<div class="invalid-feedback">전화번호를 입력해주세요.</div>
							</div>
							<hr class="mb-4">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="agreement" required> <label
									class="custom-control-label" for="agreement">개인정보 수집 및
									이용에 동의합니다.</label>
							</div>
							<div class="mb-4"></div>

							<input class="form__submit-btn" type="submit" value="Sign In"
								id="join_btn" />
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<script>

	
		let isIdValid = false;
		let isPwValid = false;
		let isSamePw = false;
		let isName = false;
		let isPhone = false;
		let isAgree = false;
		let inputPw = "";
		
		document.querySelector("#userId").addEventListener("input", function(){
			let inputId=this.value;
			isIdValid = inputId.length >= 5 && inputId.length <= 10;
			if(isIdValid){
				this.classList.remove("is-invalid");
				this.classList.add("is-valid");
			}else{
				this.classList.remove("is-valid");
				this.classList.add("is-invalid");
			}
		}); 
	    
	    document.querySelector("#userPw").addEventListener("input", function(){
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
	    
	    document.querySelector("#userPwChk").addEventListener("input", function(){
	    	let inputPwChk=this.value;
	    	isSamePw = inputPw === inputPwChk;
	    	if(isSamePw){
	    		this.classList.remove("is-invalid");
	    		this.classList.add("is-valid");
	    	}else{
	    		this.classList.remove("is-valid");
	    		this.classList.add("is-invalid");
	    	}
	    });
	    
	    document.querySelector("#userName").addEventListener("input", function(){
	    	
	    	let inputName=this.value;
	    	console.log(inputName)
	    	if(inputName){
	    		isName = true;
	    		this.classList.remove("is-invalid");
	    		this.classList.add("is-valid");
	    	}else{
	    		this.classList.remove("is-valid");
	    		this.classList.add("is-invalid");
	    	}
	    });
	    
	    document.querySelector("#userPhone").addEventListener("input", function(){
	    	
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
	    	isAgree = this.checked;
	    });
	    
	    const form = document.getElementById('join_form');
	    /* $("#join_form").validate({
	    	rules:{
	    		userId:{
	    			required:true
	    		}
	    	},
	    	messages: {
	    		userId:{
	    			required:"필수"
	    		}
	    	},
	    	submitHandler: function(form){
	    		console.log(form)
	    	}
	    }) */
	    
	    form.addEventListener('submit', e => {
 	    	e.preventDefault();
 	    	if(!isIdValid || !isPwValid || !isSamePw || !isName || !isPhone || !isAgree){
		    	console.log("hello"+form)
	    		e.preventDefault();
	    	}
	    	
	    	const data = new FormData(form);
	    	const param = JSON.stringify(Object.fromEntries(data));
	    	console.log("hello2:"+param)
	    	
	    	$.ajax({
	    		url:'/user/new',
	    		type:'POST',
	    		data:param,
	    		contentType:'application/json',
	    		success: function(result){
	    			alert("회원가입 성공")
	    			$(location).attr('href',"/user/me");
	    		},
	    		error:function(request,status,error){
	    			alert("회원가입 실패")
	    		}
	    	})
    	})    
    	
    </script>

</html>