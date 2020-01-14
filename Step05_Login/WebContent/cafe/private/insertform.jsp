<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/cafe/private/insertform.jsp</title>
</head>
<body>
<%
	//로그인된 회원의 아이디 읽어오기 
	String id=(String)session.getAttribute("id");
%>
<div class="container">
	<h1>새글 작성 양식 입니다.</h1>
	<form action="insert.jsp" method="post">
		<div>
			<label for="writer">작성자</label>
			<input type="text" value="<%=id %>" disabled/>
		</div>
		<div>
			<label for="title">제목</label>
			<input type="text" name="title" id="title"/>
		</div>
		<div>
			<label for="content">내용</label>
			<textarea name="content" id="content" cols="30" rows="10"></textarea>
		</div>
		<button type="submit">저장</button>
		<button type="reset">취소</button>
	</form>
</div>
</body>
</html>










