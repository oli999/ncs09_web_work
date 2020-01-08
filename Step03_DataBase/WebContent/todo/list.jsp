<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//할일 목록 읽어오기
	List<TodoDto> list=TodoDao.getInstance().getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
</head>
<body>
<h1>할일 목록입니다.</h1>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>내용</th>
			<th>등록일</th>
			<th>수정기능</th>
			<th>삭제기능</th>
		</tr>
	</thead>
	<tbody>
	<%for(TodoDto tmp: list){ %>
		<tr>
			<td><%=tmp.getNum() %></td>
			<td><%=tmp.getContent() %></td>
			<td><%=tmp.getRegdate() %></td>
			<td><a href="updateform.jsp?num=<%=tmp.getNum()%>">수정</a></td>
			<td><a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
		</tr>
	<%} %>
	</tbody>
</table>
<a href="insertform.jsp">할일 추가하기</a>
</body>
</html>




