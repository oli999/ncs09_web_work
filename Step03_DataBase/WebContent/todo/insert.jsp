<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//1. 폼 전송되는 파라미터 추출
	String content=request.getParameter("content");
	//2. TodoDao 객체를 이용해서 DB 에 저장하고
	boolean isSuccess=TodoDao.getInstance().insert(content);
	//3. 응답하기
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/insert.jsp</title>
</head>
<body>
<%if(isSuccess){ %>
	<script>
		alert("할일을 저장 했습니다.");
		location.href="${pageContext.request.contextPath }/todo/list.jsp";
	</script>
<%}else{ %>
	<p> 할일 저장이 실패 했습니다. </p>
	<a href="insertform.jsp">다시 시도 하러 가기</a>
<%} %>
</body>
</html>










