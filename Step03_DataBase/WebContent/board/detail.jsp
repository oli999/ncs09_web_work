<%@page import="test.board.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 파라미터로 넘어오는 글번호를 얻어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 글번호에 해당하는 글정보를 얻어온다.
	BoardDto dto=BoardDao.getInstance().getData(num);
	//3. 글 자세히 보기 페이지를 응답한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/detail.jsp</title>
</head>
<body>
<div class="container">
	<h1>글 자세히 보기 페이지</h1>
	<table>
		<tr>
			<th>글번호</th>
			<td><%=dto.getNum() %></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><%=dto.getWriter() %></td>
		</tr>
		<tr>
			<th>제목</th>
			<td><%=dto.getTitle() %></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea cols="30" rows="10" disabled><%=dto.getContent() %></textarea></td>
		</tr>
		<tr>
			<th>등록일</th>
			<td><%=dto.getRegdate() %></td>
		</tr>
	</table>
</div>
</body>
</html>




