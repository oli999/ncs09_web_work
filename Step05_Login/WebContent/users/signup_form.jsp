<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup_form.jsp</title>
</head>
<body>
<div class="container">
	<h1>회원 가입 페이지</h1>
	<form action="signup.jsp" method="post">
		<div>
			<label for="id">아이디</label>
			<input type="text" id="id" name="id"/>
		</div>
		<div>
			<label for="pwd">비밀번호</label>
			<input type="password" id="pwd" name="pwd"/>
		</div>
		<div>
			<label for="email">이메일</label>
			<input type="email" id="email" name="email" />
		</div>
		<button type="submit">가입</button>
		<button type="reset">취소</button>
	</form>
</div>
</body>
</html>






