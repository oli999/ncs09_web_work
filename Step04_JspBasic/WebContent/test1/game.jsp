<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// context 경로 얻어오기 "/Step04_JspBasic" 
	String cPath=request.getContextPath();
	// 강제로 리다일렉트 이동 시키기
	// 리다일렉트 이동 시킬때는 절대 경로로 이동하는것이 일반적이다.
	// 따라서 context 경로가 반드시 필요하다.
	response.sendRedirect(cPath+"/test1/study.jsp");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test1/game.jsp</title>
</head>
<body>
<p>game 페이지 입니다. 신나게 놀아요~</p>
</body>
</html>