<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/insertform.jsp</title>
</head>
<body>
<div class="container">
	<h1>새글 추가 폼 입니다.</h1>
	<form action="insert.jsp" method="post">
		<div>
			<label for="writer">작성자</label>
			<input type="text" id="writer" name="writer"/>
		</div>
		<div>
			<label for="title">제목</label>
			<input type="text" id="title" name="title"/>
		</div>
		<div>
			<label for="content">내용</label>
			<textarea name="content" id="content" cols="30" rows="10"></textarea>
		</div>
		<div>
			<label for="pwd">비밀번호</label>
			<input type="password" id="pwd" name="pwd"/>
		</div>
		<button type="submit">등록</button>
		<button type="reset">취소</button>
	</form>
</div>
</body>
</html>





