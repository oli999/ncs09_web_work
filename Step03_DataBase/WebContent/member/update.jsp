<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//1. 폼 전송되는 파라미터 추출
	int num=Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	String addr=request.getParameter("addr");
	//2. MemberDao 객체를 이용해서 DB 에 수정 반영
	MemberDto dto=new MemberDto(num, name, addr);
	boolean isSuccess=MemberDao.getInstance().update(dto);
	//3. 응답
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/update.jsp</title>
</head>
<body>
<%if(isSuccess){ %>
	<script>
		alert("수정 했습니다.");
		location.href="list.jsp";
	</script>
<%}else{ %>
	<script>
		alert("수정 실패!");
		location.href="list.jsp";
	</script>
<%} %>
</body>
</html>







