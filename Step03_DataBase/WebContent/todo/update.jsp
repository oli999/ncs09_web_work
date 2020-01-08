<%@page import="test.todo.dao.TodoDao"%>
<%@page import="test.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//1. 폼 전송되는 수정할 todo 번호와 내용을 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	String content=request.getParameter("content");
	//2. DB 에 수정 반영
	TodoDto dto=new TodoDto();
	dto.setNum(num);
	dto.setContent(content);
	boolean isSuccess=TodoDao.getInstance().update(dto);
	//3. 응답
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/update.jsp</title>
</head>
<body>
<%if(isSuccess){ %>
	<script>
		alert("<%=dto.getNum()%> 번 할일이 수정 되었습니다.");
		location.href="list.jsp";
	</script>
<%}else{ %>
	<p>수정 실패!</p>
	<a href="updateform.jsp?num=<%=dto.getNum()%>">다시 시도 하러 가기</a>
<%} %>
</body>
</html>








