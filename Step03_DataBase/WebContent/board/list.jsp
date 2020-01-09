<%@page import="test.board.dto.BoardDto"%>
<%@page import="test.board.dao.BoardDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/list.jsp</title>
</head>
<body>
<div class="container">
	<h1>게시글 목록 입니다.</h1>
	<table>
		<thead>
			<tr>
				<th>글 번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>등록일</th>
			</tr>
		</thead>
		<%
			//BoardDao 객체를 이용해서 글 목록을 얻어온다. 
			List<BoardDto> list=BoardDao.getInstance().getList();
		%>
		<tbody>
		<%for(BoardDto tmp: list){%>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getWriter() %></td>
				<td><%=tmp.getTitle() %></td>
				<td><%=tmp.getRegdate() %></td>
			</tr>
		<%} %>	
		</tbody>
	</table>
</div>
</body>
</html>



