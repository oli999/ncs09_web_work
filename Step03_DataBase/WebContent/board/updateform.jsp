<%@page import="test.board.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 수정할 글번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. 수정할 글 정보를 얻어온다.
	BoardDto dto=BoardDao.getInstance().getData(num);
	//3. 글 수정 폼을 응답한다.
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/updateform.jsp</title>
</head>
<body>
<div class="container">
	<h1>글정보 수정 폼 입니다.</h1>
	<p>글번호 : <strong><%=dto.getNum() %></strong></p>
	<form action="update.jsp" method="post">
		<input type="hidden" name="num" value="<%=dto.getNum() %>" />
		<div>
			<label for="writer">작성자</label>
			<input type="text" name="writer" id="writer"
			 	value="<%=dto.getWriter()%>"/>
		</div>
		<div>
			<label for="title">제목</label>
			<input type="text" name="title" id="title"
				value="<%=dto.getTitle() %>"/>
		</div>
		<div>
			<label for="content">내용</label>
			<textarea name="content" id="content" 
			cols="30" rows="10"><%=dto.getContent() %></textarea>
		</div>
		<div>
			<label for="pwd">비밀번호</label>
			<input type="password" name="pwd" id="pwd"
				placeholder="저장된 비밀번호 입력..."/>
		</div>
		<button  type="submit">수정확인</button>
		<button  type="reset">취소</button>
	</form>
</div>
</body>
</html>






