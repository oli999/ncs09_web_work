<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/loginform.jsp</title>
</head>
<body>
<h3>로그인 폼 입니다.</h3>
<form action="login.jsp" method="post">
	<label for="id">아이디</label>
	<input type="text" id="id" name="id"/><br/>
	<label for="pwd">비밀번호</label>
	<input type="text" id="pwd" name="pwd"/><br/>
	<button type="submit">로그인</button>
	<button type="reset">취소</button>
</form>
</body>
</html>



