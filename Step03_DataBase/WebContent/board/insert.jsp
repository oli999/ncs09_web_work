<%@page import="test.board.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//1. 폼전송되는 새글 정보 읽어와서 
	String writer=request.getParameter("writer");
	String title=request.getParameter("title");
	String content=request.getParameter("content");
	String pwd=request.getParameter("pwd");
	//2. DB 에 저장하고
	BoardDto dto=new BoardDto();
	dto.setWriter(writer);
	dto.setTitle(title);
	dto.setContent(content);
	dto.setPwd(pwd);
	boolean isSuccess=BoardDao.getInstance().insert(dto);
	//3. 응답하기 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/insert.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/step03_custom.css" />
</head>
<body>
<div class="container">
	<h1>alert!</h1>
	<%if(isSuccess){%>
		<script>
			alert("<%=writer%> 님이 작성한 글을 저장하였습니다.");
			location.href="list.jsp";
		</script>
	<%}else{ %>
		<p class="alert alert-danger">
			새글 저장이 실패 했습니다.
			<a class="alert-link" href="insertform.jsp">다시 작성하기</a>
		</p>
	<%} %>
</div>
</body>
</html>








