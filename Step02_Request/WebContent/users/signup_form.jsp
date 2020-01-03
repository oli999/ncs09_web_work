<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/signup_form.jsp</title>
<link rel="stylesheet" href="/Step02_Request/resources/css/bootstrap.css" />
<style>
	fieldset{
		margin-bottom: 15px;
	}
	legend{
		font-size: 14px;
		margin-bottom: 5px;
		font-weight: bold;
	}
</style>
</head>
<body>
<div class="container">
	<h1>회원 가입 폼 입니다.</h1>
	<form action="signup.jsp" method="post">
		<div class="form-group">
			<label for="email">이메일</label>
			<input class="form-control" type="text" name="email" id="email"/>
		</div>
		<div class="form-group">
			<label for="pwd">비밀번호</label>
			<input class="form-control" type="password" name="pwd" id="pwd"/>
		</div>
		<fieldset>
			<legend>성별 선택</legend>
			<label class="radio-inline"><input type="radio" name="gender" value="man" checked/>남자</label>
			<label class="radio-inline"><input type="radio" name="gender" value="woman"/>여자</label>		
		</fieldset>
		<fieldset>
			<legend>취미 선택</legend>
			<label class="checkbox-inline"><input type="checkbox" name="hobby" value="piano"/>피아노</label>
			<label class="checkbox-inline"><input type="checkbox" name="hobby" value="game"/>게임</label>
			<label class="checkbox-inline"><input type="checkbox" name="hobby" value="movie"/>영화</label>
			<label class="checkbox-inline"><input type="checkbox" name="hobby" value="etc"/>기타</label>
		</fieldset>
		<div class="form-group">
			<label for="like">좋아하는 것 선택</label>
			<select class="form-control" name="like" id="like">
				<option value="">선택</option>
				<option value="java">자바</option>
				<option value="python">파이선</option>
				<option value="android">안드로이드</option>
				<option value="ios">아이폰</option>
			</select>
		</div>
		<div class="form-group">
			<label for="comment">하고 싶은말</label>
			<textarea class="form-control" name="comment" id="comment" cols="30" rows="10"></textarea>
		</div>
		<button class="btn btn-primary" type="submit">가입</button>
		<button class="btn btn-warning" type="reset">취소</button>
	</form>
</div>
</body>
</html>






