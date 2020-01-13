<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup_form.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
</head>
<body>
<div class="container">
	<h1>회원 가입 페이지</h1>
	<form action="signup.jsp" method="post" id="signupForm">
		<div>
			<label for="id">아이디</label>
			<input type="text" id="id" name="id"/>
			<button id="checkBtn">중복확인</button>
			<span id="checkResult"></span>
		</div>
		<div>
			<label for="pwd">비밀번호</label>
			<input type="password" id="pwd" name="pwd"/>
		</div>
		<div>
			<label for="pwd2">비밀번호 확인</label>
			<input type="password" id="pwd2" name="pwd2"/>
		</div>
		<div>
			<label for="email">이메일</label>
			<input type="email" id="email" name="email" />
		</div>
		<button type="submit">가입</button>
		<button type="reset">취소</button>
	</form>
</div>
<script>
	//아이디 유효성 여부
	var isIdValid=false;

	//중복확인 버튼을 눌렀을때 실행할 함수 등록
	$("#checkBtn").on("click", function(){
		//1. 입력한 아이디를 읽어온다.
		var inputId=$("#id").val();
		//2. 서버에 보내서 사용가능 여부를 응답 받는다.
		$.ajax({
			url:"${pageContext.request.contextPath }/users/checkid.jsp",
			method:"GET",
			data:{inputId:inputId},
			success:function(responseData){
				console.log(responseData);
				if(responseData.isExist){//아이디가 이미 존재하는 경우 (사용불가)
					$("#checkResult")
					.text("사용불가")
					.css("color", "red");
					isIdValid=false;
				}else{//아닌경우(사용가능)
					$("#checkResult")
					.text("사용가능")
					.css("color", "green");
					isIdValid=true;
				}
			}
		});
		
		return false; //폼 전송 막기
	});
	
	//폼에 제출 이벤트가 발생했을때 실행할 함수 등록
	$("#signupForm").on("submit", function(){
		//폼의 유효성 검증을 하고 만일 통과를 못하면 폼 제출을 막는다.
		
		//1. 아이디 유효성 검증
		if(!isIdValid){
			//잘못된 메세지를 띄우고 
			alert("아이디 중복확인을 하세요!");
			//잘못된 곳을 바로 입력할수 있도록 포커스 주기
			$("#id").focus();
			return false; //폼 제출 막기
		}
		
		//2. 비밀번호 유효성 검증
		var pwd=$("#pwd").val();
		var pwd2=$("#pwd2").val();
		if(pwd != pwd2){
			alert("비밀번호를 확인 하세요!");
			$("#pwd").focus();
			return false;
		}
		
		//3. 이메일 유효성 검증 
		var email=$("#email").val();
		// @ 가 포함 되어 있는지 확인한다 만일 포함되어 있지 않으면 null 이 리턴된다.
		var emailValid=email.match("@");
		if(emailValid == null){
			alert("이메일 형식에 맞게 입력하세요!");
			$("#email").focus();
			return false;
		}
		
	});
</script>
</body>
</html>






