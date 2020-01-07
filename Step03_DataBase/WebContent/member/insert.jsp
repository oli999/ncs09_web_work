<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//post 방식 전송했을때 한글 깨지지 않도록 한글 인코딩 설정
	request.setCharacterEncoding("utf-8");
	//1. 폼전송되는 이름과 주소를 추출해서
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	//MemberDto 객체에 담기 
	MemberDto dto=new MemberDto(0, name, addr);
	//2. MemberDao 객체를 이용해서 DB 에 저장하고 
	MemberDao dao=MemberDao.getInstance();
	boolean isSuccess=dao.insert(dto);
	//3. 응답한다.
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insert.jsp</title>
</head>
<body>
<%if(isSuccess){ %>
	<p> <strong><%=name %></strong> 의 정보를 저장했습니다.</p>
	<a href="list.jsp">확인</a>
<%}else{ %>
	<p>저장 실패 했습니다.</p>
	<a href="insertform.jsp">다시 시도</a>
<%} %>
</body>
</html>




